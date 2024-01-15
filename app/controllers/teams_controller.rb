# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.all.sort_by(&:strokes)
  end

  def new; end

  def create
    @team = Team.new

    @team.update(
      name: params[:name]
    )

    if @team.save!
      flash.now[:alert] = 'Team successfully created!'
      render action: 'index'
    else
      flash.now[:error] = 'Something went wrong. Try again'
      render action: 'new'
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def delete; end
end
