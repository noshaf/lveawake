task :send_welcome_test_email => :environment do
  noah = Rager.where(:email => "noshaf@gmail.com").first
  LveAwake.welcome_email(noah).deliver
end

task :emails => :environment do
    Rager.all.each do |s|
    puts s.email
  end
end

task :count => :environment do
  puts Rager.all.count
end