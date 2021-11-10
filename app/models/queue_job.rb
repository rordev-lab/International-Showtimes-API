class QueueJob < ApplicationRecord
  validates :job_id, presence: true
  validates :status, presence: true
  validates :job_name, presence: true
end
