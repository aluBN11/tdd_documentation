
class Plate

	include NutritionImpac

	attr_reader :name

	def initialize(name, #pCarbs, pProts, pLipids, 
			foods, percentsFoods, prices)
		@name=name
		@prices=prices

		for food in foods
			raise "Bad class error" unless food.class == Food
		end
		initNutritionImpac( foods, percentsFoods)
		raise "Bad list length" unless @data.size == @prices.size
	end

	def foods
		return @data
	end

	def to_s()
		result = ""
		result+= "<<"+@name+">>\n"
		result+= formatedVal
	end
end
