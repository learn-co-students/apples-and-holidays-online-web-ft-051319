require 'pry'

# holiday_supplies = {
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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  winter_holidays = holiday_supplies[:winter]
  winter_holidays.each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  spring_holiday = holiday_supplies[:spring]
  spring_holiday.each do |holiday, supplies|
    if holiday == :memorial_day
      supplies << supply
    end
  end
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday, supply)
  fall_holidays = holiday_supplies[season]
  fall_holidays[holiday] = supply
end

def all_winter_holiday_supplies(holiday_supplies)
  winter_holidays = holiday_supplies[:winter]
  winter_holidays.values.flatten
end

def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_supplies)
  bbq_holidays = []
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
    bbq_holidays
end
