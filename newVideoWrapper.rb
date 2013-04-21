require 'rubygems'
require 'yaml'
require 'active_record'
require '/hacks/prome/app/models/video.rb'
db_config = YAML::load( File.open("/hacks/prome/config/database.yml"))
ActiveRecord::Base.establish_connection( db_config["development"])

#attr_accessor:guardar


	resultado=Video.find_by_eaten(ARGV[2])
	if resultado==nil
		puts "saving"
	
	   guardar=Video.new
  	guardar.phone=ARGV[1]
  	guardar.eaten=ARGV[2]
    guardar.url=ARGV[0]
  	guardar.save
  	puts guardar.eaten
    puts "saved"
  	#wasGood = system( "python ./yowsup-cli -s "+ARGV[0]+" 'Tu codigo de login es "+guardar.loginCode+"' -c config.example" )
  	#puts "python ./yowsup-cli -s "+ARGV[0]+" 'Tu codigo de login es "+guardar.loginCode+"' -c config.example"
  	#wasGood = system("pwd")
  	#puts wasGood
  	end