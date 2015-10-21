

class LettersController < ApplicationController

def index
  end

  def new
    @repinfo = LegislatorFinder.new.find_by_zip(params[:zip])
    @letter = Letter.new
  end

  def create
    puts letter_params
    @letter = Letter.create(letter_params)
    @repinfo = LegislatorFinder.new.find_by_bioguide_id(@letter.rep_id)
    render :show
  end

  def show

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:rep_id, :body, :sender_name, :sender_email, :sender_address)
    end

end
