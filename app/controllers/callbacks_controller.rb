class CallbacksController < Devise::OmniauthCallbacksController

  def google
      @user = User.from_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user
  end

  def github
      @user = User.from_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user
  end

  # def facebook
  #   binding.pry
  #     @user = User.from_omniauth(request.env["omniauth.auth"])
  #     sign_in_and_redirect @user
  # end


end
