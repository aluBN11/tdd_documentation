
class Plate

	include NutritionImpac

	attr_reader :name
	attr_accessor :price

	def initialize(name, #pCarbs, pProts, pLipids, 
			foods, percentsFoods, price)
		@name=name
		@price=price

		for food in foods
			raise "Bad class error" unless food.class == Food
		end
		initNutritionImpac( foods, percentsFoods)
		raise "Bad class error" unless price.class == Float
		#raise "Bad list length" unless @data.size == @price.size
	end

	def foods
		return @data
	end

	def to_s()
		result = ""
		result+= "<<"+@name+">>"+@price.to_s+"€\n"
		result+= formatedVal
	end
end
