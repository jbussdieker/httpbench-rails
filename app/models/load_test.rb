class LoadTest < ActiveRecord::Base
  attr_accessible :duration, :page_id, :rps, :status

  belongs_to :page
  has_many :results, :dependent => :destroy
  after_create :queue_run

  def queue_run
    update_attributes(:status => "queued")
    delay.run
  end

  def run
    update_attributes(:status => "running")
    site = Httpbench::Site.new(page.site)
    p = site.new_page(page)
    test = Httpbench::Test.new(self)
    test.run(p)
    test.results.each do |result|
      results.create_sanitized(result)
    end
    update_attributes(:status => "complete")
  end
end
