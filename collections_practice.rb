def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end


def first_wa(array)
  array.find do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end


def count_elements(array)
  
  array.uniq.each do |i|
    count = 0
    
    array.each do |duplicate| 
      if duplicate == i 
        count += 1 
      end
    end
  
      i[:count] = count
  end

end


def merge_data(keys, data)
  new_array = []
  
  keys.each do |i| 
  
    data.first.each do |name,val| 
      if i.values[0] == name
        new_array.push(i.merge(val))
      end
    
    end
      
  end
  
  new_array
end


def find_cool(array)
    array.select do |i| 
      i.any? do |key, value| 
        value == "cool"
      end
    end
end
  
  
def organize_schools(schools)
    school_location = {}
    
    schools.collect do |key, value| 
      school_location[value[:location]] = []
    end
    
    school_location.each do |key,value| 
      schools.each do |key2,value2| 
        if key == value2[:location]
          value.push(key2) 
        end
      end
    end
end    



