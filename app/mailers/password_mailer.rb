class PasswordMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.password_reset_mailer.subject
  #
  def reset_email(user)
    @user = user
    @greeting = 'hello' 
    #@url = 'http://localhost:3000/reset/<%= @user.code %>'
    mail to: @user.email, subject: "Change your RAILS credentials"
  end
end
