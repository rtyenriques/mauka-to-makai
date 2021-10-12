# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'rest-client'
require 'open-uri'

url = URI.open('https://hawaiibeachsafety.com/rest/conditions.json')
beach_ids = open(url).read
beaches = JSON.parse(beach_ids)

beaches.each do |b|

    # beach_id = beaches[b]
    # url_beach = 'https://hawaiibeachsafety.com/rest/conditions.json'
    # beach_info = open(url_beach).read
    # beach = JSON.parse(beach_info)
    # new_beach = Beach.create(
    #     :name => beach['beach']
    # )
    new_beach = Beach.create(
         :name => b['beach'],
         :island => b['island'],
         :shore => b['shore'],
         :temp => b['temp'],
         :weather => b['weather'],
         :surf => b['surf']
    )

    
 
end
   
 








