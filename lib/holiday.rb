require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
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
  # }
  # return the second element in the 4th of July array
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holiday(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to either the
  # Christmas or the New Year's arrays
holiday_hash[:winter][:new_years] << supply 
holiday_hash[:winter][:christmas] << supply 
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  newholiday = holiday_hash
  newholiday[season][holiday_name] = supply_array
  newholiday
# => holday supplies, season, day, 
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  bucket = holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]
  bucket
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  # binding.pry
holiday_hash.each do |key, season|
    puts key.to_s.capitalize + ":"
    season.each do |season , event|
      capitalized(season, event)
    end
  end
end


def capitalized(season, event)
    newevent = event.join(", ")
    a = season.to_s.split("_").map(&:capitalize).join(" ")
    puts "  "+ a + ": "+ newevent

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bucket = []
  holiday_hash.each do |holiday, season|
  #season  is a hash winter => xmas, etc
  season.each do |event, party|
    # event = xmas party = bbq
    # party.each do |x,y|
      if party.include?("BBQ")
        bucket << event
        end
      end
    end
  bucket
end













