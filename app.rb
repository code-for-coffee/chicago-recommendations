require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :database => 'chicago_recommendations',
  :adapter => 'postgresql'
)

get '/' do
  erb :index
end

get '/api' do
  # select * from recommendations;
  Recommendation.all.to_json
end
