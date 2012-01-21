require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ActorsController do

  # This should return the minimal set of attributes required to create a valid
  # Actor. As you add validations to Actor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ActorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all actors as @actors" do
      actor = Actor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:actors).should eq([actor])
    end
  end

  describe "GET show" do
    it "assigns the requested actor as @actor" do
      actor = Actor.create! valid_attributes
      get :show, {:id => actor.to_param}, valid_session
      assigns(:actor).should eq(actor)
    end
  end

  describe "GET new" do
    it "assigns a new actor as @actor" do
      get :new, {}, valid_session
      assigns(:actor).should be_a_new(Actor)
    end
  end

  describe "GET edit" do
    it "assigns the requested actor as @actor" do
      actor = Actor.create! valid_attributes
      get :edit, {:id => actor.to_param}, valid_session
      assigns(:actor).should eq(actor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Actor" do
        expect {
          post :create, {:actor => valid_attributes}, valid_session
        }.to change(Actor, :count).by(1)
      end

      it "assigns a newly created actor as @actor" do
        post :create, {:actor => valid_attributes}, valid_session
        assigns(:actor).should be_a(Actor)
        assigns(:actor).should be_persisted
      end

      it "redirects to the created actor" do
        post :create, {:actor => valid_attributes}, valid_session
        response.should redirect_to(Actor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved actor as @actor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Actor.any_instance.stub(:save).and_return(false)
        post :create, {:actor => {}}, valid_session
        assigns(:actor).should be_a_new(Actor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Actor.any_instance.stub(:save).and_return(false)
        post :create, {:actor => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested actor" do
        actor = Actor.create! valid_attributes
        # Assuming there are no other actors in the database, this
        # specifies that the Actor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Actor.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => actor.to_param, :actor => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested actor as @actor" do
        actor = Actor.create! valid_attributes
        put :update, {:id => actor.to_param, :actor => valid_attributes}, valid_session
        assigns(:actor).should eq(actor)
      end

      it "redirects to the actor" do
        actor = Actor.create! valid_attributes
        put :update, {:id => actor.to_param, :actor => valid_attributes}, valid_session
        response.should redirect_to(actor)
      end
    end

    describe "with invalid params" do
      it "assigns the actor as @actor" do
        actor = Actor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Actor.any_instance.stub(:save).and_return(false)
        put :update, {:id => actor.to_param, :actor => {}}, valid_session
        assigns(:actor).should eq(actor)
      end

      it "re-renders the 'edit' template" do
        actor = Actor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Actor.any_instance.stub(:save).and_return(false)
        put :update, {:id => actor.to_param, :actor => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested actor" do
      actor = Actor.create! valid_attributes
      expect {
        delete :destroy, {:id => actor.to_param}, valid_session
      }.to change(Actor, :count).by(-1)
    end

    it "redirects to the actors list" do
      actor = Actor.create! valid_attributes
      delete :destroy, {:id => actor.to_param}, valid_session
      response.should redirect_to(actors_url)
    end
  end

end
