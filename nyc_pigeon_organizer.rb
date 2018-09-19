def nyc_pigeon_organizer(data)
  pigeon_names = {}
  data.each {|property_name,properties|
    properties.each {|property,pigeons|
      pigeons.each {|pigeon|
        # check if pigeon is in new list
        if pigeon_names.keys.include?(pigeon)
          # check if property already exists for that pigeon
          if pigeon_names[pigeon].keys.include?(property_name)
            pigeon_names[pigeon][property_name] << property.to_s
          else
            pigeon_names[pigeon][property_name] = [property.to_s]
          end
        else
          pigeon_names[pigeon] = {
            property_name => [property.to_s]
          }
        end
      }
    }
  }

  pigeon_names
end
