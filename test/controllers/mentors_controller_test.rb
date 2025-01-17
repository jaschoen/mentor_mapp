require 'test_helper'

class MentorsControllerTest < ActionController::TestCase
  setup do
    @mentor = mentors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mentors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mentor" do
    assert_difference('Mentor.count') do
      post :create, mentor: { bio: @mentor.bio, certification: @mentor.certification, city: @mentor.city, coach_type: @mentor.coach_type, email: @mentor.email, experience: @mentor.experience, first_name: @mentor.first_name, industry: @mentor.industry, language: @mentor.language, last_name: @mentor.last_name, price_high: @mentor.price_high, price_low: @mentor.price_low, rating: @mentor.rating, skills: @mentor.skills, state: @mentor.state }
    end

    assert_redirected_to mentor_path(assigns(:mentor))
  end

  test "should show mentor" do
    get :show, id: @mentor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mentor
    assert_response :success
  end

  test "should update mentor" do
    patch :update, id: @mentor, mentor: { bio: @mentor.bio, certification: @mentor.certification, city: @mentor.city, coach_type: @mentor.coach_type, email: @mentor.email, experience: @mentor.experience, first_name: @mentor.first_name, industry: @mentor.industry, language: @mentor.language, last_name: @mentor.last_name, price_high: @mentor.price_high, price_low: @mentor.price_low, rating: @mentor.rating, skills: @mentor.skills, state: @mentor.state }
    assert_redirected_to mentor_path(assigns(:mentor))
  end

  test "should destroy mentor" do
    assert_difference('Mentor.count', -1) do
      delete :destroy, id: @mentor
    end

    assert_redirected_to mentors_path
  end
end
