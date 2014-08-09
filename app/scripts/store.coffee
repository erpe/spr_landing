#SprLanding.ApplicationAdapter = DS.FixtureAdapter


#$.ajaxSetup
#  crossDomain: true,
#  xhrFields:
#    withCredentials: true



SprLanding.ApplicationAdapter = DS.RESTAdapter.extend
  #host: 'http://www.sprachreisen.org'
  host: 'http://localhost:3000'
  namespace: 'api/v1'
  #Force ember-data to append the `json` suffix
  buildURL: (record, suffix) ->
    return this._super(record, suffix) + ".json"
