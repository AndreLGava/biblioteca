class ExcelController < ApplicationController

  def index

  end
  def excel_gerais
    @emprestimos = Emprestimo.emprestimos_gerais
    respond_to do |format|
      format.xlsx {render xlsx: t('emprestimos.emprestimos'), template: 'excel/excel_emprestimos.xlsx'}
    end
  end
  def excel_atrasados
    @emprestimos = Emprestimo.emprestimos_atrasados
    respond_to do |format|
      format.xlsx {render xlsx: t('emprestimos.atrasados'), template: 'excel/excel_emprestimos.xlsx'}
    end
  end

  def excel_emprestados
    @emprestimos = Emprestimo.emprestimos_emprestados
    respond_to do |format|
      format.xlsx {render xlsx: t('emprestimos.emprestados'), template: 'excel/excel_emprestimos.xlsx'}
    end
  end

  def excel_devolvidos
    @emprestimos = Emprestimo.emprestimos_devolvidos
    respond_to do |format|
      format.xlsx {render xlsx: t('emprestimos.devolvidos'), template: 'excel/excel_emprestimos.xlsx'}
    end
  end


end