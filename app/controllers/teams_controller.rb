class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @entries = team.entries.for_date(date)
    @date = date
    @users_not_reporting = users_not_reporting
  end

  private

  def team
    @team ||= Team.includes(users: :entries).find(params[:id])
  end

  def users_not_reporting
    reporting_user_ids = @entries.pluck(:user_id)
    @team.users.where.not(id: reporting_user_ids)
  end
end
