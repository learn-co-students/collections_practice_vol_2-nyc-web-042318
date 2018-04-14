# your code goes here

def begins_with_r(array)
  array.all? do |item|
    item[0].downcase == ("r")
  end
end


def contain_a(array)
  array_of_a = []
  array.each do |item|
    if item.include?("a")
      array_of_a << item
    end
  end
  array_of_a
end


def first_wa(array)
  array.each do |item|
    if item[0].downcase == "w"
      if item[1].downcase == "a"
        return item
      end
    end
  end
end


def remove_non_strings(array)
  only_strings = []
  array.each do |item|
    if item.is_a?(String)
      only_strings << item
    end
  end
  only_strings
end


def count_elements(array)
final_list = Hash.new(0)

  array.collect do |name_and_value|
    name_and_value[:count] = 0
    name = name_and_value[:name]
    array.each do |array_with_count|
      if array_with_count[:name] == name
        name_and_value[:count] += 1
      end
    end
  end
  array.uniq

end


def merge_data(keys, data)
  merged = Array.new

  keys.each do |names|
    names.each do |name_key, actual_name|
     name = {}
     name[:first_name] = actual_name
     merged << name
   end
 end
 merged.each do |person|
   data.each do |details|
     details.each do |name_key, person_details|
       person_details.each do |detail_key, detail_value|
         if name_key == person[:first_name]
           person[detail_key] = detail_value
         end
       end
     end
   end
 end

end

def find_cool(array)
cool_array = []

  array.each do |person|
    person.each do |detail, detail_value|
      if detail_value == "cool"
        cool_array << person
      end
    end
  end
  cool_array
end


def organize_schools(hash)
  list_by_place = {}

  hash.each do |school, school_location_hash|
    school_location_hash.each do |location, location_value|
      list_by_place[location_value] = []
    end
  end
  hash.each do |school, school_location_hash|
    school_location_hash.each do |location, location_value|
      list_by_place[location_value] << school
    end
  end
  list_by_place
end
