class RecursoExterno < ApplicationRecord
  require "rest-client"
  def self.conseguir_datos
    response = RestClient.get("https://newsapi.org/v2/?q=tesla&from=2023-10-29&sortBy=publishedAt&apiKey=4ae8d567739740d1b1f304ee2138ff4e")    
    JSON.parse(response.body)
  end
end
