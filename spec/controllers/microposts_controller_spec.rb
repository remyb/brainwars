require 'spec_helper'

describe MicropostsController do

  integrate_views

  describe "access control" do

    it "should deny access to 'create'" do
      post :create
      response.should redirect_to(signin_path)
    end

    it "should deny access to 'destroy'" do
      delete :destroy
      response.should redirect_to(signin_path)
    end
  end
  
  describe "POST 'create'" do

     before(:each) do
      @user = test_sign_in(Factory(:user))
      @attr = { :content => "Lorem ipsum" }
      @micropost = Factory(:micropost, @attr.merge(:user => @user))

      @user.microposts.stub!(:build).and_return(@micropost)
    end

    describe "failure" do

      before(:each) do
        @micropost.should_receive(:save).and_return(false)
      end

      it "should render the home page" do
        post :create, :micropost => @attr
        response.should render_template('pages/home')
      end
    end

    describe "success" do

      before(:each) do
        @micropost.should_receive(:save).and_return(true)
      end

      it "should redirect to the home page" do
        post :create, :micropost => @attr
        response.should redirect_to(root_path)
      end

      it "should have a flash message" do
        post :create, :micropost => @attr
        flash[:success].should =~ /micropost created/i
      end
    end
  end
end
