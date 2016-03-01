class AddUsuarioIdToEmprestimo < ActiveRecord::Migration
  def change
    add_column :emprestimos, :usuario_id, :integer
  end
end
