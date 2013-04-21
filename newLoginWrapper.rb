require 'rubygems'
require 'yaml'
require 'active_record'
require '/hacks/prome/app/models/perform_login.rb'
db_config = YAML::load( File.open("/hacks/prome/config/database.yml"))
ActiveRecord::Base.establish_connection( db_config["development"])

#attr_accessor:guardar

if ARGV[1].downcase=="codigo"
	resultado=PerformLogin.find_by_eaten(ARGV[2])
	if resultado==nil
		
	
	guardar=PerformLogin.new
  	guardar.loginCode=rand(9).to_s()+rand(9).to_s() + rand(9).to_s()
  	guardar.isactive="yes"
  	guardar.phone=ARGV[0]
  	guardar.eaten=ARGV[2]
  	guardar.save
  	puts guardar.loginCode
  	wasGood = system( "python ./yowsup-cli -s "+ARGV[0]+" 'Tu codigo de login es "+guardar.loginCode+"' -c config.example" )
  	#puts "python ./yowsup-cli -s "+ARGV[0]+" 'Tu codigo de login es "+guardar.loginCode+"' -c config.example"
  	#wasGood = system("pwd")
  	#puts wasGood
  	end
end