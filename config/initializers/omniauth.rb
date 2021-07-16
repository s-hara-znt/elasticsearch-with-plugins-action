Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "d6eea920ce7e7de20320", "d23f8ab793bbee7afa2262a143f99e4371ce3554"
  end
end