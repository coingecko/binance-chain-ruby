require "binance_chain_ruby/version"
require "http"
require "yaml"

module BinanceChainRuby
  class Client
    def tickers
      api_url = "https://testnet-dex.binance.org/api/v1/ticker/24hr"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
      
      # to get all tickers from binance chain
      # client = BinanceChainRuby::Client.new
      # client.tickers
    end
  end
end
