
class Diet

	@foods = []
	@pCarbs
	@pProts
	@pLips

	def initialize(pCarbs, pProts, pLipids, foods)
		@pCarbs	= 	pCarbs
		@pProts	=	pProts
		@pLips 	=	pLipids
		@foods 	= 	foods
	end

	def calculate_food_percents_greedy_launch()
		calculate_food_percents_greedy(
				@pCarbs, 0,
				@pProts, 0,
				@pLips,  0,
				Float::INFINITY,
				[]
		)
	end

	def calculate_food_percents_greedy( 
			oCarbs, cpCarbs, 
			oProts, cpProts, 
			oLips, 	cpLips,
			aproxError,
			result
	)

		auxScore = aproxError
		auxFood = nil
		for food in @foods				
			auxC = food.pCarbs 	+ cpCarbs
			auxP = food.pProts 	+ cpProts
			auxL = food.pLips 	+ cpLips

			auxC -= oCarbas
			auxP -= oProts
			auxL -= oLips

			if(auxC<0)
				auxC*-1;
			end
			if(auxP<0)
				auxP*-1;
			end
			if(auxL<0)
				auxL*-1;
			end
			 
			auxC = auxC+auxP+auxL
			if(auxC<auxScore)
				auxFood = food
				auxScore = auxC			
			end	
		end

		if(auxFood != nil)
			calculate_food_percents_greedy( 
					oCarbs + @pCarbs, 	cpCarbs + food.pCarbs, 
					oProts + @pProts, 	cpProts + food.pProts, 
					oLips  + @pLips, 	cpLips	+ food.pLips,
					auxScore,
					result << auxFood
			)			
		else
			result
		end

	end

end
