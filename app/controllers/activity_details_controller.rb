# frozen_string_literal: true

class ActivityDetailsController < ApplicationController
  def index
    @activity_details = ActivityDetail.all
  end

  def show
    @activity_detail = ActivityDetail.find(params[:id])
  end

  def new
    @activity_detail = ActivityDetail.new
  end

  def create
    @activity_detail = ActivityDetail.new(activity_detail_params)

    if @activity_detail.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @activity_detail = ActivityDetail.find(params[:id])
  end

  def update
    @activity_detail = ActivityDetail.find(params[:id])

    if @activity_detail.update(activity_detail_params)
      redirect_to @activity_detail
    else
      render :edit
    end
  end

  def destroy
    @activity_detail = ActivityDetail.find(params[:id])
    @activity_detail.destroy

    redirect_to action: 'index'
  end

  private

  def activity_detail_params
    params.require(:activity_detail).permit(:name, :hours)
  end
end
