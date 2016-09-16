require "sinatra"
require_relative "age_name.rb"

get "/" do
	erb :get_name
end

post '/name' do
  name = params[:user_name]
  redirect "/age?user_name=" +name
end
get "/age" do
	name = params[:user_name]
	erb :get_age, :locals => {:your_name => name}
end
post "/age" do
	age = params[:user_age]
	name = params[:user_name]
	redirect "/numbers?age=#{age}&user_name=#{name}"
	# if   age.to_i <60 
	# 	erb :numbers
	# else
	# 	"In ten years you will be: #{params[:user_age].to_i  + 10}."
	# end
end
get "/numbers" do 
	age = params[:age]
	name = params[:user_name]
	erb :numbers, :locals => {:your_age => age, :your_name => name}  
end
post "/numbers" do
	age = params[:user_age].to_i
	name = params[:user_name]
	fav1 = params[:fav1].to_i
	fav2 = params[:fav2].to_i
	fav3 = params[:fav3].to_i
    sum =  sum (fav1,fav2,fav3)
   	age_num_conditional(age,sum, name, fav1, fav2, fav3)
end
