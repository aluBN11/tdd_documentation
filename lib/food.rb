
class Food

	attr_reader :name
	attr_reader :gas
	attr_reader :terrain
	
	def initialize(name,gas,terrain,protein,carbs,lipids)
		@name = name
		@gas = gas
		@terrain = terrain
		@protein = protein
		@carbs = carbs
		@lipids = lipids

	end

	def formatedVal()

		result ="<"
		result +=@name
		result +=">\n"
		result +="Gas emisions = "
		result +=@gas.to_s
		result +="\nTerrain used = "
		result +=@terrain.to_s
		result +="\nProteins = "
		result +=@protein.to_s
		result +="\nCarbs = "
		result +=@carbs.to_s
		result +="\nLipids = "
		result +=@lipids.to_s
	
		result
	end


	def energeticVal(portions)
		portions*(4*@carbs + 9*@lipids + 4*@protein)
	end

	
	def impact_gas( kcal)
		valPortion = energeticVal(1)
		numPortions = kcal / valPortion

		numPortions * @gas
	end

	def impact_terrain( kcal)
		valPortion = energeticVal(1)
		numPortions = kcal / valPortion

		numPortions * @terrain
	end


end
