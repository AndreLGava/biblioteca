class HomeController < ApplicationController
	def index
		 @livros = Livro.where("emprestado = false").order("titulo")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livros }
	end
end
end