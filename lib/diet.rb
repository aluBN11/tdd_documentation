
module NutritionImpac


	def initNutritionImpac(pCarbs, pProts, pLipids, data, percentsData)
		raise "Bad array length " unless 
		raise "Bad percents" unless ( 1.0 == (pCarbs + pProts + pLipids) )
		@pCarbs	= 	pCarbs
		@pProts	=	pProts
		@pLips 	=	pLipids
		@data 	= 	List.new(data)
		@perData = List.new(percentsData)

		aux = 0.0
		for per in @perData
			aux += per
		end
		
		#puts aux
		if ( -0.0001 < 1.0-aux && 1.0-aux < 0.0001)#correct error
			aux = 1
		end
		raise "Bad data percents" unless aux == 1.0
	end

	def setPecentsData(percents)
		raise "Bad array length " unless (percents.length == @data.length)
		@perData = percents
	end


	
	def impact_gas(totalKcal)
		result = 0.0
		i = 0
		for datum in @data
			result += datum.impact_gas(totalKcal*@perData[i])
		end
		return result
	end

	def impact_terrain(totalKcal)
		result = 0.0
		i = 0
		for datum in @data
			result += datum.impact_terrain(totalKcal*@perData[i])
		end
		return result
	end
end

class Diet

	include NutritionImpac

	attr_reader :name

	def initialize(name, pCarbs, pProts, pLipids, menus, percentsMenus)

		for menu in menus
			raise "Bad class error" unless menu.class == Menu
		end
		@name=name
		initNutritionImpac(pCarbs, pProts, pLipids, menus, percentsMenus)

	end


end
