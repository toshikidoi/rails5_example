require 'rails_helper'

RSpec.feature '書籍一覧', type: :feature do
  background do
    create(:book, title: 'hoge')
    visit books_path
  end

  feature '書籍一覧画面にアクセスする' do
    scenario 'ステータスコードは 200 になる' do
      expect(page).to have_http_status(:success)
    end

    scenario 'Booksという文字が表示されている' do
      expect(page).to have_content 'Books'
    end

    scenario 'hogeという文字が表示されている' do
      expect(page).to have_content 'hoge'
    end
  end
end
