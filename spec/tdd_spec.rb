#require_relative "./lib/tdd/food.rb"

RSpec.describe Tdd do
	
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end


end

#RSpec.shared_examples "foods"  do |Food|
#	it "Has a name" do
#		expect(Food::name).not_to be nil
#	end
#end

RSpec.describe "Plate tests" do

	esp = Plate.new("esp",
			#0.4, 0.4, 0.2,
			[
					Food.new("Carne de vaca",21.1, 0.0, 3.1,50,164.0),
					Food.new("Carne de cordero", 18.0,0.0,1.7,20.0,185.0),
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
			],
			3.0
	)	

	vasca = Plate.new("vasca",
			#0.6, 0.25, 0.15,
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
			],
			5.0
	)	

	vegetariana = Plate.new("vegetariana",
			#0.4, 0.4, 0.2,
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
			],
			4.0
	)	


	vegeitaliana = Plate.new("vegeitaliana",
			#0.4, 0.4, 0.2,
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
			],
			10.0
	)	

	locura = Plate.new("locura por la carne",
			#0.4, 0.4, 0.2,
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
			],
			15.0
	)	

	it "has plates" do
		expect(esp).not_to be nil
		expect(vasca).not_to be nil	
		expect(vegetariana).not_to be nil		
		expect(vegeitaliana).not_to be nil
		expect(locura).not_to be nil
	end

	it "can compare" do
		expect( esp > vasca ).to be true
		expect( vasca > vegetariana ).to be true
		expect( vegetariana > vegeitaliana ).to be true
		expect( vegeitaliana > locura ).to be false
		expect( locura > esp ).to be false
	end	

end

RSpec.describe "DietGenerator test" do

	include DietGenerator	
	it "can make diet" do
		d = newRandDiet(0.3,0.4,0.3)
		expect( d.class ).to be Diet
		expect( kind_of_eq(d.pCarbs, 0.3) 	).to eq( true )
		expect( kind_of_eq(d.pProtein, 0.4)	).to eq( true )
		expect( kind_of_eq(d.pLipids, 0.3) 	).to eq( true )
	end

	it "can make menu" do
		m = newRandMenu(0.3,0.4,0.3)
		expect( m.class ).to be Menu
		expect( kind_of_eq(m.pCarbs, 0.3) 	).to eq( true )
		expect( kind_of_eq(m.pProtein, 0.4)	).to eq( true )
		expect( kind_of_eq(m.pLipids, 0.3) 	).to eq( true )
	end

	it "can make plate" do
		p = newRandPlate(0.3,0.4,0.3)
		expect( p.class ).to be Plate
		expect( kind_of_eq(p.pCarbs, 0.3) 	).to eq( true )
		expect( kind_of_eq(p.pProtein, 0.4)	).to eq( true )
		expect( kind_of_eq(p.pLipids, 0.3) 	).to eq( true )
	end

	it "can make food" do
		f = newRandFood(0.3,0.4,0.3)
		expect( f.class ).to be Food
		expect( kind_of_eq(f.pCarbs, 0.3) 	).to eq( true )
		expect( kind_of_eq(f.pProtein, 0.4)	).to eq( true )
		expect( kind_of_eq(f.pLipids, 0.3) 	).to eq( true )
		
	end
end


RSpec.describe Food do 

	f = Food.new("Beef",21.1, 0.0, 3.1,50,164.0)

	it "has name" do
		expect(f.instance_variable_get(:@name) ).not_to be nil
	end

	it "has gas" do
		expect(f.instance_variable_get(:@gas) ).not_to be nil
	end

	it "has terrain" do
		expect(f.instance_variable_get(:@terrain) ).not_to be nil
	end

	it "has proteins" do
		expect(f.instance_variable_get(:@protein) ).not_to be nil
	end

	it "has carbs" do
		expect(f.instance_variable_get(:@carbs) ).not_to be nil
	end

	it "has lipids" do
		expect(f.instance_variable_get(:@lipids) ).not_to be nil
	end

	it "has name getter" do
		expect(f.name).not_to be nil
	end

	it "has gas getter" do
		expect(f.gas).not_to be nil
	end

	it "has terrain getter" do
		expect(f.terrain).not_to be nil
	end

	it "has formated out method" do
		expect(f ).to respond_to(:formatedVal)
 		puts f.formatedVal
# "<Beef>\nGas emisions = 50 kgCO2eq\nTerrain use = 42\n"
	end

	it "has energetic value method" do
		expect(f ).to respond_to(:energeticVal) 
	end

	it "calculates correctly impact of man20-39" do
		expect( f.impact_gas(3000) ).to be_within(10).of(1335)
		expect( f.impact_terrain(3000) ).to be_within(10).of(4380)
	end 

	it "calculates correctly impact of woman20-39" do
		#have to give correct values
		expect( f.impact_gas(2300) ).to be_within(10).of(1024)
		expect( f.impact_terrain(2300) ).to be_within(10).of(3350)
	end 

	f2 = Food.new("Chocolate",5.3,47.0,30.0,2.3,3.4)

	it "compares <" do
		#puts f.energeticVal(1).to_s
		#puts f2.energeticVal(1).to_s
		expect(f<f2).to be true
	end
	it "compares <=" do
		expect(f<=f2).to be true
	end
	it "compares >" do
		expect(f>f2).to be false
	end
	it "compares >=" do
		expect(f>=f2).to be false
	end
end




RSpec.describe List do 
 	
	l = List.new([])

 	it "can push" do
		l.push(5)
		expect( l.instance_variable_get(:@head).value == 5 )
  	end
 
	it "can push back" do
		l.push_back(6)
		expect( l.instance_variable_get(:@tail).value == 6 )
  	end

	it "can pop" do
		expect(l.pop()).not_to be nil
	end

	it "can pop back" do
		expect(l.pop_back()).not_to be nil
	end


	it "can pop empty" do
		#l.pop()
		expect(l.pop()).to be nil
	end

	it "can pop back empty" do
		#l.pop_back()
		expect(l.pop_back).to be nil
	end

	it "can collect" do
		l.push(1)
		l.push(3)
		l.push(5)
		l.push(-1)
		l.push(2)
		l.push(3)
		#print l.collect{ |i| i+i }
		aux = l.collect{ |i| i+i }
		expect( aux == [6, 4, -2, 10, 6, 2] ).to be true
	end
	it "can select" do
		aux = l.select{ |num| num.even? }
		expect(aux == [2] ).to be true 
	end
	it "can max" do
		expect( l.max ).to be 5
	end
	it "can min" do
		expect( l.min ).to be -1
	end
	it "can sort" do
		expect( l.sort == [-1, 1, 2, 3, 3, 5] ).to be true
	end

end


RSpec.describe Diet do


p = Plate.new("test",#0.4, 0.35, 0.25, 
	[
		Food.new("Carne de vaca",		21.1, 0.0, 3.1,50,164.0),
		Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4)
	],
	[
		0.3,
		0.7
	],
	7.0
	)

	m = Menu.new("test",#0.4,0.35,0.25,
	[
		p
	],
	[
		1
	]
	)

	d = Diet.new("test",#0.4, 0.35, 0.25, 
	[
		m
	],
	[
		1
	]
	)

	it "has name" do
		expect( d.name ).not_to be nil
	end	


	it "has menus" do
		expect(d.instance_variable_get(:@data)).not_to be nil
		expect(d.instance_variable_get(:@data)[0].class).to be Menu
	end

	it "returns plates in grams" do
		expect(d.data_grams(5)).not_to be nil
	end
	
	it "has p proteins" do
		expect(d.pProtein).not_to be nil
	end

	it "has p lipids" do
		expect(d.pLipids).not_to be nil
	end

	it "has p carbs" do
		expect(d.pCarbs).not_to be nil
	end

	it "can return formated" do
		puts(d.to_s)
	end

	it "can calculate gas" do
		d.impact_gas(3000)
	end

	it "can calculate terrain" do
		d.impact_terrain(3000)
	end

	it "can calculate energetic value" do 
		d.energeticVal(2000)
	end

	it "can give menus" do
		expect(d.menus).not_to be nil
	end

end



RSpec.describe Menu do

	
	p = Plate.new("test",#0.4, 0.35, 0.25, 
	[
		Food.new("Carne de vaca",		21.1, 0.0, 3.1,50,164.0),
		Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4)
	],
	[
		0.3,
		0.7
	],
	10.0
	)

	m = Menu.new("test",#0.4,0.35,0.25,
	[
		p
	],
	[
		1
	]
	)

	it "has name" do
		expect( m.name ).not_to be nil
	end	

	it "has plates" do
		expect(m.instance_variable_get(:@data)).not_to be nil
		expect(m.instance_variable_get(:@data)[0].class).to be Plate
	end

	it "returns plates in grams" do
		expect(m.data_grams(5)).not_to be nil
	end

	it "has p proteins" do
		expect(m.pProtein).not_to be nil
	end

	it "has p lipids" do
		expect(m.pLipids).not_to be nil
	end

	it "has p carbs" do
		expect(m.pCarbs).not_to be nil
	end

	it "can return formated" do
		puts(m.to_s)
	end

	it "can calculate gas" do
		m.impact_gas(3000)
	end

	it "can calculate terrain" do
		m.impact_terrain(3000)
	end

	it "can calculate energetic value" do 
		m.energeticVal(2000)
	end

	it "can give plates" do
		expect(m.plates).not_to be nil
	end

end

RSpec.describe Plate do

	p = Plate.new("test",#0.4, 0.35, 0.25, 
	[
		Food.new("Carne de vaca",		21.1, 0.0, 3.1,50,164.0),
		#Food.new("Carne de cordero",	18.0,0.0,1.7,20.0,185.0),
		#Food.new("Camarones (piscifactorıa)", 17.6,1.5,0.6,18.0,2.0),
		Food.new("Chocolate",			5.3,47.0,30.0,2.3,3.4)
		#Food.new("Salmon (piscifactorıa)",19.9,0.0,13.6,6.0,3.7),
		#Food.new("Cerdo", 				21.5,0.0,6.3,7.6,11.0),
		#Food.new("Pollo",				20.6,0.0,5.6,5.7,7.1),
		#Food.new("Queso",				25.0,1.3,33.0,11.0,41.0),
		#Food.new("Cerveza",			0.5,3.6,0.0,0.24,0.22),
		#Food.new("Leche de vaca",		3.3,4.8,3.2,3.2,8.9),
		#Food.new("Huevos",				13.0,1.1,11.0,4.2,5.7),
		#Food.new("Cafe",				0.1,0.0,0.0,0.4,0.3),
		#Food.new("Tofu",				8.0,1.9,4.8,2.0,2.2),
		#Food.new("Lentejas",			23.5,52.0,1.4,0.4,3.4),
		#Food.new("Nuez",				20.0,21.0,54.0,0.3,7.9)
	],
	[
		0.3,
		0.7
	],
	13.0
	)


	it "has name" do
		expect( p.name ).not_to be nil
	end	

	it "has foods" do
		expect(p.instance_variable_get(:@data)).not_to be nil
		expect(p.instance_variable_get(:@data)[0].class).to be Food
	end

	it "returns food in grams" do
		expect(p.data_grams(5)).not_to be nil
	end

	it "has p proteins" do
		expect(p.pProtein).not_to be nil
	end

	it "has p lipids" do
		expect(p.pLipids).not_to be nil
	end

	it "has p carbs" do
		expect(p.pCarbs).not_to be nil
	end

	it "can return formated" do
		puts(p.to_s)
	end

	it "can calculate gas" do
		p.impact_gas(3000)
	end

	it "can calculate terrain" do
		p.impact_terrain(3000)
	end

	it "can calculate energetic value" do 
		p.energeticVal(2000)
	end

	it "can give foods" do
		expect( p.foods ).not_to be nil
	end

	it "can return nutritional index" do
		expect( p.nutritional_index() ).not_to be nil
	end
end


RSpec.describe "test sorting diets" do

	include DietGenerator

	before(:all){
		esp = newRandDiet(0.4,0.4,0.3)
		vasca = newRandDiet(0.6,0.25,0.15)
		vegetariana = newRandDiet(0.4,0.4,0.3)
		vegetaliana = newRandDiet(0.4,0.4,0.3)
		locura 	 = newRandDiet(0.3,0.6,0.2)

		@diets = [esp,vasca,vegetariana,vegetaliana,locura]
	}
	

	it "can collect" do
		for d in @diets
			d.foods.collect{ |f| f.to_s }
			for m in d.menus
				for p in m.plates
					p.foods.collect{ |f| f.to_s }
				end
			end
		end
	end

	it "can select" do 
		for d in @diets
			for m in d.menus
				for p in m.plates
					p.foods.select{ |f| f.impact_gas(50) > 40 }
				end
			end
		end
	end
	it "can max" do
		for d in @diets
			for m in d.menus
				for p in m.plates
					p.foods.max 
				end
			end
		end
	end
	it "can min" do
		for d in @diets
			for m in d.menus
				for p in m.plates
					p.foods.min
				end
			end
		end
	end

	it "can sort" do
		for d in @diets
			for m in d.menus
				for p in m.plates
					p.foods.sort
				end
			end
		end
	end
	
end

RSpec.describe "Test nutritional index" do 

	include DietGenerator

	before(:all){
		srand()
		@m = newRandMenu(0.2,0.4,0.4)
	}

	it "can get max index plate" do
		aux = nil#@m.plates[0]
		auxVal = 0
		for p in @m.plates
			if p.nutritional_index() > auxVal
				auxVal = p.nutritional_index()
				aux = p
			end
		end
		

		aux2 = @m.plates.max_by {|plate| plate.nutritional_index() }

		expect( aux ).to eq aux2
	end

	it "can increment in relation to max index plate" do
		
		oprices = @m.plates.collect{ |plate| plate.price }

		aux = @m.plates.max_by {|plate| plate.nutritional_index() }

		aux = aux.nutritional_index()

		p = @m.plates.collect{ |plate|
			plate.price + plate.price * plate.nutritional_index()/aux
		}

		@m.plates.each_with_index{ |plate,i| 
				 expect( plate.price <= p[i] ).to be true 
		}

	end
end 

