require "pry"

class LettersController < ApplicationController


  def index
  end

  def new
    location=Geokit::Geocoders::GoogleGeocoder.geocode "#{params[:sender_address]}, #{params[:sender_city]}, #{params[:sender_state]} #{params[:sender_zip]}"
    @repinfo = LegislatorFinder.new.find_by_latlong(location.lat, location.lng)
    @local_repinfo = LocalLegislatorFinder.new.find_by_latlong(location.lat, location.lng)
    @letter = Letter.new
  end

  def create
    puts letter_params
    @letter = Letter.create(letter_params)
    @repinfo = LegislatorFinder.new.find_by_bioguide_id(@letter.rep_id)
    render :show
  end

  def show
    set_letter
  end

  def generate
    set_letter
    @repinfo = LegislatorFinder.new.find_by_bioguide_id(@letter.rep_id)
    respond_to do |format|
      format.pdf
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:rep_id, :body, :sender_name, :sender_email, :sender_address, :sender_city, :sender_state, :sender_zip)
    end

end
