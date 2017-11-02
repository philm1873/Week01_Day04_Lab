def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def get_food_preference(person, food)
  food_array = person[:favourites][:things_to_eat]
  for foods in food_array
    if foods == food
      return true
   end
 end
return false
end

def add_new_friend_name(person, new_name)
  person[:friends] << new_name
  return person[:friends].length
end

def remove_friend(person, name)
  person[:friends].delete(name)
  return person[:friends].length
end

def total_money(people_array)
  total_money = 0
  for person in people_array
    total_money += person[:monies]
  end
  return total_money
end


def lend_money(lender, lendee, amount)
  original_lender_monies = lender[:monies]
  original_lendee_monies = lendee[:monies]
  lender[:monies] -= amount
  lendee[:monies] += amount
  if ((original_lender_monies != lender[:monies]) && (original_lendee_monies != lendee[:monies]))
    return true
  end
  return false
end

def favourite_foods(people_array)
  foods_array = []
  for person in people_array
    foods_array.push(person[:favourites][:things_to_eat])
  end
  return foods_array
end

def find_no_friends(people_array)
  no_friends_array = []
  for person in people_array
    if person[:friends]== 0
    return no_friends_array.push(person)
    end
  end
  return no_friends_array
end

def same_tv_show(people)
  tv_shows = {}
  result = {}

  for person in people
    show = person[:favourites][:tv_show]

    if tv_shows[show]
      tv_shows[:show].push(person[:name])
    else
      tv_shows[show] = [person[:name]]
    end

  end
