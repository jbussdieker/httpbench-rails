class Site < ActiveRecord::Base
  attr_accessible :address, :host, :name, :port
  has_many :pages, :dependent => :destroy
end
