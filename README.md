#### tpcomprubyseareng
#####1
Gemfile, delete all comments
```
:g:^\s+
```
then add
```
gem 'haml-rails'
gem 'bootstrap-sass'
gem 'pry-rails'
gem 'pry-byebug'
gem 'puma'
```

######2
create scaffold
```
rails g scaffold course title category duration:float published_at:datetime
rake(rails) db:migrate
rails s
```
visit
```
localhost:3000/courses
```
######3
copy file to script/load.rb, then 
```
courses = CSV.read "db/data.csv",col_sep:"|"

courses.each fo |course|
  DB[:course].insert(
    title: course[0],
    category:course[1]
  )
end
```
in project folder, run
```
ruby script/load.rb
```
If failed, ex: failed to add col_sep, run
```
rake db:schema:load
```

#####2
######1 install and conf elasticsesarch
```
bundle --without script
```
list all tasks
```
rake -T
```
```
rake environment elasticsearch:import:all
```
