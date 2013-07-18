class PasswordController < ApplicationController
  def edit
  	@code = SecureRandom.urlsafe_base64
  	#@code = params [:code]
  	#@user = User.new
  end

  def update
  end
end
