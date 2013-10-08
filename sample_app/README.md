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

