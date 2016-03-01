FactoryGirl.define do
	factory :emprestimo do
		livro_id 5
		usuario_id 9
		data_emprestimo 2015-05-20
		data_limite 2015-05-25
		data_devolucao 2015-05-27
	end
end