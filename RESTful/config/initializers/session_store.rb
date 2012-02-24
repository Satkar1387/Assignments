# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_assignment2_session',
  :secret      => '31d958fcbe3290de20f8697b71dff3a688a230f70fa915dcb59a22ea4199b7833f5731e9bb1cc1e5b1491ae897d1510867baea1e3a6195132094ca24007328c7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
