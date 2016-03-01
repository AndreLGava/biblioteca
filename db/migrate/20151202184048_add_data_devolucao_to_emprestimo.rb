class AddDataDevolucaoToEmprestimo < ActiveRecord::Migration
  def change
    add_column :emprestimos, :data_devolucao, :date
  end
end
