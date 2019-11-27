
module NutritionImpac

	attr_reader :pCarbs
	attr_reader :pProtein
	attr_reader :pLipids

	include Comparable
	def initNutritionImpac(data, percentsData)
		
		@pCarbs		= 	0
		@pProtein	=	0
		@pLipids 	=	0
		@data 	= 	List.new(data)
		@perData =  List.new(percentsData)

		raise "Bad list length " unless @data.size == @perData.size
		
		#Test for percent too big/small
		aux = 0.0
		for per in @perData
			aux += per
		end
		if ( -0.0001 < 1.0-aux && 1.0-aux < 0.0001)#correct error
			aux = 1
		end
		raise "Bad data percents" unless aux == 1.0

		#Calculate percents Crabs,Lips,Prots
		i = 0
		while i < @data.size()
			@pCarbs 	+= @data[i].pCarbs * 	@perData[i]
			@pProtein	+= @data[i].pProtein *	@perData[i]
			@pLipids	+= @data[i].pLipids *	@perData[i]
			i+=1
		end		
		raise "Bad nutrients percents" unless ( 1.0 == (@pCarbs + @pProtein + @pLipids) )
	end

	def setPecentsData(percents)
		raise "Bad array length " unless (percents.length == @data.length)
		@perData = percents
	end
	
	def formatedVal()
		s = ""
		for datum in @data
			s+=datum.to_s
		end
		return s
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

	def data_grams(totalGrams)
		result = List.new([])
		for per in @perData
			result.push_back(totalGrams*per)
		end
		return result
	end

	def energeticVal(grams)
		grams*(4*@pCarbs + 9*@pLipids + 4*@pProtein)
	end
	
	def <=>(other)
		self.energeticVal(1)<=>other.energeticVal(1)
	end
end


class Diet

	include NutritionImpac

	attr_reader :name

	def initialize(name,# pCarbs, pProts, pLipids, 
			menus, percentsMenus)

		for menu in menus
			raise "Bad class error" unless menu.class == Menu
		end
		@name=name

		initNutritionImpac( menus, percentsMenus)

	end

	def to_s()
		result = ""
		result+= "<<<<"+@name+">>>>\n"
		result+= formatedVal
	end

end


