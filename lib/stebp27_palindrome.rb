require "stebp27_palindrome/version"

module Stebp27Palindrome


	def palindrome?
		if processed_content.empty?
			false
		else
		processed_content == processed_content.reverse
		end
	end

	private

	def processed_content
		self.to_s.scan(/[a-z0-9]/i).join.downcase
	end
end

class String
	include Stebp27Palindrome
end

class Integer
	include Stebp27Palindrome
end
