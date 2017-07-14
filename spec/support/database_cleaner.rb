RSpec.configure do |config|
  # suite: RSpecコマンドでテストを実行する単位
  # all:  各テストファイル(xxx_spec.rb)単位
  # each: 各テストケース(it)単位
  config.before(:suite) do
    DatabaseCleaner.clean_with :truncation  # テスト開始時にDBをクリーンにする
  end

  # js以外のテスト時は通常のtransactionでデータを削除する
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  # jsのテスト時はtruncationで削除する
  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.after(:all) do
    DatabaseCleaner.clean_with :truncation # all時にDBをクリーンにする
  end
end
