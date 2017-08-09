Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['API_DEVELOPMENT_ID'], ENV['API_DEVELOPMENT_PASS'],
          scope: "email, user_birthday, public_profile", display: "popup",
          client_options: {
            site: 'https://graph.facebook.com/v2.7',
            authorize_url: "https://www.facebook.com/v2.7/dialog/oauth"
          },
          local: "ja_JP",
          info_fields: "email, birthday, gender, first_name, last_name"
end

  # aws_access_key_id: AKIAJQ7HQ2OCBAIMMNZQ
  # aws_secret_access_key: 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
