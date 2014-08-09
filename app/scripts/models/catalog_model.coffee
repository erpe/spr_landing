SprLanding.Catalog = DS.Model.extend
  
    organisation_name: DS.attr('string')

    organisation_short: DS.attr('string')
    
    organisation_logo: DS.attr('string')
    
    organisation_logo_url: DS.attr('string')

    url: DS.attr('string')
    

# probably should be mixed-in...
SprLanding.Catalog.reopen
  # certainly I'm duplicating something that exists elsewhere...
  attributes: ( ->
    model = this
    Em.keys(@get('data')).map (key)->
      Em.Object.create(model: model, key: key, valueBinding: 'model.' + key)
  ).property()


# delete below here if you do not want fixtures
SprLanding.Catalog.FIXTURES = [
  {
    id: 0,
    organisation_short: 'one',
    organisation_name: 'Organisaiton One',
    organisation_logo: 'logo',
    organisation_logo_url: "http://lorempixel.com/50/50/business",
    url: '/bar/baz/foo'
  },
  {
    id: 1,
    organisation_short: 'two',
    organisation_name: 'Organisation Two',
    organisation_logo_url: "http://lorempixel.com/50/50/business",
    url: 'bar/bar/foo'
  },
]
