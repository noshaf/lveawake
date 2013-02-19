task :send_welcome_test_email => :environment do
  noah = Rager.where(:email => "noshaf@gmail.com").first
  LveAwake.welcome_email(noah).deliver
end