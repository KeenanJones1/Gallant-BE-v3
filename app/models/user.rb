class User < ApplicationRecord
 # model class should only contain the following logic:
 # Active Record Configuration: validations and relations, Simple mutation methods to encapsulate updating a handful of attributes and saving them in the database, 
 # Access wrappers to hide internal model information (e.g., a full_name method that combines first_name and last_name fields in the database), 
 # Sophisticated queries (i.e., that are more complex than a simple find); generally speaking, you should never use the where method, or any other query-building methods like it, outside of the model class itself
 
  # everything else should go into an POROS file. 






 # has_many :marketing_campaigns 
 # has_many :prospects, through: :marketing_campaigns 
 # has_secure_password

 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :email, presence: true
 validates :phone_no, presence: true
 validates :password_digest, presence: true

 # TODO
 

# validate patterns
 # validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,
 #  message: "only allows letters" }
end
