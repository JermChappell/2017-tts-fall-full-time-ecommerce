class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before{action :authenticate_user!, except: [show]
  before_action :configure_permittex_paramaters, if: :devise_controller?
  before_action :Categories, :brands
  
  protected 
  
  
  
  def configure_permitted_parameters
      devise_parameters_sanatizer.permit(:sign_up, keys: [:role])
      devise_parameters_sanatizer.permit(:account_update, keys: [:role])
  end
end
