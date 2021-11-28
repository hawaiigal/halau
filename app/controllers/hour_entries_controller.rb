class HourEntriesController < ApplicationController
  def index
    @hour_entries = HourEntry.all
  end

  def create
    @hour_entry = HourEntry.new(hour_entry_params)

    if @hour_entry.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def new
    @hour_entry = HourEntry.new
    @haumanas = Haumana.all
  end

  def edit
    @hour_entry = HourEntry.find(params[:id])
  end

  def show
    @hour_entry = HourEntry.find(params[:id])
  end

  def update
    @hour_entry = HourEntry.find(params[:id])

    if @hour_entry.update(hour_entry_params)
      redirect_to @hour_entry
    else
      render :edit
    end
  end

  def destroy
    @hour_entry = HourEntry.find(params[:id])
    @hour_entry.destroy

    redirect_to root_path
  end

  private

  def hour_entry_params
    params.require(:hour_entry).permit(:name, :date, :type_of_entry, :activity_detail_id, :hours, :minutes, :notes, :haumana_id)
  end
end
