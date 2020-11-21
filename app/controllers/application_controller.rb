class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_new_note_and_list

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  private

  def set_new_note_and_list
    @new_note = Note.new
    @new_list = List.new
    @user_tags = Tag.where(user: current_user)
  end
end
