class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_oauth(request.env['omniauth.auth'])
    @profile = Profile.create(user_id: @user.id)
    if @user.persisted?
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.facebook_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

end

# class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
#   def facebook
#     callback_from :facebook
#   end
#   private

#   def callback_from(provider)
#     @user = User.from_omniauth(request.env['omniauth.auth'])

#     if @user.persisted?
#       flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
#       sign_in_and_redirect @user, event: :authentication
#     else
#       session["devise.facebook_data"] = request.env['omniauth.auth']
#       redirect_to new_user_registration_url
#     end
#   end

#   def failure
#     redirect_to root_path
#   end
# end