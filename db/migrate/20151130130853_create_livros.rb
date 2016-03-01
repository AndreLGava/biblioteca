class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
