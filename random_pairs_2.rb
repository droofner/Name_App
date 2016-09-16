def random_pairing(array_of_names)
	new_pairs = []

	array_of_items_to_be_paired = array_of_names.shuffle.each_slice(2)

	array_of_items_to_be_paired.each do |pairs|
		if pairs.length == 2
			new_pairs.push(pairs)
		else 
			pairs.length == 1
			new_pairs.last.push(pairs)
		end
	end
	new_pairs
end