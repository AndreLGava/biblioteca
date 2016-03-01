class CreateEmprestimos < ActiveRecord::Migration
  def change
    create_table :emprestimos do |t|
      t.date :data_emprestimo
      t.date :data_limite

      t.timestamps
    end
  end
end
