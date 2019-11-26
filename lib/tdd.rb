require "tdd/version"
require "food.rb"
require "list.rb"
require "diet.rb"
require "plate.rb"
require "menu.rb"

module Tdd
  class Error < StandardError; end
  # Your code goes here...

	esp = Plate.new("esp",
			0.4, 0.4, 0.2,
			[
				Food.new("Carne de vaca",		21.1, 0.0, 3.1,50,164.0),
				Food.new("Carne de cordero",	18.0,0.0,1.7,20.0,185.0),
			Food.new("Camarones (piscifactorıa)",17.6,1.5,0.6,18.0,2.0),
				Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4),
				Food.new("Salmon (piscifactorıa)",19.9,0.0,13.6,6.0,3.7),
				
				Food.new("Cerdo", 				21.5,0.0,6.3,7.6,11.0),
				Food.new("Pollo",				20.6,0.0,5.6,5.7,7.1),
				Food.new("Queso",				25.0,1.3,33.0,11.0,41.0),
				Food.new("Cerveza",				0.5,3.6,0.0,0.24,0.22),
				Food.new("Leche de vaca",		3.3,4.8,3.2,3.2,8.9),
				
				Food.new("Huevos",				13.0,1.1,11.0,4.2,5.7),
				Food.new("Cafe",				0.1,0.0,0.0,0.4,0.3),
				Food.new("Tofu",				8.0,1.9,4.8,2.0,2.2),
				Food.new("Lentejas",			23.5,52.0,1.4,0.4,3.4),
				Food.new("Nuez",				20.0,21.0,54.0,0.3,7.9)
			],
			[
				0.2, 0, 0, 0.4, 0,
				0, 0, 0, 0, 0,
				0, 0, 0.2, 0, 0.2				
			]
	)	

	vasca = Plate.new("vasca",
			0.6, 0.25, 0.15,
			[
				Food.new("Carne de vaca",		21.1, 0.0, 3.1,50,164.0),
				Food.new("Carne de cordero",	18.0,0.0,1.7,20.0,185.0),
			Food.new("Camarones (piscifactorıa)",17.6,1.5,0.6,18.0,2.0),
				Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4),
				Food.new("Salmon (piscifactorıa)",19.9,0.0,13.6,6.0,3.7),
				
				Food.new("Cerdo", 				21.5,0.0,6.3,7.6,11.0),
				Food.new("Pollo",				20.6,0.0,5.6,5.7,7.1),
				Food.new("Queso",				25.0,1.3,33.0,11.0,41.0),
				Food.new("Cerveza",				0.5,3.6,0.0,0.24,0.22),
				Food.new("Leche de vaca",		3.3,4.8,3.2,3.2,8.9),
				
				Food.new("Huevos",				13.0,1.1,11.0,4.2,5.7),
				Food.new("Cafe",				0.1,0.0,0.0,0.4,0.3),
				Food.new("Tofu",				8.0,1.9,4.8,2.0,2.2),
				Food.new("Lentejas",			23.5,52.0,1.4,0.4,3.4),
				Food.new("Nuez",				20.0,21.0,54.0,0.3,7.9)
			],
			[
				0.125, 0, 0, 0, 0,
				0.125, 0, 0, 0, 0.375,
				0, 0.125, 0.25, 0, 0			
			]
	)	

	vegetariana = Plate.new("vegetariana",
			0.4, 0.4, 0.2,
			[
				
				Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4),
				
				
				Food.new("Queso",				25.0,1.3,33.0,11.0,41.0),
				Food.new("Cerveza",				0.5,3.6,0.0,0.24,0.22),
				Food.new("Leche de vaca",		3.3,4.8,3.2,3.2,8.9),
				
				Food.new("Huevos",				13.0,1.1,11.0,4.2,5.7),
				Food.new("Cafe",				0.1,0.0,0.0,0.4,0.3),
				Food.new("Tofu",				8.0,1.9,4.8,2.0,2.2),
				Food.new("Lentejas",			23.5,52.0,1.4,0.4,3.4),
				Food.new("Nuez",				20.0,21.0,54.0,0.3,7.9)
			],
			[
				0.1, 
				0, 0, 0.34,
				0.06, 0.4, 0.1, 0, 0				
			]
	)	


	vegeitaliana = Plate.new("vegeitaliana",
			0.4, 0.4, 0.2,
			[

				Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4),
				
				Food.new("Cerveza",				0.5,3.6,0.0,0.24,0.22),
				

				Food.new("Cafe",				0.1,0.0,0.0,0.4,0.3),
				Food.new("Tofu",				8.0,1.9,4.8,2.0,2.2),
				Food.new("Lentejas",			23.5,52.0,1.4,0.4,3.4),
				Food.new("Nuez",				20.0,21.0,54.0,0.3,7.9)
			],
			[
				0.1,
			 	0.4, 
				0.2, 0, 0.2, 0.1				
			]
	)	

	locura = Plate.new("locura por la carne",
			0.4, 0.4, 0.2,
			[
				Food.new("Carne de vaca",		21.1, 0.0, 3.1,50,164.0),
				Food.new("Carne de cordero",	18.0,0.0,1.7,20.0,185.0),
			Food.new("Camarones (piscifactorıa)",17.6,1.5,0.6,18.0,2.0),
				Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4),
				Food.new("Salmon (piscifactorıa)",19.9,0.0,13.6,6.0,3.7),
				
				Food.new("Cerdo", 				21.5,0.0,6.3,7.6,11.0),
				Food.new("Pollo",				20.6,0.0,5.6,5.7,7.1),
				Food.new("Queso",				25.0,1.3,33.0,11.0,41.0),
				Food.new("Cerveza",				0.5,3.6,0.0,0.24,0.22),
				Food.new("Leche de vaca",		3.3,4.8,3.2,3.2,8.9),
				
				Food.new("Huevos",				13.0,1.1,11.0,4.2,5.7),
				Food.new("Cafe",				0.1,0.0,0.0,0.4,0.3),
				Food.new("Tofu",				8.0,1.9,4.8,2.0,2.2),
				Food.new("Lentejas",			23.5,52.0,1.4,0.4,3.4),
				Food.new("Nuez",				20.0,21.0,54.0,0.3,7.9)
			],
			[
				0.2, 0.1, 0, 0.2, 0,
				0.1, 0.1, 0, 0, 0,
				0, 0, 0.2, 0, 0.1				
			]
	)	

	puts("\nDieta española")
	puts("Emision diaria gas: ",esp.impact_gas(4000).to_s() )
	puts("Emision anual gas: ", esp.impact_gas(1460000).to_s )
	puts("Consumo terreno por persona: ",esp.impact_terrain(4000).to_s() )
	
	puts("\nDieta vasca")
	puts("Emision diaria gas: ",vasca.impact_gas(4000).to_s() )
	puts("Emision anual gas: ", vasca.impact_gas(1460000).to_s )
	puts("Consumo terreno por persona: ",vasca.impact_terrain(4000).to_s() )

	puts("\nDieta vegetariana")
	puts("Emision diaria gas: ",vegetariana.impact_gas(4000).to_s() )
	puts("Emision anual gas: ", vegetariana.impact_gas(1460000).to_s )
	puts("Consumo terreno por persona: ", vegetariana.impact_terrain(4000).to_s() )

	puts("\nDieta vegeitaliana")
	puts("Emision diaria gas: ",vegeitaliana.impact_gas(4000).to_s() )
	puts("Emision anual gas: ", vegeitaliana.impact_gas(1460000).to_s )
	puts("Consumo terreno por persona: ", vegeitaliana.impact_terrain(4000).to_s() )

	puts("\nDieta locura por la carne")
	puts("Emision diaria gas: ",locura.impact_gas(4000).to_s() )
	puts("Emision anual gas: ", locura.impact_gas(1460000).to_s )
	puts("Consumo terreno por persona: ",locura.impact_terrain(4000).to_s() )

end
