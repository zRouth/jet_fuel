require "honey/i/shrunk/the/url/version"

module Honey
  module I
    module Shrunk
      module The
        module Url
          class Railtie < Rails::Railtie
          # for example, if you want to extend ViewHelpers
            initializer 'creating_a_gem.view_helpers' do
            ActionView::Base.send :include, ViewHelpers
              end
            end
          end
        end
      end
    end
  end
end
