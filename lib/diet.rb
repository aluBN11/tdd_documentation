


class Diet

	@foods
	@pCarbs
	@pProts
	@pLips
	@perFoods
=begin
	def initialize(pCarbs, pProts, pLipids, foods)
		raise "Bad percents" unless ( 1.0 == (pCarbs + pProts + pLipids) )
		@pCarbs	= 	pCarbs
		@pProts	=	pProts
		@pLips 	=	pLipids
		@foods 	= 	List.new(foods)

		@perFoods = List.new([])
		for food in @foods
			@perFoods.push_back( 0.0 )
		end
	end
=end
	def initialize(pCarbs, pProts, pLipids, foods, percentsFoods)
		raise "Bad array length " unless 
		raise "Bad percents" unless ( 1.0 == (pCarbs + pProts + pLipids) )
		@pCarbs	= 	pCarbs
		@pProts	=	pProts
		@pLips 	=	pLipids
		@foods 	= 	List.new(foods)
		@perFoods = List.new(percentsFoods)

		aux = 0.0
		for per in @perFoods
			aux += per
		end
		
		#puts aux
		if ( -0.0001 < 1.0-aux && 1.0-aux < 0.0001)#correct error
			aux = 1
		end
		raise "Bad food percents" unless aux == 1.0
	end

	def setPecentsFoods(percents)
		raise "Bad array length " unless (percents.length == @foods.length)
		@perFoods = percents
	end


	
	def impact_gas(totalKcal)
		result = 0.0
		i = 0
		for food in @foods
			result += food.impact_gas(totalKcal*@perFoods[i])
		end
		return result
	end

	def impact_terrain(totalKcal)
		result = 0.0
		i = 0
		for food in @foods
			result += food.impact_terrain(totalKcal*@perFoods[i])
		end
		return result
	end

=begin Didnt get it working, deprecated it
	def calculate_food_percents()

		singleFoods = calculate_food_percents_greedy(10)
		
		for food in singleFoods
			i = @foods.index(food)
			@perFoods[i]+= 1.0
		end
		
		for per in @perFoods
			per /= singleFoods.length
			puts per
		end

	end

	def calculate_food_percents_greedy(maxDeep)
		calculate_food_percents_greedy_step(
				@pCarbs, 0.0,
				@pProts, 0.0,
				@pLips,  0.0,
				Float::INFINITY, maxDeep,
				[]
		)
	end


	def calculate_food_percents_greedy_step( 
			oCarbs, cpCarbs, 
			oProts, cpProts, 
			oLips, 	cpLips,
			aproxError, maxDeep,
			result
	)
		puts "",aproxError
		puts oCarbs.to_s << " " << oProts.to_s << " " << oLips.to_s

		if( maxDeep <= 0)
			return result
		end

		auxScore = aproxError
		auxFood = nil
		for food in @foods				
			auxC = food.pCarbs 		+ cpCarbs
			auxP = food.pProtein 	+ cpProts
			auxL = food.pLipids 	+ cpLips
			
			print food.name, "\n",
			auxC," ",auxP," ",auxL,"\n"
			auxC -= oCarbs
			auxP -= oProts
			auxL -= oLips
			#puts auxC
			if(auxC<0.0)
				auxC = -auxC;
			end
			if(auxP<0.0)
				auxP = -auxP;
			end
			if(auxL<0.0)
				auxL = -auxL;
			end
			#puts auxC
			#error total
			auxC = auxC+auxP+auxL
			print auxC ," ", auxScore, "\n"
			if(auxC<auxScore)
				puts "<"
				auxFood = food
				auxScore = auxC			
			end	
		end


		if(auxFood != nil)
			puts ">>",auxFood.name
			return calculate_food_percents_greedy_step( 
					oCarbs + @pCarbs, 	cpCarbs + food.pCarbs, 
					oProts + @pProts, 	cpProts + food.pProtein, 
					oLips  + @pLips, 	cpLips	+ food.pLipids,
					auxScore, maxDeep-1,
					result << auxFood
			)			
		else
			return result
		end
		
	end
=end

end
