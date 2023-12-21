require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  validates :name, presence: true
end
