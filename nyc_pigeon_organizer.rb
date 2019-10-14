def nyc_pigeon_organizer(data)
  new_array = []
  data.each do |key, values|
    values.each do |subkey, value|
      value.each do |item|
        if new_array.include? item
          nil
        else
          new_array << item
        end
      end
    end
  end
  new_hash = {}
  new_array.each do |item|
    sym_item = item
    new_hash[sym_item] = {:color => [],
    :gender => [],
    :lives => []}
  end
  data.each do |key, values|
    values.each do |subkey, value|
      value.each do |item|
        if new_hash.key? item
          new_subkey = subkey.to_s
          new_hash[item][key] << new_subkey
        else
          nil
        end
      end
    end
  end
  new_hash
end
