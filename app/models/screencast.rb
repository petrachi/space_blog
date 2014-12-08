class Screencast < ActiveRecord::Base
  acts_as_paginables per_page: 5
  acts_as_poolables in: %w{ruby c}
end
