# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todogame_session',
  :secret      => '41e38a63311efb8a3a54aa1273538ae750c35ea04c7b892b4641c9c82051d91b2d0295eb6a166e2e0f0a86d2ecd75a9970372a65b657a4a70e7d029a06b34ace'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
