class Page < ActiveRecord::Base
  attr_accessible :name, :path, :site_id

  belongs_to :site
  has_many :load_tests, :dependent => :destroy
end
