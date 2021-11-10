require 'rails_helper'

RSpec.describe QueueJob, type: :model do

  context 'validation test' do
    it 'job id should be present' do
      queue = QueueJob.new(job_id: nil, status: 'Waiting', job_name: "Veeren", priority: nil).save
      expect(queue).to eq(false)
    end

    it 'status should be present' do
      queue = QueueJob.new(job_id: "12244214124", status: nil, job_name: "Veeren", priority: nil).save
      expect(queue).to eq(false)
    end

    it 'job name should be present' do
      queue = QueueJob.new(job_id: "12244214124", status: "Waiting", job_name: nil, priority: nil).save
      expect(queue).to eq(false)
    end

    it 'valid data should be save' do
      queue = QueueJob.new(job_id: "12244214124", status: "Waiting", job_name: "Veeren", priority: nil).save
      expect(queue).to eq(true)
    end
  end

end