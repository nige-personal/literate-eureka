require 'sinatra/base'
require 'exchange_rate'
require 'haml'

  # TODO add logging!!
  class SinatraApp < Sinatra::Base

    #when set to true display a nice exception page for dev but prevent exception handler from working
    set :show_exceptions, false

    get "/" do
      haml :index
    end

    post '/convert' do
      begin
        from = params['from']
        to = params['to']
        amount = params['amount']
        rate_hash = ExchangeRate.at(params['date'],from, to)

        @result = {}
        @result[:result] = calculate_conversion(amount, rate_hash[:rate])
        @result[:from] = from
        @result[:to] = to
        @result[:amount] = amount
        haml :convert

      rescue Exceptions::UninitialisedStoreError => e
        return e.message
      end
    end

    def calculate_conversion(amount, rate)
      (BigDecimal(amount)* rate).to_f.round(2)
    end

    error do
      error env['sinatra.error'].message
    end
  end