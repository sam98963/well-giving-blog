# wellgiving blog

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
