
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

	def calculate_food_percents_greedy(maxDeep)
		calculate_food_percents_greedy_step(
				@pCarbs, 0,
				@pProts, 0,
				@pLips,  0,
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
		
		if( maxDeep <= 0)
			return result
		end

		auxScore = aproxError
		auxFood = nil
		for food in @foods				
			auxC = food.pCarbs 	+ cpCarbs
			auxP = food.pProtein 	+ cpProts
			auxL = food.pLipids 	+ cpLips

			auxC -= oCarbs
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
			calculate_food_percents_greedy_step( 
					oCarbs + @pCarbs, 	cpCarbs + food.pCarbs, 
					oProts + @pProts, 	cpProts + food.pProtein, 
					oLips  + @pLips, 	cpLips	+ food.pLipids,
					auxScore, maxDeep-1,
					result << auxFood
			)			
		else
			result
		end

	end

end
