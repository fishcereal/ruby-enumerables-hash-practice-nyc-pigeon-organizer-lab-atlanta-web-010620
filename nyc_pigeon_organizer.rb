def nyc_pigeon_organizer(data)
  
#   compile list of names by iterating through the hash, then running .uniq on the resulting array. 
name_array = []
return_hash = {} 
data.each do |key,value|
    puts key 
    value.each do |key,value|
        puts key 
        value.each do |value|
            name_array << value 
        end
    end
end
p 'name array:'
pp name_array.uniq
# make new hash to put everything in. Put all the names as the first hashes, then each of those will have values that are hashes with :color,:gender,and :lives as their keys, and empty values. 
name_array.each do |name|
    return_hash[name] = {color:[],gender:[],lives:[]}
#   data.each do |key|
end
pp return_hash

p '' 
p '' 
p '' 

return_hash.each do |key,val|
    name = key 
    p ""
    p "Name is #{name}"
    data.each do |key,val|
        quality = key 
        val.each do |key,val|
            p "key is #{key}"
            p val
            if val.include?(name) 
                return_hash[name][quality] << key.to_s
            end 
        end
    end
end

p 'Return hash: '
pp return_hash
return_hash
end
