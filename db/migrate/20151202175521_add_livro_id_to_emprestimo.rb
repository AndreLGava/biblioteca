class AddLivroIdToEmprestimo < ActiveRecord::Migration
  def change
    add_column :emprestimos, :livro_id, :integer
  end
end
