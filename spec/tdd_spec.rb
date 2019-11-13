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

	f = Food.new("Beef",50,164.0,21.1, 0.0, 3.1)

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








