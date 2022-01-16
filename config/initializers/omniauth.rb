Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET,  
 
  {
      prompt: 'select_account',
      image_aspect_ratio: 'square',
      image_size: 50
    }

    
end