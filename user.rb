require 'date'

class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  # Returns true if it is the user's birthday today
  def birthday?
    todays_date = Date.today
    todays_date.month == date_of_birth.month && todays_date.day == date_of_birth.day
  end

  # Returns an Integer representing the user's current age
  def age
    todays_date = Date.today
    age = todays_date.year - date_of_birth.year
    age -= 1 if todays_date < Date.new(todays_date.year, date_of_birth.month, date_of_birth.day)
    age
  end

  # Returns a Date object for the user's current upcoming birthday
  #
  # Note: if their birthday is today, their next birthday is next year.
  #
  def next_birthday
    todays_date = Date.today
    dob_this_year = Date.new(todays_date.year, date_of_birth.month, date_of_birth.day)
    dob_this_year = dob_this_year.next_year if todays_date >= dob_this_year
    dob_this_year
  end
end