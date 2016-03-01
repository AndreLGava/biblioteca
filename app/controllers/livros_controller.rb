class LivrosController < ApplicationController

  def index
    @livros = Livro.order(:titulo)
  end


  def new
    @livro = Livro.new
  end


  def show
    @livro = Livro.find(params[:id])
  end
 def edit
    @livro = Livro.find(params[:id])
  end


  def create
    @livro = Livro.new(params[:livro])   
    if @livro.save
     
    else
     puts "algo deu errado"
   end
   # @livro.save
     @livros = Livro.all   
  end

  def update
    @livro = Livro.find(params[:id])
    @livro.update_attributes(params[:livro])
    @livros = Livro.all
  end


  def destroy
    @livro = Livro.find(params[:id])
    @livro.destroy
    @livros = Livro.all
  end

  def edit_livro_titulo
    @livro = Livro.find(params[:id])
  end

 def edit_livro_descricao
    @livro = Livro.find(params[:id])
  end

end
