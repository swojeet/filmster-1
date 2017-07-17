class UserMailer < ApplicationMailer
  default from: 'filmster@techrise.com'

  def followed_email(user)
    @user = user
    mail(to: @user.email, subject: 'You have a new follower!')
  end
end
