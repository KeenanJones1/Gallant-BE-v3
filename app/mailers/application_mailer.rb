class ApplicationMailer < ActionMailer::Base
  default from: 'testing@email.com'
  layout 'mailer'
end
