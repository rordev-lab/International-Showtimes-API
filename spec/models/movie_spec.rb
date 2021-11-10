require 'rails_helper'

RSpec.describe Movie, type: :model do

  context 'validation test' do
    it 'movie title should be present' do
      queue = Movie.new(title: nil).save
      expect(queue).to eq(false)
    end

    it 'valid movie data should be save' do
      queue = Movie.new(title: "veeren").save
      expect(queue).to eq(true)
    end
  end

end