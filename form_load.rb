Trample.configure do
  concurrency 1
  iterations  1 
  login do
      # get the login page to generate the auth token
    get "http://someserver.com/users/sign_in"
    post "http://staging.allinspections.com/users/sign_in" do
      {:user => {:email => "user@someserver.com", :password => "password"}}
    end
  end
  # post some random data to a form 
  get "http://someserver.com/path"
  get "http://someserver.com/path/new"
  # this needs to be refactored into a neater block and to make it more DRY
  post "http://someserver.com/path/new" do
    {:something => {
           :location => {
           :street_1 => Randomizer.new.street_1,
           :city => Randomizer.new.city,
           :state => Randomizer.new.state,
           :country => Randomizer.new.country,
           :postal_code => Randomizer.new.postal_code,
           },
        :type => Randomizer.new.insptype,
        :reference_id => Randomizer.new.reference_id,
        :client_name =>  Randomizer.new.client_name,
        :phone_number => Randomizer.new.phone_number,
        :email => Randomizer.new.email,
        :scheduled_date => Time.now,
        }
    }
  end
end
