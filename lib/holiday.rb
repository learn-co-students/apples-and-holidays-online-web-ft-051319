require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supply_array|
    supply_array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
    
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, hash_of_holiday|
    puts "#{season.to_s.capitalize}:"
    hash_of_holiday.collect do |holiday, supplies| 
      puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
    
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, hash_of_holiday|
    hash_of_holiday.collect do |holiday, supplies| 
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end

holiday_h ={
     
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }





#arr = []
 # holiday_hash[:winter].each do |holiday, supplies|
  #  supplies.each do |supply|
   #   arr << supply
    #  binding.pry
  #  end
   # puts arr.join(", ")
  #end
  