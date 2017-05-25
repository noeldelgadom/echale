class MatchesController < ApplicationController
  before_action :find_match, only: [:show, :edit, :update, :destroy]

  def index
    @matches = Match.all.order('kickoff DESC')
  end

  def show
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to @match, notice: 'Match Added!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @match.update(match_params)
      redirect_to @match, notice: 'Match was updated'
    else
      render 'edit'
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_path
  end

  private

    def match_params
      params.require(:match).permit(:local, :visitor, :kickoff)
    end

    def find_match
      @match = Match.find(params[:id])
    end
end
