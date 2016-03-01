require "test_helper"

describe Usuario do
	subject{ FactoryGirl.build(:usuario) }
	let(:mock) { MiniTest::Mock.new }

	context "Permitir" do
		it { must allow_mass_assignment_of(:nome) }
		it { must allow_mass_assignment_of(:email) }
		it { must allow_mass_assignment_of(:senha) }
		it { must allow_mass_assignment_of(:bio) }
		it { must allow_mass_assignment_of(:admin) }	
	end
end