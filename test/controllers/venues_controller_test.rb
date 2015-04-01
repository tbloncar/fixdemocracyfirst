require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  setup do
    @venue = venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue" do
    assert_difference('Venue.count') do
      post :create, venue: { city: @venue.city, latitude: @venue.latitude, longitude: @venue.longitude, name: @venue.name, postal_code: @venue.postal_code, rwu_id: @venue.rwu_id, state: @venue.state, street_address1: @venue.street_address1, street_address2: @venue.street_address2, unit: @venue.unit, url: @venue.url }
    end

    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should show venue" do
    get :show, id: @venue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue
    assert_response :success
  end

  test "should update venue" do
    patch :update, id: @venue, venue: { city: @venue.city, latitude: @venue.latitude, longitude: @venue.longitude, name: @venue.name, postal_code: @venue.postal_code, rwu_id: @venue.rwu_id, state: @venue.state, street_address1: @venue.street_address1, street_address2: @venue.street_address2, unit: @venue.unit, url: @venue.url }
    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should destroy venue" do
    assert_difference('Venue.count', -1) do
      delete :destroy, id: @venue
    end

    assert_redirected_to venues_path
  end
end