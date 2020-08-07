class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def date
    if params[:date]
      Date.parse(params[:date])
    else
      Date.today
    end
  end
end
