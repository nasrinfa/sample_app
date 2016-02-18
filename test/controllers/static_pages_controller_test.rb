require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  def testname
    @test_name = "should get"
  end

  test " #{@test_name} home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "#{@test_name} help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "#{@test_name} about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "#{@test_name} contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end

