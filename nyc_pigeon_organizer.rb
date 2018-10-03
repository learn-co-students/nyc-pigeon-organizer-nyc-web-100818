require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, hash), result|
    hash.each do |value, name_list|
      name_list.each do |names|
      result[names] ||= {}    #{"Theo"=>{}}
      result[names][key] ||= [] #{"Theo"=>{:color=>[]}}
      result[names][key] << value.to_s #{"Theo"=>{:color=>["purple"]}}
        end
      end
    end
end




# result => {} given from each_with_object

#key => :color, :gender, :lives
#hash => :purple => ["Theo", "Peter Jr.", "Lucky"],:grey => ["Theo", "Peter Jr.", "Ms. K"],... etc
#value => :purple, :grey, :white, :brown, :male, :female, "Subway", "Central Park", "Liberty", "City Hall"
#name_list => ["Theo", "Peter Jr.", "Lucky"] (things that are inside array)
#names => "Theo" (the individual stringed names)
