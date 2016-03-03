# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class KlassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
