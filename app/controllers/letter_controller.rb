class LetterController < ApplicationController
  def index
  end

  def new
    @repinfo = LegislatorFinder.new.find_by_zip(params[:zip])
    @letter= Letter.new
  end

  def create
    puts params
  end

  def show

  end

end
