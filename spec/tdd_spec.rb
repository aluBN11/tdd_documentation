#require_relative "./lib/tdd/food.rb"

RSpec.describe Tdd do
	
	f = Food.new("Beef",50,42)

  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end


	it "has name" do
		expect(f.instance_variable_get(:@name) ).not_to be nil
	end

	it "has gas" do
		expect(f.instance_variable_get(:@gas) ).not_to be nil
	end

	it "has terrain" do
		expect(f.instance_variable_get(:@terrain) ).not_to be nil
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
# "<Beef>\nGas emisions = 50 kgCO2eq\nTerrain use = 42\n"
	end

	it "has energetic value method" do
		expect(f ).to respond_to(:energeticVal) 
	end

	it "calculates correctly impact of man" do
		#have to give correct values
		expect( f.impact('h',20,39) ).to_be 32
	end 

	it "calculates correctly impact of woman" do
		#have to give correct values
		expect( f.impact('h',20,39) ).to_be 32
	end 

end

#RSpec.shared_examples "foods"  do |Food|
#	it "Has a name" do
#		expect(Food::name).not_to be nil
#	end
#end

#RSpec.describe Food do 
#	it "Has name" do
#		    expect(false).to eq(true)
		#@burger = Food.new("burger")
		#expect(@burger.name()).not_to be  nil
#	end
#end



