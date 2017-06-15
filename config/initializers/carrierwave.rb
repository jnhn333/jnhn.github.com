CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV['using-heroku']
  config.aws_acl    = :public_read
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    access_key_id:     ENV['AKIAJO37ZUMDXGTX33QA'],
    secret_access_key: ENV['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']
  }
end if Rails.env == 'production'