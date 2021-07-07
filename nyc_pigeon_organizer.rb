def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |a, b|
    b.each do |changed_value, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][a]
          new_hash[name][a] = []
        end

        new_hash[name][a] << changed_value.to_s

      end
    end
  end
  new_hash
end