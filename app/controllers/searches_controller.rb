class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = '05HSDYLWP402XXBS1GLUBYU0XPRSLW0CIAE200W3HSW0NSOZ'
      req.params['client_secret'] = 'FNU34YJ1ERM3DLIJCRMGKN1OSWWV05M0B3IZO3WXW1DBKAJS'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
