# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @hour_entries = HourEntry.all
    @activity_details = ActivityDetail.all
    @haumanas = Haumana.all
  end
end
