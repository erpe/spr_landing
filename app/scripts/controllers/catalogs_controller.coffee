SprLanding.CatalogsController = Ember.ObjectController.extend(
  
  content: {}

  needs: 'catalogorder'

  #fields: null

  actions:
    createCatalogOrder:  ->

      console.log("in createCatalogOrder")
      #cids = Ember.Set.create()

      cids = []
      $("input[name='catalogIds']").each ->
        if this.checked
          alert "pushing: " + this.value
          cids.push(this.value)
      
      console.log("cids: " + cids)
      id_txt = cids.join(',')
      console.log("id_txt: " + id_txt)

      console.log("fields: " + @get('fields').lastname)
      fields = @get('fields')
      orga_ids = { catalogIds: "["+id_txt+"]"}
      tmp = $.extend(tmp, fields, orga_ids )
      console.log("object: " + tmp.catalogIds )

      catalog_order = @get('store').createRecord('catalogOrder', tmp)

      console.log("catalog_order: " + catalog_order)
      #  #catalogIds: "[" + cids.join(',') + "]",
      #  termsAndConditions: true
      #})
      catalog_order.save().then =>
        @transitionToRoute('catalogorder')
      
)
