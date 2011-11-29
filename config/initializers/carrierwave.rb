CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAITLGZTVM4Z42ZSNQ',
      :aws_secret_access_key  => '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',
    }
    
  config.fog_directory  = 'bwpimages'
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
      
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

end