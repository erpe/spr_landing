SprLanding.CatalogsController = Ember.ObjectController.extend(
  
  content: {}
  needs: 'catalogorder'

  actions:
    createCatalogOrder: ->
      console.log("in createCatalogOrder")
      
      cids = []
      
      $("input[name='catalogIds']").each ->
        if this.checked
          alert "pushing: " + this.value
          cids.push(this.value)
      
      id_txt = cids.join(',')
      fields = @get('fields')
      self = this

      if SprLanding.CatalogOrder.valid(fields)
        orga_ids = { catalogIds: "["+id_txt+"]" }
        tmp = $.extend(tmp, fields, orga_ids )
        catalog_order = @get('store').createRecord('catalogOrder', tmp)
        
        onSuccess = (catalog_order) =>
          console.log("in onS")
          @transitionToRoute('catalogorder', catalog_order)

        onError = (catalog_order) =>
          console.log("onError caught: " + catalog_order['errors']['message'])
          @set('showError', catalog_order['errors']['message'])

        catalog_order.save().then(onSuccess, onError)
      else
        console.log("Validation failed...")
        @set('showError', true)
)
