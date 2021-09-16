class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  private

    def configure_permitted_parameters
      attributes = [ :first_name, :last_name, :email, :mobile_number,
        :password, :password_confirmation, :remember_me
      ]
      devise_parameter_sanitizer.permit :sign_up, keys: attributes
      devise_parameter_sanitizer.permit :account_update, keys: attributes
    end

end
