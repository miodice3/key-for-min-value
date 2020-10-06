# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#method should iterate over the hash and return the key (not the value!) that points to the smallest value of the set.
#If the method is called and passed an argument of an empty hash, it should return nil.

#Think about how to determine which value is the lowest. Do you need to compare each value to something as you iterate?
#Think about how to collect or store the correct key. Remember that you need your method to return just this key.

#name_hash = {:chair => 25, :table => 85, :mattress => 450}
#name_hash = {:table => 85, :mattress => 450, :chair => 25, :bench => 5}

# def key_for_min_value(name_hash)
#     qty = nil
#     return_name = nil
#     name_hash.each do |name, quantity|
#            if qty == nil
#             qty = quantity
#             return_name = name
#             puts qty
#             puts return_name
#            elsif quantity < qty
#             qty = quantity            
#             return_name = name
#             puts qty
#             puts return_name
#            end
#         end
#         return_name
# end

def key_for_min_value(name_hash)
    qty = nil
    return_name = nil
    name_hash.each do |name, quantity|
           if qty == nil
            qty = quantity
            return_name = name
           elsif quantity < qty
            qty = quantity            
            return_name = name
           end
        end
        return_name
end