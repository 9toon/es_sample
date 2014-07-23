class Restaurant < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  index_name "#{Rails.env}-#{Rails.application.class.to_s.downcase}-#{self.name.downcase}#{ENV['TEST_ENV_NUMBER']}"

  mapping do
    indexes :id, type: 'string', index: 'integer'
    indexes :name , type: 'string', analyzer: 'kuromoji'
    indexes :name_kana , type: 'string', analyzer: 'kuromoji'
    indexes :name_alphabet , type: 'string', analyzer: 'ngram_analyzer'
    indexes :address, type: 'string', analyzer: 'kuromoji'
  end

  def as_indexed_json(options={})
    { 'id' => id,
      'name' => name,
      'name_kana' => name_kana,
      'name_alphabet' => alphabet,
      'address' => address,
    }
  end

end
