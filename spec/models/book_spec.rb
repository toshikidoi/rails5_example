require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '#say_san' do
    let(:book) { create(:book) }

    subject { book.say_san }

    it '自身のtitleに「さん」を追加した文字列を返す' do
      expect(subject).to eq('MyStringさん')
    end
  end
end
