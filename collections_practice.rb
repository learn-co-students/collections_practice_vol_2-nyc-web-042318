require "pry"

def begins_with_r(array)
  r_array = []
  r_array = array.select {|word| word.start_with?("r")}
  if r_array.length == array.length
    true
  else
    false
  end
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
 array.find {|word| if word.is_a?(String) then word.start_with?("wa") end}
end

def remove_non_strings(array)
  array.select {|word| word.is_a?(String)}
end

#[{}{}{}]
#[{}{}]

#[{:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}]
#{{:name=>"blake"}=>2, {:name=>"ashley"}=>1}
#[{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]

def count_elements(array)
array.uniq.each {|name| array[array.index(name)][:count] = array.count(name)}
end



def merge_data(array_one, array_two)
new_array = []
array_one.concat(array_two)
new_array << array_one[0].merge(array_one[2]["blake"])
new_array << array_one[1].merge(array_one[2]["ashley"])
new_array
end


#keys [{:first_name => "blake"},{:first_name => "ashley"}]
#[{}{}] concat [{}{}{{}{}}]
#data [{"blake" => {:awesomeness => 10,:height => "74",:last_name => "johnson"},"ashley" => {:awesomeness => 9,:height => 60,:last_name => "dubs"}}]
#[{{}{}}]
#merged_data [{:first_name => "blake",:awesomeness => 10,:height => "74",:last_name => "johnson"},{:first_name => "ashley",:awesomeness => 9,:height => 60,:last_name => "dubs"}]
#[{}{}]

def find_cool(array)
new_array = []
new_array << array.detect {|hash| hash[:temperature] == "cool"}
end

#[{k=>v, k=>v}{k=>v, k=>v}]

def organize_schools(hash)
school_hash = {}
nyc_array = []
chig_array = []
sf_array = []
hash.each do |school, loc_hash|
  if loc_hash.has_value?("NYC")
    nyc_array << school
    school_hash["NYC"] = nyc_array
  elsif loc_hash.has_value?("Chicago")
      chig_array << school
      school_hash["Chicago"] = chig_array
  elsif loc_hash.has_value?("SF")
      sf_array << school
      school_hash["SF"] = sf_array
  end
end
school_hash
end

#{"flatiron school bk" => {:location => "NYC"},"flatiron school" => {:location => "NYC"},"dev boot camp" => {:location => "SF"},"dev boot camp chicago" => {:location => "Chicago"},"general assembly" => {:location => "NYC"},"Hack Reactor" => {:location => "SF"}}
#{k=>{k=>v},k=>{k=>v}...}
#{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],"SF"=>["dev boot camp", "Hack Reactor"],"Chicago"=>["dev boot camp chicago"]}
#{k=>[arr], k=>[arr], k=>[arr]...}
#if hash["flatiron school bk"][:location] == "NYC" -> new_hash["NYC"] = new_array[hash["flatiron school bk"]]
