SprLanding = window.SprLanding = Ember.Application.create(
  {
    LOG_TRANSITION: true,
    LOG_ACTIVE_GENERATION: true
  }
)


SprLanding.testWord = "a testword"
SprLanding.dummyCatalogs =  [
  {
    id: 1,
    organisation_name: 'Foo',
    logo_url: "http://lorempixel.com/50/50/business"
  },
  {
    id: 2,
    organisation_name: 'Bar',
    logo_url: "http://lorempixel.com/50/50/business"
  },
  {
    id: 3,
    organisation_name: 'Baz',
    logo_url: "http://lorempixel.com/50/50/business"
  },
  {
    id: 4,
    organisation_name: 'Fnord',
    logo_url: "http://lorempixel.com/50/50/business"
  }
]

# Order and include as you please.
require 'scripts/controllers/*'
require 'scripts/store'
require 'scripts/models/*'
require 'scripts/routes/*'
require 'scripts/components/*'
require 'scripts/views/*'
require 'scripts/router'
