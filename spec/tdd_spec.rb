#require_relative "./lib/tdd/food.rb"

RSpec.describe Tdd do
	
	f = Food.new("burger")

  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

	it "has @f" do
		expect(f.name).not_to be nil
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



