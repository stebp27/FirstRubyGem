require "test_helper"

class Stebp27PalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Stebp27Palindrome::VERSION
  end

  def test_non_palindrome
	  refute "apple".palindrome?
  end

  def test_literal_palindrome
	  assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    	assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
	assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
	  assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end

end
