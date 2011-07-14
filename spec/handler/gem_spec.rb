require 'spec_helper'

describe MyPath::Handler::Gem do
  describe ".can_handle?" do
    it "handles paths that contain /gems/" do
      MyPath::Handler::Gem.can_handle?("/srv/ruby/gems/1.8/mypath-0.0.0/lib/mypath.rb").should be_true
    end
  end
end