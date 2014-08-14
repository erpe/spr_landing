#SprLanding.ApplicationAdapter = DS.FixtureAdapter


#DS.attr.transforms.array = {
#  from: (serialized) ->
#    return serialized
#
#  to: (deserialized) ->
#    return deserialized
#  }


SprLanding.ApplicationAdapter = DS.ActiveModelAdapter.extend
#SprLanding.ApplicationAdapter = DS.RESTAdapter.extend

  host: 'http://localhost:3000'
  namespace: 'api/v1'
  
  #Force ember-data to append the `json` suffix
  buildURL: (record, suffix) ->
    return this._super(record, suffix) + ".json"

  pathForType: (type) ->
    decamelized = Ember.String.decamelize(type)
    return Ember.String.pluralize(decamelized)
