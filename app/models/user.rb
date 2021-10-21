class User < ApplicationRecord
 # model class should only contain the following logic:
 # Active Record Configuration: validations and relations, Simple mutation methods to encapsulate updating a handful of attributes and saving them in the database, 
 # Access wrappers to hide internal model information (e.g., a full_name method that combines first_name and last_name fields in the database), 
 # Sophisticated queries (i.e., that are more complex than a simple find); generally speaking, you should never use the where method, or any other query-building methods like it, outside of the model class itself





 has_secure_password
 has_many :marketing_campaigns
 has_many :contact_lists, through: :marketing_campaigns 
 
 PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

PHONE_NUMBER_FORMAT = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

 validates :first_name, presence: true, :length => {:within => 2..40}
 validates :last_name, presence: true, :length => {:within => 2..40}
 validates :email, presence: true, format: {with: EMAIL_FORMAT}, uniqueness: true
 validates :phone_no, presence: true, format: {with: PHONE_NUMBER_FORMAT}, :length => {:within => 7..10}
 validates :password, :confirmation => true, format: {with: PASSWORD_FORMAT}, :allow_nil => true


 def send_password_reset
  self.password_reset_token = generate_base64_token
  self.password_reset_sent_at = Time.zone.now
  save!
  UserMailer.password_reset(self).deliver_now
end

def password_token_valid?
  (self.password_reset_sent_at + 1.hour) > Time.zone.now
end

def reset_password(password)
  self.password_reset_token = nil
  self.password = password
  save!
end

private

def generate_base64_token
  test = SecureRandom.urlsafe_base64
end


 # TODO
 # make sure action mailer serves link to reset password and email.
 #implement the user mailer, password_controller, and the user password methods.  
end
