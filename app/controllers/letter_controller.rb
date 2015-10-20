class LetterController < ApplicationController
  def index
  end

  def new
    @repinfo = LegislatorFinder.new.find_by_zip(params[:zip])
    puts "Hello #{@repinfo}"
  end

end
