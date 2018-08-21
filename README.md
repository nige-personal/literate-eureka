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
The coordinates for Bristol are set as default. Replace with whatever latitude and longitude you like.
