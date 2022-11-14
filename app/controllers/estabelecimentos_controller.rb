class EstabelecimentosController < ApplicationController
  def index
    @estabelecimentos = Estabelecimento.all
  end

  def show
    @estabelecimento = Estabelecimento.find(params[:id])
  end

  def new 
    @estabelecimento = Estabelecimento.new
  end

  def create
    @estabelecimento = Estabelecimento.new(estebelecimento_params)

    if @estabelecimento.save
      redirect_to @estabelecimento
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @estabelecimento = Estabelecimento.find(params[:id])
  end

  def update
    @estabelecimento = Estabelecimento.find(params[:id])

    if @estabelecimento.update(estebelecimento_params)
      redirect_to @estabelecimento
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def estebelecimento_params
      params.require(:estabelecimento).permit(:nome, :cnes)
    end
end
