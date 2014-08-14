SprLanding = window.SprLanding = Ember.Application.create(
  LOG_TRANSITION: true,
  LOG_ACTIVE_GENERATION: true
)

Ember.RadioButton = Ember.View.extend(
  tagName: "input",
  type: "radio",
  attributeBindings: [ "name", "type", "value", "checked:checked:" ]
  click:  ->
     @set("selection", this.$().val())

  checked: ( ->
    return @get("value") == this.get("selection")
  ).property()
)

# Order and include as you please.
require 'scripts/controllers/*'
require 'scripts/store'
require 'scripts/models/*'
require 'scripts/routes/*'
require 'scripts/components/*'
require 'scripts/views/*'
require 'scripts/router'
