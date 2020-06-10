puts "Api loaded"
class Api
   BASE_URL = 'https://elephant-api.herokuapp.com/elephants/'

    def self.get_elephants
        res = RestClient.get(BASE_URL)
        elephants = JSON.parse(res.body)
        # binding.pry
        elephants.each do |elephant|
            name = elephant["name"]   #iterating over array of hashes
            species = elephant["species"] 
            sex = elephant["sex"]
            dob = elephant["dob"]
            note = elephant["note"]

            Elephant.new(name, species, sex, dob, note)
        end
    end    
    
end
      



