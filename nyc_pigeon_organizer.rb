require 'pry'

# def nyc_pigeon_organizer(pigeon_hash)
#   # write your code here!
#   pigeon_list = {} # empty hash
#
#   pigeon_hash.each_pair do |attribute, attribute_hash|
#
#     attribute_hash.each_pair do |key, names_array|
#
#       names_array.each do |name|
#         # nested iterations
#         if pigeon_list[name].nil? # if we don't have that color, then we want to add it
#           pigeon_list[name] = {} # setting up the structure
#         end
#
#         if pigeon_list[name][:color].nil?
#           pigeon_list[name][:color] = []
#         end
#         binding.pry
#         pigeon_list[name][key] << attribute.to_s
#       end
#     end
#   end
#
#     pigeon_list
# end

# https://apidock.com/rails/Enumerable/each_with_object
def nyc_pigeon_organizer(pigeon_hash)
  # instead of using each, we can use each_with_object
  pigeon_hash.each_with_object({}) do |(key, hash), final_hash|
    hash.each do |attribute, names_array|
      names_array.each do |name|
        final_hash[name] ||= {}
        final_hash[name][key] ||= []
        final_hash[name][key] << attribute.to_s
      end
    end
  end
end


# attribute
# => :color
#
# attribute_hash
# => {:purple=>["Theo", "Peter Jr.", "Lucky"],
#  :grey=>["Theo", "Peter Jr.", "Ms. K"],
#  :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
#  :brown=>["Queenie", "Alex"]}
#
# key
# => :purple
#
# names_array
# => ["Theo", "Peter Jr.", "Lucky"]
#
# name
# => "Theo"


# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
