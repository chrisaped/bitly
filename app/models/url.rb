class Url < ActiveRecord::Base
  #validates :address, presence: true,  :format =>{ :with => /\w{3}\..+\.com/, :message => " is not valid"  }
  validates :address, presence: true, :format => { :with => /https?\:\/\/.+/ }

  before_create :shorten, :valid_url

  def shorten
    self.short_url = Digest::MD5.hexdigest(address)[0,6]
  end

  def valid_url
    
  end

end
