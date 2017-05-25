class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all.order('created_at DESC')
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to @team, notice: 'Team Added!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to @team, notice: 'team was updated'
    else
      render 'edit'
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

    def team_params
      params.require(:team).permit(:name, :image)
    end

    def find_team
      @team = Team.find(params[:id])
    end
end
