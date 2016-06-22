RSpec.describe Event, :type => :model do
  it { should validate_presence_of :title }
end