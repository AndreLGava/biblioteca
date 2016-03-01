class EmprestimosController < ApplicationController

  def index
    @emprestimos = Emprestimo.emprestimos_gerais
    @emprestimos_emprestados = Emprestimo.emprestimos_emprestados
    @emprestimos_atrasados = Emprestimo.emprestimos_atrasados
    @emprestimos_devolvidos = Emprestimo.emprestimos_devolvidos
  end


  def new
    @emprestimo = Emprestimo.new
   
  end

  def show
    @emprestimo = Emprestimo.find(params[:id])
    @emprestimos = Emprestimo.emprestimos_gerais    
  end

  def edit
    @emprestimo = Emprestimo.find(params[:id])
    @livro = @emprestimo.livro
  end


  def create
    @emprestimo = Emprestimo.new(params[:emprestimo]) 
    @emprestimo.save

    @emprestimos = Emprestimo.emprestimos_gerais    
  end

  def update
   # binding.pry
    @emprestimo = Emprestimo.find(params[:id])
    @emprestimo.livro.emprestado = false
    @emprestimo.livro.save
    @emprestimo.update_attributes(params[:emprestimo])
    @emprestimos = Emprestimo.emprestimos_gerais
  end


  def destroy
    @emprestimo = Emprestimo.find(params[:id])
    @emprestimo.destroy
    @emprestimos = Emprestimo.emprestimos_gerais
  end

  def edit_emprestimo_titulo
    @emprestimo = Emprestimo.find(params[:id])
    @livro = @emprestimo.livro
  end

 def edit_emprestimo_usuario
    @emprestimo = Emprestimo.find(params[:id])
  end

def  edit_emprestimo_data_emprestimo

   @emprestimo = Emprestimo.find(params[:id])
end


def edit_emprestimo_data_limite
   @emprestimo = Emprestimo.find(params[:id])
end

def edit_emprestimo_data_devolucao
   @emprestimo = Emprestimo.find(params[:id])
end

def notificacao
   @emprestimos_atrasados = Emprestimo.emprestimos_atrasados
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emprestimos }
    end
    @emprestimos_atrasados.each do |emp|
      AvisoMailer.aviso(emp).deliver
    end
end

end