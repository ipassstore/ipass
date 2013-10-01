require 'mongo'

MONGO_CONFIG = YAML.load_file("#{Rails.root}/config/mongodb.yml")[Rails.env]

#mongo_conn = Mongo::Connection.new(MONGO_CONFIG['host'], MONGO_CONFIG['port'])
#$mongo_vdayu = mongo_conn.db(MONGO_CONFIG['database'])

