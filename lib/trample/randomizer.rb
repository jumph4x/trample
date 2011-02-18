  class Randomizer
    def email
           (0...6).map{ ('a'..'z').to_a[rand(10)] }.join + "@" + (0...8).map{ ('a'..'z').to_a[rand(10)] }.join + ".com" 
    end
    def client_name
           (0...6).map{ ('a'..'z').to_a[rand(10)] }.join.capitalize + " " + (0...8).map{ ('a'..'z').to_a[rand(10)] }.join.capitalize 
    end
    def phone_number
           rand(100 - 999).to_s + "-" + rand(1000 - 9999).to_s 
    end
    def street_1
           rand(100 - 999).to_s + " " + (0...12).map{ ('a'..'z').to_a[rand(10)] }.join.capitalize + " Street"
    end
    def city
           (0...12).map{ ('a'..'z').to_a[rand(10)] }.join.capitalize
    end
    def postal_code
           rand(11111 - 99999).to_s
    end
    def county
           (0...9).map{ ('a'..'z').to_a[rand(10)] }.join.capitalize 
    end
    def country
           (0...2).map{ ('a'..'z').to_a[rand(10)] }.join.upcase 
    end
    def reference_id
           rand(111111 - 9999999).to_s
    end
    def insptype
           insp = [
                   "someoption1",
                   "someoption2",
                   "someoption3",
                   "someoption4"
           ]
        insp[rand(insp.length)]
    end

    def state
           st = [
                   "Alabama",
                   "Alaska",
                   "Arizona",
                   "Arkansas",
                   "California",
                   "Colorado",
                   "Connecticut",
                   "Delaware",
                   "District Of Columbia",
                   "Florida",
                   "Georgia",
                   "Hawaii",
                   "Idaho",
                   "Illinois",
                   "Indiana",
                   "Iowa",
                   "Kansas",
                   "Kentucky",
                   "Louisiana",
                   "Maine",
                   "Maryland",
                   "Massachusetts",
                   "Michigan",
                   "Minnesota",
                   "Mississippi",
                   "Missouri",
                   "Montana",
                   "Nebraska",
                   "Nevada",
                   "New Hampshire",
                   "New Jersey",
                   "New Mexico",
                   "New York",
                   "North Carolina",
                   "North Dakota",
                   "Ohio",
                   "Oklahoma",
                   "Oregon",
                   "Pennsylvania",
                   "Rhode Island",
                   "South Carolina",
                   "South Dakota",
                   "Tennessee",
                   "Texas",
                   "Utah",
                   "Vermont",
                   "Virginia",
                   "Washington",
                   "West Virginia",
                   "Wisconsin",
                   "Wyoming"
           ]
        st[rand(st.length)]
    end
  end
#random =  Randomizer.new
#puts "Random Type: " + random.insptype
#puts "Random State: " + random.state
#puts "Random Zip: " + random.postal_code
#puts "Random City: " + random.city
#puts "Random County: " + random.county
#puts "Random Country: " + random.country
#puts "Random email: " + random.email
#puts "Random Phone: " + random.phone_number
#puts "Random Client Name: " + random.client_name
#puts "Random Reference ID: " + random.reference_id
