require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
	def test_truth
		usuario = Usuario.create(:admin => true, :bio => "something", :email => "asdadsad@sadas.com", :nome => "André", :senha => "ToDo")
		assert_invalid usuario, "Usuario não pode ser criado"
	end
  # test "the truth" do
  #   assert true
  # end
end
