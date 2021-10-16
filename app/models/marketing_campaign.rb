 # model class should only contain the following logic:
 # Active Record Configuration: validations and relations, Simple mutation methods to encapsulate updating a handful of attributes and saving them in the database, 
 # Access wrappers to hide internal model information (e.g., a full_name method that combines first_name and last_name fields in the database), 
 # Sophisticated queries (i.e., that are more complex than a simple find); generally speaking, you should never use the where method, or any other query-building methods like it, outside of the model class itself


 # Marketing Campaign is where outside data is stored. 
 # Example: Average time spent on landing page, eyes reached from facebook, google or other ad service. 
 # User has the ability to activate and deactivate sources through marketing campaing, 
 # google pausing, Facebook pausing, cancel shopify, 
class MarketingCampaign < ApplicationRecord
 has_many :contact_lists 
 has_many :prospects, through: :contact_lists
 belongs_to :user
end
