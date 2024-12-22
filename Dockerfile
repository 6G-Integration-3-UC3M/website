# Use a Ruby image as the base
FROM ruby:3.1

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs

# Set the working directory
WORKDIR /app

# Copy the Gemfile
COPY Gemfile ./

# Install Jekyll and other dependencies
RUN gem install bundler && bundle install

# Expose port 4000 for the Jekyll server
EXPOSE 4000

# Start the Jekyll server with live reloading
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]
