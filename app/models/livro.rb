class Livro < ActiveRecord::Base
  attr_accessible :descricao, :titulo, :emprestado, :image
  validates_presence_of :descricao, :titulo
  has_many :emprestimos, class_name: 'Emprestimo', foreign_key: :livro_id
  before_destroy :verifica_livro
  has_attached_file :image, :styles => { :medium => "270x480>", :thumb => "90x160#" }
  
  def verifica_livro
  	f = Emprestimo.where(livro_id: id).joins(:livro, :usuario)
    if f.any?
      errors[:base] << "Imposivel deletar este objeto"
      return false
    end
  end
end
