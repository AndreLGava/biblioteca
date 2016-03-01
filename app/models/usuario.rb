class Usuario < ActiveRecord::Base
  attr_accessible :admin, :bio, :email, :nome, :senha
  validates_presence_of  :email, :nome, :senha
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create 
  has_many :emprestimos, class_name: 'Emprestimo', foreign_key: :usuario_id

  before_destroy :verifica_usuario

  def verifica_usuario
  	f = Emprestimo.where("usuario_id = ?", id).joins(:livro, :usuario)
    if f.any?
      errors[:base] << "Imposivel deletar este objeto"
      return false
    end
  end
end
