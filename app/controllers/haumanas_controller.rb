class HaumanasController < ApplicationController
  def index
    @haumanas = Haumana.all
  end

  def show
    @haumana = Haumana.find(haumana_params[:id])
  end

  def new
    @haumana = Haumana.new
  end

  def create
    @haumana = Haumana.new(haumana_params)

    if @haumana.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @haumana = Haumana.find(haumana_params[:id])
  end

  def update
    @haumana = Haumana.find(haumana_params[:id])

    if @haumana.update hour_entry_params
      redirect_to @haumana
    else
      render :edit
    end
  end

  def destroy
    @haumana = Haumana.find(haumana_params[:id])
    @haumana.destroy

    redirect_to action: 'index'
  end

  private

  def haumana_params; end
end
