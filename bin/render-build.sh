set -o errexit

bundle install
bundle execr rails assets:precompile
bundle exec assets:clean
