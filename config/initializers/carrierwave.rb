require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'

CarrierWave.configure do |config|
  config.ignore_integrity_errors = false
  config.ignore_processing_errors = false
  config.ignore_download_errors = false
end

if Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = true
    config.validate_download = false
  end
end
