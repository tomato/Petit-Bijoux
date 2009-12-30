# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pb_session',
  :secret      => '45b82974c7dad5c04b9aaf647871b71e7380ee810dba11628b5e5f55b303fcdee4290c41fc01dada2e64638e5c14e67907e917238ef1df3c1f943e3283e4e07a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
