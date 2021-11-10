class CreateMovieJob < ApplicationJob
  # include Sidekiq::Worker
  queue_as :default

  before_enqueue do |job|
    pt = @priority == 1 ? "High" : @priority == 75 ? "Low" : @priority==11 ? "Default" : ""
    QueueJob.create(job_id: job_id, job_name: arguments.first[:title], status: "Waiting", priority: pt)
  end

  def perform(movie_data)
    qjob = QueueJob.find_by_job_id(job_id)
    qjob.update(status: "in progress")
    if Movie.create(movie_data)
      qjob.update(status: "done")
    else
      qjob.update(status: "failed")
    end
  end
end
