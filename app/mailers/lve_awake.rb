class LveAwake < ActionMailer::Base
  default from: "LveAwake@lveawake.com"

  def welcome_email(rager)
    mail(:to => rager.email, :subject => "Welcome")
  end

end
