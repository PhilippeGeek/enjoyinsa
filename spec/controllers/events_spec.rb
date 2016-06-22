RSpec.describe EventsController, :type => :controller do
  let(:event) {Event.create!(title:'Test Event')}

  describe 'index' do
    it 'has only published events'
  end

  describe 'publish' do
    it 'published is true' do
      event.update! published: false
      post :publish, params: {id: event.id}
      expect(Event.where(id: event.id).first.published).to be_truthy
    end

    it 'published stay true' do
      event.update! published: true
      post :publish, params: {id: event.id}
      expect(Event.where(id: event.id).first.published).to be_truthy
    end
  end

  describe 'unpublish' do
    it 'published is false' do
      event.update! published: true
      post :unpublish, params: {id: event.id}
      expect(Event.where(id: event.id).first.published).to be_falsey
    end

    it 'published stay false' do
      event.update! published: false
      post :unpublish, params: {id: event.id}
      expect(Event.where(id: event.id).first.published).to be_falsey
    end
  end
end