class AddImageFileNameToLivro < ActiveRecord::Migration
  def change
    add_column :livros, :image_file_name, :string
  end
end
