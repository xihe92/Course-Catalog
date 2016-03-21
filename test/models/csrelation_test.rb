require "test_helper"

class CsrelationTest < ActiveSupport::TestCase
  def csrelation
    @csrelation ||= Csrelation.new
  end

  def test_valid
    assert csrelation.valid?
  end
end
