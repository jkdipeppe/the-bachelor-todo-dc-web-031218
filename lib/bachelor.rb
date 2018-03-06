require 'pry'

def get_first_name_of_season_winner(data, season)
  i = 0

  while i < data[season].length
    if data[season][i]["status"] == "Winner"
      name = data[season][i]["name"]
      name_arr = name.split(" ")
      name = name_arr[0]
      return name
    end
    i = i + 1
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
    # binding.pry
    i = 0

    while i < data[season].length
      if data[season][i]["occupation"] == occupation
        name = data[season][i]["name"]
        # name_arr = name.split(" ")
        # name = name_arr[0]
        return name
      end
      i = i + 1
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, people|
    # binding.pry
    i = 0

    while i < data[season].length
      if data[season][i]["hometown"] == hometown
        count = count + 1
      end
      i = i + 1
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
    # binding.pry
    i = 0

    while i < data[season].length
      if data[season][i]["hometown"] == hometown
        occupation = data[season][i]["occupation"]
        # name_arr = name.split(" ")
        # name = name_arr[0]
        return occupation
      end
      i = i + 1
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_count = 0
  age_total = 0
  data.each do |curr_season, people|
    # binding.pry
    i = 0

    while i < data[curr_season].length
      # binding.pry
      if curr_season == season
        age = data[curr_season][i]["age"].to_i
        age_count = age_count + 1
        age_total = age_total + age
        # binding.pry
      end
      i = i + 1
    end
  end

  avg_age = (age_total.to_f/age_count.to_f).round.to_i
  return avg_age
end
