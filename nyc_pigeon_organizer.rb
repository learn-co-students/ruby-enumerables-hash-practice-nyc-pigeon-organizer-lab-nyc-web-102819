require 'pp'

def nyc_pigeon_organizer(data)
  new_data = {}
  data.map do |key, value|
    value.map do |k, v|
      v.map{|i| new_data[i] = {}}
    end
  end
  # pp new_data
  
  new_data.map do |key, value|
    data.map do |k, v|
      new_data[key][k] = []
    end
  end
  # pp new_data
  
  data.map do |k, v|
    v.map do |kk, vv|
      vv.map do |i|
        new_data[i][k] << kk.to_s
      end
    end
  end
  new_data
  # pp new_data
end
