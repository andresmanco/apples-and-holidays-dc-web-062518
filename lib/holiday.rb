require 'pry'

def second_supply_for_fourth_of_july(hash)
  
  hash[:summer][:fourth_of_july][1]
end
 

def add_supply_to_winter_holidays(hash, supply)
  # hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  hash[:winter].each do |key, value|
    value << supply
  end
end


def add_supply_to_memorial_day(hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  hash[:spring][:memorial_day] << supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end


def all_winter_holiday_supplies(hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
  hash[:winter].each do |key, value|
    arr << value
    
  end
  arr.flatten

end

  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }

def all_supplies_in_holidays(hash)
  hash.each do |season, holidays|
    puts season.to_s.capitalize << ':'
    holidays.each do |holiday, supplies|
      
      puts holiday.to_s.capitalize << ': '
      binding.pry
           n = 1
      
      supplies.each do |supply|
        if n < supply.length
          puts supply.join(",").capitalize << ', ' 
        elsif n == supply.length
          puts supply.join(",").capitalize
          
        end
      end
    end
  end
end

  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ



def all_holidays_with_bbq(hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
  hash.each do |key, value|
    key.each do |key2, value2|
      bbq = false
      value2.each do |value3|
        if value3 == 'BBQ'
          bbq = true
        end
      end
      if bbq = true
        arr << key2
      end
  end
end

end







