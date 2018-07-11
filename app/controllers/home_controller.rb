class HomeController < ApplicationController
  def top
  	@events = Event.all.order("created_at DESC")
  	@event_index="イベント一覧"
  end

  def help
  end
end
