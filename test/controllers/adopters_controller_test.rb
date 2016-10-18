require 'test_helper'

class AdoptersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adopter = adopters(:one)
  end

  test "should get index" do
    get adopters_url, as: :json
    assert_response :success
  end

  test "should create adopter" do
    assert_difference('Adopter.count') do
      post adopters_url, params: { adopter: { email: @adopter.email, fname: @adopter.fname, lname: @adopter.lname, phone: @adopter.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show adopter" do
    get adopter_url(@adopter), as: :json
    assert_response :success
  end

  test "should update adopter" do
    patch adopter_url(@adopter), params: { adopter: { email: @adopter.email, fname: @adopter.fname, lname: @adopter.lname, phone: @adopter.phone } }, as: :json
    assert_response 200
  end

  test "should destroy adopter" do
    assert_difference('Adopter.count', -1) do
      delete adopter_url(@adopter), as: :json
    end

    assert_response 204
  end
end
