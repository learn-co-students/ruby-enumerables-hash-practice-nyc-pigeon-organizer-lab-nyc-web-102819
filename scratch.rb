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

def nyc_pigeon_organizer(data)
  final_hash = {}
  data.reduce({}) do |memo, (key, value)|
    value.each do |key2, value2|
      memo
    #names = value.values.flatten.uniq
    #memo[key] = names[0]
    #memo
    binding.pry
  end
  final_hash
end

#value.keys => [:purple, :grey, :white, :brown]
# #value.values => [["Theo", "Peter Jr.", "Lucky"], ["Theo", "Peter Jr.", "Ms. K"], ["Queenie", "Andrew", "Ms. K", "Alex"], ["Queenie", "Alex"]]
#value.values.flatten.uniq => ["Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"]

# sorted_member_list =  bands.reduce({}) do |memo, (key, value)|
#   memo[key] = value.sort
#   memo
# end



def nyc_pigeon_organizer(data)
   pigeon_names = []
   data.each do |key, value|
     value.each do |key2, value2|
       pigeon_names << value2
       
     end
     pigeon_names = pigeon_names.flatten.uniq
     
   end
   pigeon_list = {}
   pigeon_list = pigeon_names
   
   binding.pry
end
