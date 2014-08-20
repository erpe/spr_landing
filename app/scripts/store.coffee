#SprLanding.ApplicationAdapter = DS.FixtureAdapter
#SprLanding.ApplicationAdapter = DS.RESTAdapter.extend
SprLanding.ApplicationAdapter = DS.ActiveModelAdapter.extend

  host: 'http://localhost:3000'
  namespace: 'api/v1'
  
  #Force ember-data to append the `json` suffix
  buildURL: (record, suffix) ->
    return this._super(record, suffix) + ".json"

  pathForType: (type) ->
    decamelized = Ember.String.decamelize(type)
    return Ember.String.pluralize(decamelized)
