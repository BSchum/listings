require 'test_helper.rb'

describe Listing do

    it "returns an object with the keyword" do
        listings = Listing.search(keywords: 'iphone')

        assert_equal 1, listings.length
        assert_equal "iphone title", listings.first.title
    end
end