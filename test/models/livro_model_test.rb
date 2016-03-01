require "test_helper"

describe Livro do
	subject{ FactoryGirl.build(:livro) }
	let(:mock) { MiniTest::Mock.new }

	context "Permitir" do
		it { must allow_mass_assignment_of(:titulo) }
		it { must allow_mass_assignment_of(:emprestimo) }

		
	end
end