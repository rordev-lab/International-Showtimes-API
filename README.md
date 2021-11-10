For API auth you can pass HEADER = password

#For task 1
Add movie data in create POST request
hit: http://localhost:3000/api/v1/movies#create

For fetch all jobs GET request
hit: http://localhost:3000/api/v1/queue_jobs

In create_movie_job.rb file:
before_enqueue - it will create a QueueJob and store the priority basis of priority value.
perform - find QueueJob and update it status in processing and if movie create return true QueueJob update status Done otherwise update status fail.


#For task 2
movie title is saved in database

We can create movie from command line directly
Movie.create(title: "Veeren")

We can also create movie using job in command line
CreateMovieJob.perform_later(Movie.last)

#For task 4
For API auth you can pass HEADER = password

#For task 6
Added Movie model rspec
Added Movie controller rspec
Added QueueJob model rspec
Added QueueJob controller rspec
test all testcase cmd: bundle exec rspec
