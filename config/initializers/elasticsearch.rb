require 'kaminari' # preload

Elasticsearch::Model.client = Elasticsearch::Client.new trace: Rails.env.development?
