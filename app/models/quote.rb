class Quote < ApplicationRecord
    belongs_to :company

    validates :name, presence: true
    
    scope :ordered, -> { order(id: :desc) }
    # after_create_commit -> { broadcast_prepend_to "quotes" }
    # after_update_commit -> { broadcast_replace_to "quotes" }
    # after_destroy_commit -> { broadcast_remove_to "quotes" }

    # Making broadcasting asynchronous
    # after_create_commit -> { broadcast_prepend_later_to "quotes" }
    # after_update_commit -> { broadcast_replace_later_to "quotes" }
    # The "broadcast_remove_later_to" method does not exist because as the quote gets deleted from the database

    # syntactic sugar    
    broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend

end
