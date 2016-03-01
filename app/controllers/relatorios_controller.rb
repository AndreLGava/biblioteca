class RelatoriosController < ApplicationController

  def index

  end
  def gerais
    @emprestimos = Emprestimo.emprestimos_gerais

    respond_to do |format|
      format.pdf do 
        render :pdf => "gerais", encoding: "UTF-8", layout: 'layouts/application.pdf.erb'

      end
    end
  end
  def atrasados
    @emprestimos_atrasados = Emprestimo.emprestimos_atrasados

    respond_to do |format|
      format.pdf do 
        render :pdf => "atrasados", encoding: "UTF-8", layout: 'layouts/application.pdf.erb'
      end
    end
  end

  def emprestados
    @emprestimos = Emprestimo.emprestimos_emprestados

    respond_to do |format|
      format.pdf do 
        render :pdf => "emprestados", encoding: "UTF-8", layout: 'layouts/application.pdf.erb'
      end
    end
  end

  def devolvidos
    @emprestimos = Emprestimo.emprestimos_devolvidos

    respond_to do |format|
      format.pdf do 
        render :pdf => "devolvidos", encoding: "UTF-8", layout: 'layouts/application.pdf.erb'
      end
    end
  end


end