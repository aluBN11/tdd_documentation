
class Menu

	include NutritionImpac

	attr_reader :name

	def initialize(name, #pCarbs, pProts, pLipids, 
			plates, percentsPlates)

		for plate in plates
			raise "Bad class error" unless plate.class == Plate
		end
		@name=name
		initNutritionImpac(plates, percentsPlates)
	end

	def to_s()
		result = ""
		result+= "<<<"+@name+">>>\n"
		result+= formatedVal
	end
end
