require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Dave", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Baywatch",
        things_to_eat: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      }
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Dave"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      }
    }

    @person5 = {
      name: "Dave",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  def test_getting_name
    result = get_name(@person5)
    assert_equal("Dave", result)
  end

  # 2. For a given person, return their favourite tv show
  # (e.g. for @person2, function should return the string "Baywatch")
  def test_get_tv_show
      result = get_tv_show(@person1)
      assert_equal("Friends", result)
  end

  # 3. For a given person, check if they like a particular food
  # (e.g. function should return true for @person3 when checked for "stew", false for "spinach")
def test_get_food_preference
    result = get_food_preference(@person3, "stew")
    assert_equal(true, result)
end

  # 4. For a given person, add a new name to their list of friends
  # (hint: Add a new string to the friends array, then test for the length of the array, not the return value of your add_friend method)
def test_add_new_friend_name
  result = add_new_friend_name(@person3, "Eleni")
  assert_equal(3, result)
end

  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)
def test_remove_friend
  result = remove_friend(@person4, "Dave")
  assert_equal(2,result)
end


  # 6. Find the total of everyone's money
  # (hint: use the people array)
  def test_total_money
    result = total_money(@people)
    assert_equal(143, result)
  end


  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: you need to pass in the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed)
  def test_lend_money
    result = lend_money(@person5, @person4, 15)
    assert_equal(true, result)
  end


  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/things_to_eat arrays together)
  def test_find_set_of_favourite_foods
    result = favourite_foods(@people)
    assert_equal([["charcuterie"], ["soup", "bread"], ["ratatouille", "stew"], ["spaghetti"], ["spinach"]], result)
  end

  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)
  def test_find_no_friends
    result = no_friends(@people)
    assert_equal(["Dave"], result)
  end

  # Optional, VERY TOUGH
  # 10. Find the people who have the same favourite tv show

end
