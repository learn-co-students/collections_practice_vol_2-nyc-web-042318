require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word[0]=="r"
  end
end

def contain_a(array)
  array.select do |word|
    word =~ /a/
  end
end

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  array.each do |element|
    name = element[:name]
    array.each do |ele|
      if ele[:name] == name
        if element[:count] == nil
          element[:count] = 1
        else
          element[:count] +=1
        end
      end
    end
  end
  array.uniq
end

def merge_data(array_1, array_2)
  merge_array=[]
  array_1.each do |hash|
    array_2.each do |hash_2|
      key=hash[:first_name]
      hash_2[key].each do |element|
        # hash = { first_name: "Jake" }
        # hash[:some] = 0
        # { first_name: "Jake", some: 0 }
        eKey = element[0]
        eValue = element[1]
        hash[eKey] = eValue
      end
      merge_array.push(hash)
    end
  end
  merge_array
#  array_1.each do |keys_1|
#    keys_1.each do |sub_keys_1, values_1|
  #     final_hash[sub_keys_1] = values_1
  #   end
  # end
  # array_2.each do |keys_2|
  #   keys_2.each do |sub_keys_2, values_2|
  #     final_hash[sub_keys_2] = values_2
  #   end
  # end
end

#  final_hash={}
#  first_keys=hash_1.keys
#  first_values=hash_2.values
#  second_keys=hash_2.keys
#  second_values=hash_2.values
#  combined_keys=first_keys.concat(second_keys)
#  combined_values=first_values.concat(second_values)
#  combined_keys.each do |key|
#    combined_values.each do |value|
#      final_hash[key] = value
#    end
#  end
#  final_hash
#end

def find_cool(hash)
  final_array=[]
  hash.each do |pairs|
    pairs.each do |key, value|
      if value == "cool"
        final_array.push(pairs)
      end
    end
  end
  final_array
end

def organize_schools(hash)
  new_hash={}
  hash.each do |school, info|
    info.each do |key, city|
        if hash[school][key] == city && new_hash[city].class == NilClass
            new_hash[city] = [school]
        elsif hash[school][key] == city && new_hash[city].class != NilClass
            new_hash[city] << school
        end
    end
  end
  new_hash
end
