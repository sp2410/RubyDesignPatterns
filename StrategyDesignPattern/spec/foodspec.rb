require "food"
require "grill"
require "hamburger"
require "hotdog"
require "veggiepatty"

	
RSpec.describe "Party" do

	context "Food is available to use" do 
		food = Food.new

		describe "type" do 
			it "raises error when called" do 
				#must pass a block
				expect{food.type}.to raise_error(NotImplementedError)
			end
		end
	end


	context "hotdog is available to grill" do 
		hotdog = Hotdog.new

		describe "type" do 
			it "gives type hotdog" do 
				#must pass an argument
				#compare using eq
				expect(hotdog.type).to  eq('hotdog')
			end

		end
	end

	context "VeggiePatty is available to grill" do 
		veggiepatty = Veggiepatty.new

		describe "type" do 
			it "gives type veggiepatty" do 
				#must pass an argument
				#compare using eq
				expect(veggiepatty.type).to  eq('veggiepatty')
			end

		end
	end

	context "hotdog is available to grill" do 
		hamburger = Hamburger.new

		describe "type" do 
			it "gives type hamburger" do 
				#must pass an argument
				#compare using eq
				expect(hamburger.type).to  eq('hamburger')
			end
		end
	end

	context "Grill is ready" do 
		hamburger = Hamburger.new
		grill = Grill.new(hamburger)
		
		

		describe "initialize" do 
			it "gives food to the grill" do 
				#must pass an argument
				#compare using eq
				expect(grill.grilling).to  eq("Grilling hamburger")
			end
		end

	end

	context "New food" do 
		describe "adding new food" do
			grill = Grill.new(Hamburger.new)
			grill.food = Veggiepatty.new

			it "gives food to the grill" do 
				# must pass an argument
				# compare using eq
				expect(grill.grilling).to  eq("Grilling veggiepatty")
			end
		end
	end

	context "Another new food" do 
		describe "adding new food" do
			grill = Grill.new(Hamburger.new)
			grill.food = Veggiepatty.new
			grill.food = Hamburger.new
			
			it "gives food to the grill" do 
				# must pass an argument
				# compare using eq
				expect(grill.grilling).to  eq("Grilling hamburger")
			end
		end
	end


end


