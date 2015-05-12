# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
##/Users/Sana/lighthouse/w2d1/contactlist

## Uncomment to clear the screen before every task
##clearing :on

## Guard internally checks for changes in the Guardfile and exits.
## If you want Guard to automatically start up again, run guard in a
## shell loop, e.g.:
##
##  $ while bundle exec guard; do echo "Restarting Guard..."; done
##
## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of ##"Guardfile"

##ignore %r{^ignored/path/}, /public/
##filter /\.txt$/, /.*\.zip/
##notification :growl_notify

#guard :rspec, cmd: 'bundle exec rspec' do
# Run the tests when the code is updated in /lib
# watch(%r{^lib/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
# Run the test when the test code is updated in /spec
# watch(%r{^spec/(.+)_spec\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
#end

guard :rspec, cmd: 'bundle exec rspec' do
#  watch('./contactlist.rb')       { "testing_contacts.rb"}
#  watch('./contact_database.rb')  { "testing_contacts.rb"}
#  watch('./contact.rb')           { "testing_contacts.rb"}
#  watch('./testing_contacts.rb')  { "testing_contacts.rb"}
#end