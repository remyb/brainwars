require 'spec_helper'

describe CalendarController do

  integrate_views

  describe "GET 'index'" do
    
    before(:each) do
      @user = Factory(:user)
      test_sign_in(@user)
    end

    it "should have the right title" do
      get :index, :year => Time.now.year, :month => Time.now.month
      response.should have_tag("title", /event calendar/i)
    end
  end
end