class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.all
  end

  def new
    @usuario = Usuario.new
  end

  def show
    @usuario = Usuario.find(params[:id])
  end


  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.new(params[:usuario])
    @usuario.save
    @usuarios = Usuario.all

  end

  def update
    @usuario = Usuario.find(params[:id])
    @usuario.update_attributes(params[:usuario])
    @usuarios = Usuario.all

  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    @usuarios = Usuario.all
  
  end

  def edit_usuario_nome    
    @usuario = Usuario.find(params[:id])
  end

  def update_usuario_nome    
    @usuario = Usuario.find(params[:id])
    @usuario.update_attributes(params[:usuario])
    @usuarios = Usuario.all
  end

   def edit_usuario_email  
    @usuario = Usuario.find(params[:id])
  end

  def update_usuario_email    
    @usuario = Usuario.find(params[:id])
    @usuario.update_attributes(params[:usuario])
    @usuarios = Usuario.all
  end

  def edit_usuario_bio  
    @usuario = Usuario.find(params[:id])
  end
  
  def update_usuario_bio    
    @usuario = Usuario.find(params[:id])
    @usuario.update_attributes(params[:usuario])
    @usuarios = Usuario.all
  end
end
