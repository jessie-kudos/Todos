require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :user }
end
