= mypath

mypath takes a path and prints the corresponding local path. Works for gems and for paths corresponding to your current working directory.

== Examples

    $ mypath "[GEM_ROOT]/gems/resque-1.10.0/lib/resque/worker.rb:157:in `perform'"
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/resque-1.10.0/lib/resque/worker.rb

    # In the next case, the following was in the osx clipboard:
    # lib/synchronizable_model.rb:51:in `perform'
    # lib/synchronizable_model.rb:70:in `replicate'
    # lib/synchronizable_model.rb:22:in `remote_update'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:178:in `send'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:178:in `evaluate_method'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:166:in `call'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:93:in `run'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:92:in `each'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:92:in `send'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:92:in `run'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:276:in `run_callbacks
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/callbacks.rb:344:in `callback'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/callbacks.rb:251:in `create_or_update'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/base.rb:2577:in `save_without_validation'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/validations.rb:1090:in `save_without_dirty'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/dirty.rb:79:in `save_without_transactions'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:229:in `send'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:229:in `with_transaction_returning_status'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/connection_adapters/abstract/database_statements.rb:136:in `transaction'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:182:in `transaction'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:228:in `with_transaction_returning_status'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:196:in `save'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:208:in `rollback_active_record_state!'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/transactions.rb:196:in `save'
    # [GEM_ROOT]/gems/activerecord-2.3.10/lib/active_record/base.rb:2661:in `update_attribute'
    # app/models/user_session.rb:53:in `reset_record_last_request_at'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:178:in `send'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:178:in `evaluate_method'
    # [GEM_ROOT]/gems/activesupport-2.3.10/lib/active_support/callbacks.rb:166:in `call'

    $ pbpaste | mypath
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activesupport-2.3.10/lib/active_support/callbacks.rb
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.10/lib/active_record/callbacks.rb
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.10/lib/active_record/base.rb
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.10/lib/active_record/validations.rb
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.10/lib/active_record/dirty.rb
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.10/lib/active_record/transactions.rb
    /Users/daniel/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.10/lib/active_record/connection_adapters/abstract/database_statements.rb


== Contributing to mypath
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2011 Daniel Higginbotham. See LICENSE.txt for
further details.

