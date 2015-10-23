require 'httparty'
require 'pry'

class LegislatorFinder

  def find_by_zip(zipcode)
    url = "https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zipcode}&apikey=#{Rails.application.secrets.sunlight_api_key}"
    HTTParty.get(url)['results']
  end

  def find_by_bioguide_id(bioguide_id)
    url = "https://congress.api.sunlightfoundation.com/legislators?bioguide_id=#{bioguide_id}&apikey=#{Rails.application.secrets.sunlight_api_key}"
    HTTParty.get(url)['results'].first
  end

  def find_by_latlong(lat, long)
    url = "https://congress.api.sunlightfoundation.com/locate?latitude=#{lat}&longitude=#{long}&apikey=#{Rails.application.secrets.sunlight_api_key}"
    HTTParty.get(url)['results']
  end

end