class Api
    PRIVATE_KEY = 
    PUBLIC_KEY = 
    def self.get_time
        Time.now.to_i.to_s
    end
    def self.get_comics
        ts = self.get_time
        hash = Digest::MD5.hexdigest(ts + PRIVATE_KEY + PUBLIC_KEY)
        url = "http://gateway.marvel.com/v1/public/comics?ts=#{ts}&apikey=#{public_key}&hash=#{hash}"
        # RestClient.get(url) response objec, need to use json parse body data
        #big string  to instantiate the info.
    end
    puts "api loaded"
end


ts = 
private_key = "your_private_key"
public_key = "your_public_key"
