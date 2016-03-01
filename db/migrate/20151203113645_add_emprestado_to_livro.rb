class AddEmprestadoToLivro < ActiveRecord::Migration
  def change
    add_column :livros, :emprestado, :boolean
  end
end
