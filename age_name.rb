
# def fav_numbers(fav1, fav2, fav3)
# 	sum =  fav1.to_i + fav2.to_i + fav3.to_i
# end
def age_num_conditional(age, sum, name, fav1, fav2, fav3)  
    if age > sum
  		"Your age of #{age} is greater than #{sum}, Which is the sum of your favorite numbers."
  	else 
  		"Your age of #{age} is less than #{sum}, Which is the sum of your favorite numbers."
	end 
end
def sum(*numbers)
	sum = 0
	numbers.each do |number|
		sum += number
	end
	sum
end