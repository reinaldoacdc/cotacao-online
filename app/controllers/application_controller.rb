class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :cnpj, :email, :password, :password_confirmation, :supplier_id, :role)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :cnpj, :email, :password, :current_password, :role)}
         end

end