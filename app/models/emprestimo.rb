class Emprestimo < ActiveRecord::Base
  attr_accessible :usuario_id, :livro_id, :data_emprestimo, :data_limite, :data_devolucao
  validates_presence_of :usuario_id, :livro_id, :data_emprestimo, :data_limite
  belongs_to :usuario,  class_name: 'Usuario', foreign_key: :usuario_id 
  belongs_to :livro, class_name: 'Livro', foreign_key: :livro_id 
  after_save {data_devolucao = self.data_devolucao}
  after_save :executa
  after_destroy :rexecuta

  def self.emprestimos_gerais
    Emprestimo.joins(:livro, :usuario).order(:data_emprestimo, :data_limite, :data_devolucao)
  end

  def self.emprestimos_atrasados
    Emprestimo.select( "NOME, TITULO, * ").where("data_limite < 'NOW()' and data_devolucao is null").joins(:livro, :usuario).order(:data_emprestimo, :data_limite)
  end

  def self.emprestimos_devolvidos
    Emprestimo.select( "NOME, TITULO, * ").where("data_devolucao is not null").joins(:livro, :usuario).order(:data_emprestimo, :data_limite)
  end
    def self.emprestimos_emprestados
    Emprestimo.select( "NOME, TITULO, * ").where("data_limite >= 'NOW()' and data_devolucao is null").joins(:livro, :usuario).order(:data_emprestimo, :data_limite)
    Emprestimo.select( "NOME, TITULO, * ").where("data_limite >= 'NOW()' and data_devolucao is null").joins(:livro, :usuario).order(:data_emprestimo, :data_limite)
   
  end

  # def self.emprestimos_gerais
  # 	Emprestimo.find_by_sql("SELECT E.ID, LIVRO_ID, USUARIO_ID, NOME, TITULO, DATA_EMPRESTIMO, DATA_LIMITE, DATA_DEVOLUCAO FROM EMPRESTIMOS E, USUARIOS U, LIVROS L WHERE U.ID = E.USUARIO_ID AND L.ID = E.LIVRO_ID ORDER BY  DATA_EMPRESTIMO, DATA_LIMITE, DATA_DEVOLUCAO")
  # end

  # def self.emprestimos_atrasados
  #   Emprestimo.find_by_sql("SELECT E.ID, LIVRO_ID, USUARIO_ID, EMAIL, NOME, TITULO, DATA_EMPRESTIMO, DATA_LIMITE, DATA_DEVOLUCAO 
  #   FROM EMPRESTIMOS E, USUARIOS U, LIVROS L 
  #   WHERE U.ID = E.USUARIO_ID 
  #   AND L.ID = E.LIVRO_ID 
  #   AND DATA_LIMITE < 'NOW()' 
  #   AND DATA_DEVOLUCAO IS NULL
  #   ORDER BY  DATA_EMPRESTIMO, DATA_LIMITE")
  # end

 
  def executa
    if data_devolucao == nil || data_devolucao > Date.today()
      livro.update_attributes(emprestado: true) 
    else
      livro.update_attributes(emprestado: false) 
    end
  end
  def rexecuta
    if data_devolucao == nil || data_devolucao > Date.today()
      livro.update_attributes(emprestado: false) 
    else
      livro.update_attributes(emprestado: true) 
    end
  end
end