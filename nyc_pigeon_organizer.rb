require 'pry'

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

#Create a hash where pigeon names are the keys, with each name pointing to a hash of their attributes
  #Iterate over the hash above, collecting each pigeon by name and insert it as the key of a new hash

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, value|
    value.map do |sub_attribute, names|
      names.map do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = []
        end
        pigeon_list[name][attribute].push(sub_attribute.to_s)
      end
    end
  end
  pigeon_list
end
