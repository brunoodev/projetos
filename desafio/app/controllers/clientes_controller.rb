class ClientesController < ApplicationController

  def index
  	@clientes = Cliente.all
  end

  def shownome
    @nomeDigitado = params[:nome]
    @clientes = Cliente.buscarapida(@nomeDigitado)
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def new
  	@cliente = Cliente.new
  end

  def create
  	@cliente = Cliente.new(cliente_params)
    if @cliente.save
      redirect_to root_path, :notice => "Cliente registrado com sucesso!"
    else
      render "new"
    end
  end

  def edit
  	@cliente = Cliente.find(params[:id])
  end

  def update
  	@cliente = Cliente.find(params[:id])
    if @cliente.update_attributes(cliente_params)
      redirect_to root_path, :notice => "Cliente atualizado com sucesso!"
    else
      render "edit"
    end
  end

  def destroy
  	@cliente = Cliente.find(params[:id])
    @cliente.destroy
    redirect_to root_path, :notice => "Cliente excluido do sistema com sucesso!"
  end

  def cliente_params
  	allow = [:nome, :email, :datanascimento]
  	params.require(:cliente).permit(allow)
  end
  
end
