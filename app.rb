require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :database => 'chicago_recommendations',
  :adapter => 'postgresql'
)

get '/' do
  @recommendations = Recommendation.all
  erb :recommendations
end

get '/api' do
  # select * from recommendations;
  Recommendation.all.to_json
end
