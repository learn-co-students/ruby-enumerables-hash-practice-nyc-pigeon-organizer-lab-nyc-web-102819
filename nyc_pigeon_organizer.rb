def nyc_pigeon_organizer(data)
  pigeon_list = data.reduce({}) { |top_hash, (top_key, top_value)|
    # top_value is the hash any of the three main qualities point to
    
    top_value.reduce({}) { |second_hash, (second_key, second_value)|
      # second_value is the array any quality option points to

      second_value.reduce({}) { |third_hash, element|
        # element is each name in the array (class of name = string)
        
        # logic to create new key/value pair for name if it doesn't exist
        if top_hash.has_key?(element) == false
          top_hash[element] = {
          :color => [],
          :gender => [],
          :lives => []
          }
        end
        
        #add items to array of quality values
        top_hash[element][top_key].push(second_key.to_s)
      }
    }
    top_hash
  }
end


    