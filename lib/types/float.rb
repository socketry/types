# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2022-2025, by Samuel Williams.

require_relative "generic"

module Types
	# Represents a floating point type.
	#
	# ```ruby
	# type = Types::Float
	# type.parse("3.14") # => 3.14
	# ```
	module Float
		extend Generic
		
		# Parses the input as a float.
		# @parameter input [Object] The value to parse.
		# @returns [Float] The parsed float value.
		# @raises [ArgumentError] if the input cannot be converted to a float.
		def self.parse(input)
			Float(input)
		end
		
		# @returns [String] the RBS type string, e.g. `Float`.
		def self.to_rbs
			"Float"
		end
		
		# Resolves to the actual Ruby Float class.
		# @returns [Class] The Float class.
		def self.resolve
			::Float
		end
	end
end
