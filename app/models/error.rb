class Error < ApplicationRecord

  def self.all_types
    Errors.select(:error_type).distinct
  end
end
