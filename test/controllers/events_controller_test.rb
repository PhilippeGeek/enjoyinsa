require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { description: @event.description, end: @event.end, latitude: @event.latitude, location: @event.location, longitude: @event.longitude, organization: @event.organization, published: @event.published, start: @event.start, title: @event.title } }
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { description: @event.description, end: @event.end, latitude: @event.latitude, location: @event.location, longitude: @event.longitude, organization: @event.organization, published: @event.published, start: @event.start, title: @event.title } }
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_response 204
  end
end
