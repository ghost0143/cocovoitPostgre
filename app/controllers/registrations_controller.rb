# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def create
    build_resource(sign_up_params)

    # Utilisez les paramètres supplémentaires
    resource.first_name = params[:user][:first_name]
    resource.last_name = params[:user][:last_name]
    resource.gender = params[:user][:gender]
    resource.role = params[:user][:role]

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  private

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :gender, :role])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :gender, :role])
  end
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :role)
  end
  
end
