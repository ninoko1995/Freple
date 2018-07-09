class HomeController < ApplicationController
  def top
  	@events = Event.all
  	@event_index="イベント一覧"
  end

  def help
  end
end
