require 'rubygems'
require 'httparty'



class GetDatas
  include HTTParty
  # base_uri is one of the methods that comes with ruby that can be use for api calls
  base_uri '/datas.json'

  def datas
    self.class.get('datas.json')
  end
end

apiRes_data = GetDatas.new
puts apiRes_data.datas

#
#
# class StackExchange
#   include HTTParty
#   # base_uri is one of the methods that comes with ruby that can be use for api calls
#   base_uri 'api.stackexchange.com'
#
#   def initialize(service, page)
#     @options = {query: {site: service}}
#   end
#
#   def questions
#     self.class.get('/2.2/questions', @options)
#   end
#
#   def users
#     self.class.get('/2.2/users', @options)
#   end
# end
#
# stack_exchange = stacExchange.new('stackoverflow', 1)
# puts stack_exchange.questions
#
#
# puts stack_exchange.users
