require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test 'routes to new and score actions' do
    assert_routing '/new', controller: 'games', action: 'new'
    assert_routing({ method: 'post', path: '/score' }, { controller: 'games', action: 'score' })
  end

  test 'should create a set of letters to choose' do
    get '/new'
    assert_response :success
  end
end
