# literate-eureka

```Ruby
bundle install
```
To update the ecb currency conversion figures to the latest
```Ruby 
bundle exec rake conversion:populate_store[env]
```

# Start the app
```Ruby
bundle exec rackup -p 3000
```

# Usage
Enter the date in format YYY-MM-DD, enter a number and choose the currencies to convert from and to.
