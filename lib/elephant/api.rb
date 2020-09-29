class Api
   BASE_URL = 'https://elephant-api.herokuapp.com/elephants/'   #class constant 

    def self.get_elephants
        res = RestClient.get(BASE_URL) #makes the Api, https request.
        elephants = JSON.parse(res.body) #prints out a large string of data requested and it being parsed to look in a readable way.
            elephants.each do |elephant|
            name = elephant["name"]   #iterating 
            species = elephant["species"] 
            sex = elephant["sex"]
            dob = elephant["dob"]
            note = elephant["note"]
            Elephant.new(name, species, sex, dob, note) if name != nil 
            # (its creating a new instance of the elephant class)
        
      end    
    
    end
end
      



