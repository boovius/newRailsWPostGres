class PasswordController < ApplicationController
  def edit
  	@user = User.find_by(code: params[:code])
  end

  def update
  end
end
