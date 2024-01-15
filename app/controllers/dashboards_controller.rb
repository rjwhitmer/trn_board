# frozen_string_literal: true

class DashboardsController < ApplicationController
  def index
    @teams = Team.all.sort_by(&:strokes)
  end
end
