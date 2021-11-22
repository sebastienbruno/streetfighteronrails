# frozen_string_literal: true
class ApplicationController < ActionController::Base
    logger = Logger.new(STDOUT)


  # GET /pages
  def index
    @fights = Fight.all.includes(:opponent1, :opponent2)
  end
end
