
module DietGenerator

	def newRandDiet(pcarbs, pprots, plips)
			
		data =    []
		percents = []
		auxPer = 1.0
		i = 1 + (rand()*3)
		while i > 0 do
			thisauxPer = auxPer * rand()			
						
			#thiscarbs  = pcarbs * rand()
			#thispprots = pprots * rand()
			#thisplips  = plips  * rand()
			
			auxPer -= thisauxPer
			#pcarbs -= thiscarbs	*thisauxPer
			#pprots -= thispprots*thisauxPer		
			#plips  -= thisplips	*thisauxPer

			data 	<< newRandMenu(pcarbs,pprots,plips)
			percents << thisauxPer			
	
			i -= 1
		end
		data 	<< newRandMenu(pcarbs,pprots,plips)
		percents << auxPer

		p = Diet.new(
			rand().to_s,			
			data,
			percents
		)
		
	end

	def newRandMenu(pcarbs, pprots, plips)
	
		data =    []
		percents = []
		auxPer = 1.0
		i = 1 + (rand()*3)
		while i > 0 do
			thisauxPer = auxPer * rand()			
						
			#thiscarbs  = pcarbs * rand()
			#thispprots = pprots * rand()
			#thisplips  = plips  * rand()
			
			auxPer -= thisauxPer
			#pcarbs -= thiscarbs	*thisauxPer
			#pprots -= thispprots*thisauxPer		
			#plips  -= thisplips	*thisauxPer

			data 	<< newRandPlate(pcarbs,pprots,plips)
			percents << thisauxPer			
	
			i -= 1
		end
		data 	<< newRandPlate(pcarbs,pprots,plips)
		percents << auxPer

		p = Menu.new(
			rand().to_s,			
			data,
			percents
		)
	end

	def newRandPlate(pcarbs, pprots, plips)

		#pcarbs 	= opcarbs
		#pprots 	= opprots
		#plips	= oplips

		foods =    []
		percents = []
		auxPer = 1.0
		i = 1 + (rand()*3)
		while i > 0 do
			thisauxPer = auxPer * rand()			
						
			#thiscarbs  = pcarbs * rand()
			#thispprots = pprots * rand()
			#thisplips  = plips  * rand()
			
			auxPer -= thisauxPer
			#pcarbs -= thiscarbs	*thisauxPer
			#pprots -= thispprots*thisauxPer		
			#plips  -= thisplips	*thisauxPer

			foods 	<< newRandFood(pcarbs,pprots,plips)
			percents << thisauxPer			
	
			i -= 1
		end
		foods 	<< newRandFood(pcarbs,pprots,plips)
		percents << auxPer

		p = Plate.new(
			rand().to_s,			
			foods,
			percents
		)
		
	end

	def newRandFood(pcarbs,pprots,plips)
		
		totalGrams = (250 * rand())+50
		
		f = Food.new(
			rand().to_s,
			(pprots*totalGrams),
			(pcarbs*totalGrams),
			(plips*totalGrams),
			50*rand(),
			200*rand()		
		)
		
	end

	def kind_of_eq(a, b)
		return -0.0001 < a-b && a-b < 0.0001
	end
end
