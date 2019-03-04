require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contacts)
  contacts.each do |person, data_hash|
    data_hash.each do |k, v|
     if k == :favorite_ice_cream_flavors
       k.each do |v|
         v.delete("strawberry")
       end 
      
    end
  end 
end
  
# def remove_strawberry(contacts)
#   contacts.map do |person, data_hash|
#     binding.pry
#     if data_hash.values.flatten.include?("strawberry")
#       data_hash.values.flatten.delete_if{|element| element == "strawberry"}
#       data_hash
#     end
#     binding.pry
#   end 
# end 

# def remove_strawberry(contacts)
# contacts.each do |person, contact_details_hash|
#   contact_details_hash.each do |attribute, data|
#     if attribute == :favorite_ice_cream_flavors
#       data.delete_if{|ice_cream| ice_cream == "strawberry"} 
#     end 
#   end 
# end 
# end
