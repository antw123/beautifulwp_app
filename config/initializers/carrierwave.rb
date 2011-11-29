CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.s3_access_key_id = ENV['AKIAITLGZTVM4Z42ZSNQ']
  config.s3_secret_access_key = ENV['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']
  config.s3_bucket = ENV['bwpimages']
end