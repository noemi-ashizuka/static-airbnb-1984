require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats_json = URI.open(url).read
    @flats = JSON.parse(flats_json)
  end

  def show
    id = params[:id]
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats_json = URI.open(url).read
    @flats = JSON.parse(flats_json)
    @flat = @flats.find do |flat_hash|
      flat_hash['id'] == id.to_i
    end
  end
end
