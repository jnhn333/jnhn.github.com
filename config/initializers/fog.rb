CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJO37ZUMDXGTX33QA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',             # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'using-heroku'            # required
end