require "minitest/autorun"
require_relative "random_pairs_2.rb"
class TestRandomPairs < Minitest::Test
   
  	 def test_array_of_nothing_returns_array
        array = []
        assert_equal([], random_pairing(array))
    end
	def test_array_with_5_names_returns_2_arrays
        array = random_pairing(["Josh","John","Dawn","Cheri","Caleb"])
        assert_equal(2, array.count)
    end
    def test_array_with_6_names_returns_3_arrays
        array = random_pairing(["Josh","John","Dawn","Cheri","Caleb","Marv"])
        assert_equal(3, array.count)
    end
    def test_array_with_7_names_returns_3_arrays
        array = random_pairing(["Josh","John","Dawn","Cheri","Caleb","Marv","Amanda"])
        assert_equal(3, array[2].count)
    end
     def test_array_with_9_names_returns_4_arrays
        array = random_pairing(["Josh","John","Dawn","Cheri","Caleb","Marv","Amanda","Heather","Joe"])
		assert_equal(3, array[3].count)
    end
end