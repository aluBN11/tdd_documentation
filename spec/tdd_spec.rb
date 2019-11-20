#require_relative "./lib/tdd/food.rb"

RSpec.describe Tdd do
	
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

end

#RSpec.shared_examples "foods"  do |Food|
#	it "Has a name" do
#		expect(Food::name).not_to be nil
#	end
#end




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


end


RSpec.describe Diet do



	d = Diet.new(0.4, 0.35, 0.25, 
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
	]
	)
	
	it "can calculate gas" do
		d.impact_gas(3000)
	end

end




