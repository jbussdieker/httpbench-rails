class Result < ActiveRecord::Base
  attr_accessible :load_test_id, :duration, :started, :ended

  def self.sanitize_input(params)
    params.reject {|k,v| !new.attributes.keys.include?(k.to_s)}
  end

  def self.create_sanitized(params)
    create(sanitize_input(params))
  end
end
