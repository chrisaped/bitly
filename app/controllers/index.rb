get '/' do
  @url = Url.last
  erb :index
end

post "/" do
  @url = Url.create(:address => params[:url]["address"])

  # Two possibilities:
  # 1. The URL saved (:address was a valid URL).
  # 2. The URL did not save (some validation failed).
  #
  # In *both* cases, the statement "if @url" will return true
  # 
  # In the case of 2, we know that @url.errors.full_messages is an array of
  # error messages that we want to display to the user.
  erb :index
end


