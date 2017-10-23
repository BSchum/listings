require 'test_helper'

describe Listing do

  it "retourne les annonces par rapport au categories" do
    listings = Listing.search(keywords: 'iphone')
    assert_equal 1, listings.length
    assert_equal "iphone title", listings.first.title
  end

end
