
class Food

	include Comparable

	attr_reader :name
	attr_reader :gas
	attr_reader :terrain
	attr_reader :protein
	attr_reader :carbs
	attr_reader :lipids
	
	def initialize(name,protein,carbs,lipids,gas,terrain)
		@name = name
		@gas = gas  
		@terrain = terrain
		@protein = protein
		@carbs 	= carbs
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
		result +="\n"
	
		result
	end

	def to_s
		return formatedVal
	end


	def energeticVal(portions)
		portions*(4*@carbs + 9*@lipids + 4*@protein)
	end

	
	def impact_gas( kcal)
		valPortion = energeticVal(1)
		numPortions = kcal / valPortion

		return numPortions * @gas
	end

	def impact_terrain( kcal)
		valPortion = energeticVal(1)
		numPortions = kcal / valPortion

		return numPortions * @terrain
	end

	def pCarbs()
		@carbs / (@carbs + @protein + @lipids)
	end

	def pProtein()
		@protein / (@carbs + @protein + @lipids)
	end

	def pLipids()
		@lipids / (@carbs + @protein + @lipids)
	end


	def <=>(other)
		self.energeticVal(1)<=>other.energeticVal(1)
	end
	
end
