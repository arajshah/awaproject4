require 'test_helper'

class ReportnumbersControllerTest < ActionController::TestCase
  setup do
    @reportnumber = reportnumbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reportnumbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reportnumber" do
    assert_difference('Reportnumber.count') do
      post :create, reportnumber: { category: @reportnumber.category, date: @reportnumber.date, description: @reportnumber.description, integer: @reportnumber.integer, locationofnumber: @reportnumber.locationofnumber, phonenumber: @reportnumber.phonenumber, string: @reportnumber.string, string: @reportnumber.string, string: @reportnumber.string, timestamp: @reportnumber.timestamp }
    end

    assert_redirected_to reportnumber_path(assigns(:reportnumber))
  end

  test "should show reportnumber" do
    get :show, id: @reportnumber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reportnumber
    assert_response :success
  end

  test "should update reportnumber" do
    patch :update, id: @reportnumber, reportnumber: { category: @reportnumber.category, date: @reportnumber.date, description: @reportnumber.description, integer: @reportnumber.integer, locationofnumber: @reportnumber.locationofnumber, phonenumber: @reportnumber.phonenumber, string: @reportnumber.string, string: @reportnumber.string, string: @reportnumber.string, timestamp: @reportnumber.timestamp }
    assert_redirected_to reportnumber_path(assigns(:reportnumber))
  end

  test "should destroy reportnumber" do
    assert_difference('Reportnumber.count', -1) do
      delete :destroy, id: @reportnumber
    end

    assert_redirected_to reportnumbers_path
  end
end
