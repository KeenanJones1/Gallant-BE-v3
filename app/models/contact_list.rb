 # model class should only contain the following logic:
 # Active Record Configuration: validations and relations, Simple mutation methods to encapsulate updating a handful of attributes and saving them in the database, 
 # Access wrappers to hide internal model information (e.g., a full_name method that combines first_name and last_name fields in the database), 
 # Sophisticated queries (i.e., that are more complex than a simple find); generally speaking, you should never use the where method, or any other query-building methods like it, outside of the model class itself

class ContactList < ApplicationRecord
 has_many :prospects
end
