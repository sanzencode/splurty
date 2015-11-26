require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   test "unique_tag" do 
   	quote = Quote.create(:author => 'Sandra Harrasser', :saying => 'Life IS and adventure, its the journey that matters.')
   	expected = 'SH#' + quote.id.to_s
   	actual = quote.unique_tag
   	assert_equal expected, actual
   end


end
