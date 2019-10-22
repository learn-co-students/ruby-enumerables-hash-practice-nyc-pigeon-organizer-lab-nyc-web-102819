def nyc_pigeon_organizer(data)
  final = {}
males = data[:gender][:male]
females = data[:gender][:female]
names = males + females
names.each {|name| final[name] = {}
}
pigeon_color = data[:color]
pigeon_color.each {|color_pair|
  color = color_pair[0]
data[:color][color].each {|name|
  p final[name][:color]
  if final[name][:color].nil?
final[name][:color] = [color.to_s]
else final[name][:color] += [color.to_s]
end
}
}
pigeon_gender = data[:gender]
pigeon_gender.each {|gender_pair|
gender = gender_pair[0]
data[:gender][gender].each {|name|
final[name][:gender] = [gender.to_s]
}
}
pigeon_location = data[:lives]
pigeon_location.each {|location_pair|
  location = location_pair[0]
  data[:lives][location].each {|name|
  final[name][:lives] = [location]
}
}
p final
final
end

#for each pigeon, list their name > color, gender, lives in an array (key)