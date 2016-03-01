require "test_helper"

describe Emprestimo do
	subject{ FactoryGirl.build(:emprestimo) }
	let(:mock) { MiniTest::Mock.new }

	context "Permitir" do
		it { must allow_mass_assignment_of(:livro) }
		it { must allow_mass_assignment_of(:livro_id) }
		it { must allow_mass_assignment_of(:usuario) }		
		it { must allow_mass_assignment_of(:usuario_id) }		
		it { must allow_mass_assignment_of(:data_emprestimo) }	
		it { must allow_mass_assignment_of(:data_limite) }		
		it { must allow_mass_assignment_of(:data_devolucao) }		
	end
end