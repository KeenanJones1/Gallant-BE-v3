# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prospect.destroy_all
ContactList.destroy_all
MarketingCampaign.destroy_all 
User.destroy_all 


user = User.create(first_name: "Keenan", last_name: "Jones", email:"gallantdispatching@gmail.com", password: "Lionheart12!", password_confirmation:"Lionheart12!", phone_no: "1111111111")

mc = MarketingCampaign.create(length: 12, final_price: 12.50, conversion_rate: 1.2, prospects_reached: 13, name: "Google", description: "Working all day long", user: user)

contact_list_one = ContactList.create(contacts_awaiting: 12, contacts_made: 5, prospects_signed: 1, name: "Contact List one", marketing_campaign: mc)

prospect_one = Prospect.create(
 first_name: "Kuzco", last_name: "James", contacted: false, level_of_contact: 2, email: "example@email.com", phone_no: "111222333444", status: "Ice", preferred_contact: "phone", preferred_time: "between noon and 3pm EST",
 message: "Working all night long", contact_list: contact_list_one
)

