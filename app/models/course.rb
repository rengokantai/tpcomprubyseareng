class Course < ActiveRecord::Base
    include ElasticSearch::Model
    include ElasticSearch::Model::Callbacks
end