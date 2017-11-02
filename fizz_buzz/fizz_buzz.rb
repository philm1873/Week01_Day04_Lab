# def fizz_buzz(number)
#   if ((number % 3 == 0) && (number % 5 == 0))
#     return "FizzBuzz"
#   end
#   if (number % 3 == 0)
#     return "Fizz"
#   end
#   if (number % 5 == 0)
#     return "Buzz"
#   end
#   return number.to_s
# end

def fizz_buzz(number)
  return "FizzBuzz" if (number % 15 == 0)
  return "Fizz" if (number % 3 == 0)
  return "Buzz" if (number % 5 == 0)
  return number.to_s
end
