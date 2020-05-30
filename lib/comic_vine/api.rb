




# require 'dotenv/loa'
class Api

    BASE_URL = 'https://comicvine.gamespot.com/api/characters'
    KEY = ENV['API_KEY']
    def self.get_comic
        res = RestClient.get(BASE_URL)
        # binding.pry
    end
end

    # PUBLIC_KEY =  ENV['MARVEL-API_KEY']
    # def self.get_time
#         Time.now.to_i.to_s
#     end
#     def self.get_comics
#         ts = self.get_time
#         hash = Digest::MD5.hexdigest(ts + PRIVATE_KEY + PUBLIC_KEY)
#         data = JSON.parse(res.body)# RestClient.get(url) response objec, need to use json parse body data
#         #big string  to instantiate the info.
#     end
#     puts "api loaded"
# end


# ts = 
# private_key = "your_private_key"
# public_key = "your_public_key"
