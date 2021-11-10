class CreateQueueJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :queue_jobs do |t|
      t.string :job_id
      t.string :status
      t.string :priority
      t.string :job_name

      t.timestamps
    end
  end
end
