# Wellgiving blog

A Ruby on Rails application based on Rails (7.0.8). A blog app to allow users to post their accomplishments within fitness/health-based charity challenges.

## Functionality

- The app contains User Authentication using the Devise gem.
- The app contains CRUD components allowing users to post, delete, edit their own blogs, as well as view and clap all blogs.
- The app contains Search Filtering and Sorting using the Ransack gem.

## Running the Application

- Clone the repo.
- Navigate to the correct folder using "cd (your-path)/well-giving-blog".
- Run "bundle install" to install any dependencies/gems in the gemfile.
- Ensure you have postgreSQL installed on your local machine and run "brew services start postgresql" to start a postgresql server locally.
- Run "rails s" or "./bin/dev" to run the application locally.
- Post your journey, or support others while they stay active and help others!

## Improvements to be made/what I would change

- Tailwindcss hindered me greatly during the process here. I could not configure it to work and spent may hours trying. Next time I would stick to the more commonly used Bootstrap or I would have made sure to porperly configure and test the plugin at the start of the development cycle.
- I would like to implement a password recovery system.
- I would also like to implement a comments system and prevent users from clapping/upvoting more than once.


## Here is a showcase of the application


https://github.com/sam98963/well-giving-blog/assets/101294463/3193381c-5f87-4d66-8d94-79e3875a0271




