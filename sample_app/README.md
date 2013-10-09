# Ruby on Rails Tutorial: sample application

This is the sample application for
the [*Ruby on Rails Tutorial*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

## Key notes

### Undoing things (Box 3.2)


#### Controllers

```irb
rails generate controller Foo bar:string baz:integer
rails destroy controller Foo
```

```ruby
get 'static_pages/about'
```
* does not create name routes. Instead, use this:

``` ruby
match '/about', to: 'static_pages#about',  via: 'get'
```

#### Database

```irb
rake db:migrate
rake db:rollback
rake db:migrate VERSION=0 # go all the way back
```


### Test-Driven Development

* Read, Green, Refactor


```irb
rails g integration_test static_pages
```
* Creates spec/requests/static_pages_spec.rb


### Guard & Spork

* Guard gem automate running test - prevents switching to the command line & running test by hand
* Spork prevents the several seconds start time using rspec (rspec reloads the entire Rails env). Spork loads the env once and maintains pool of processes for future tests
* See section 3.6 for integration between Guard and Spork


### Nice short key

#### Sublime Text

* Command-Shift-R: single test (if in it or describe block)
* Command-Shift-E: run the last test(s)
* Command-Shift-T: run all test in current file
