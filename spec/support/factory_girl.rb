RSpec.configure do |config|
  # FactoryGirl でレシーバ無しでFactoryGirlのメソッド呼び出しを可能にする
  # Ex: FactoryGirl.create(:post) => create(:post)
  config.include FactoryGirl::Syntax::Methods
end
