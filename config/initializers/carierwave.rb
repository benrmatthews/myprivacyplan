CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIXOHHAOD62V2FSPA',       # required
    :aws_secret_access_key  => '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',  # required
 
  }
  config.fog_directory  = 'myprivacyplanbucket'                  # required
end