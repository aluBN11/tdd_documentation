
#Handles the menu

class Menu

	include NutritionImpac

	attr_reader :name

# @param name [String] name of the menu
# @param plates [List] with the plates
# @param percentPlates [List] with the percent of each plate that makes the menu
	def initialize(name,
			plates, percentsPlates)

		for plate in plates
			raise "Bad class error" unless plate.class == Plate
		end
		@name=name
		initNutritionImpac(plates, percentsPlates)
	end

	def plates
		return @data
	end	

	def foods
		f=[]
		for plate in @data
			f << plate.foods
		end 
		return f
	end

	def to_s()
		result = ""
		result+= "<<<"+@name+">>>\n"
		result+= formatedVal
	end
end
