belongsTo = DS.belongsTo
hasMany = DS.hasMany
attr = DS.attr

SprLanding.CatalogOrder = DS.Model.extend
#SprLanding.CatalogOrder = Em.Oject.extend
#

    firstname: attr('string')
    
    lastname: attr('string')
    
    city: attr('string')
    
    email: attr('string')
    
    street: attr('string')
    
    nr: attr('string')
    
    zip: attr('string')

    countryCode: attr('string')
    
    dateOfBirth: attr('string')
    
    catalogIds: attr('string')

    termsAndConditions: attr('boolean')
    

# probably should be mixed-in...
SprLanding.CatalogOrder.reopen
  # certainly I'm duplicating something that exists elsewhere...
  attributes: ( ->
    model = this
    Em.keys(@get('data')).map (key)->
      Em.Object.create(model: model, key: key, valueBinding: 'model.' + key)
  ).property()

# delete below here if you do not want fixtures
SprLanding.CatalogOrder.FIXTURES = [

  {
    id: 0,
    firstname: 'foo',
    lastname: 'foo',
    city: 'foo',
    email: 'foo',
    street: 'foo',
    nr: 'foo',
    zip: 'foo',
    date_of_birth: 'foo',
    catalog_ids: 'foo',
  },

  {
    id: 1,
    firstname: 'foo',
    lastname: 'foo',
    city: 'foo',
    email: 'foo',
    street: 'foo',
    nr: 'foo',
    zip: 'foo',
    date_of_birth: 'foo',
    catalog_ids: 'foo',
  },

]
