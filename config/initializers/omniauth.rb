OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1662382910737409', '4d357eeeff010dd44407bb88b80f0cb2'
end