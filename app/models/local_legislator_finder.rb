require 'httparty'

class LocalLegislatorFinder

  # def find_by_zip(zipcode)
  #   url = "https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zipcode}&apikey=#{Rails.application.secrets.sunlight_api_key}"
  #   HTTParty.get(url)['results']
  # end

  def find_by_bioguide_id(bioguide_id)
    url = "http://openstates.org/api/v1/legislators/#{bioguide_id}"
    HTTParty.get(url)
  end

  def find_by_latlong(lat, long)
    url = "http://openstates.org/api/v1/legislators/geo/?lat=#{lat}&long=#{long}&apikey=#{Rails.application.secrets.sunlight_api_key}"
    HTTParty.get(url)
  end

end