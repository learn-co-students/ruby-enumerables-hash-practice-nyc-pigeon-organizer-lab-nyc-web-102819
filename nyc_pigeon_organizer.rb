def nyc_pigeon_organizer(data)
  final_hash = {}
  data.each do |attribute_name, attributes|
    attributes.each do |stats, pigeon_names|
      pigeon_names.each do |name|
        final_hash[name] ||= {}
        final_hash[name][attribute_name] ||= []
        final_hash[name][attribute_name].push(stats.to_s)
      end
    end
  end
  final_hash
end
