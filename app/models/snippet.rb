class Snippet < ActiveRecord::Base
  acts_as_taggable
  include PgSearch
  pg_search_scope :mysearch,
                  :against => [:author, :quote],
                  using: {
                    tsearch: {dictionary: "english"}
                  }


end
