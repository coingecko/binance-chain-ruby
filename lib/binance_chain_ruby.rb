require "binance_chain_ruby/version"
require "http"
require "yaml"
require 'pry'

module BinanceChainRuby
  class Client
    API_URL = "https://testnet-dex.binance.org/api/v1"
    def block_time
      api_url = "#{API_URL}/time"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
      # to get all tickers from binance chain
      # client = BinanceChainRuby::Client.new
      # client.block_time
    end

    def node_info
      api_url = "#{API_URL}/node-info"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def validators
      api_url = "#{API_URL}/validators"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def peers
      api_url = "#{API_URL}/peers"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def account(address)
      api_url = "#{API_URL}/account/#{address}"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def account_sequence(address)
      api_url = "#{API_URL}/account/#{address}/sequence"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def transaction(id)
      # not working
      api_url = "#{API_URL}/tx/#{id}"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def tokens
      api_url = "#{API_URL}/tokens"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def markets
      api_url = "#{API_URL}/markets"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def fees
      api_url = "#{API_URL}/fees"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def depth(symbol)
      api_url = "#{API_URL}/depth?symbol=#{symbol}"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def broadcast
      # broadcast a transaction
      #not working
      api_url = "#{API_URL}/broadcast"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def klines(symbol, time_interval = 5)
      # get candlestick bar
      api_url = "#{API_URL}/klines?symbol=#{symbol}&interval=#{time_interval}m"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def closed_orders
      # get closed orders
      # error 400
      api_url = "#{API_URL}/orders/closed"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def open_orders
      # get opened orders
      # error 400
      api_url = "#{API_URL}/orders/open"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def order(id)
      # get an orders
      api_url = "#{API_URL}/orders/#{id}"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def tickers
      api_url = "#{API_URL}/ticker/24hr"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def trades
      api_url = "#{API_URL}/trades"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def block_exchange_fees
      # error 400
      api_url = "#{API_URL}/block-exchange-fee"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end

    def transactions
      # error 400
      api_url = "#{API_URL}/transactions"
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(api_url))
      output
    end
  end
end
