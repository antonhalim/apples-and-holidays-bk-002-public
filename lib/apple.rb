def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
  	basket = []
  	fruit_list.select do |x|
  		if x == "apple"
  			basket << "apple"
  		end
  	end


end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # like the challenge above, you want to return an array that has just the apples in it
	basket = []
	  	fruit_list.collect do |x|
	  		#["apple", "orange", "apple"]
	  		if x == "apple"
	  			basket << "apple"
	  		end
#	  		basket
	  	end
	  		basket
end
