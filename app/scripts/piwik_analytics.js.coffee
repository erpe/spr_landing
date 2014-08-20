class @PiwikAnalytics
 
  @load: ->
    #console.log('load PA')
    # Piwik Analytics depends on a global _paq array. window is the global scope.
    window._paq = []
    window._paq.push(['setTrackerUrl', PiwikAnalytics.trackerUrl() + '/piwik.php'])
    window._paq.push(['setSiteId', PiwikAnalytics.siteId()])
    window._paq.push(['enableLinkTracking'])

    # Create a script element and insert it in the DOM
    pa = document.createElement("script")
    pa.type = "text/javascript"
    pa.defer = true
    pa.async = true
    pa.src =  PiwikAnalytics.trackerUrl() + '/piwik.js'
    firstScript = document.getElementsByTagName("script")[0]
    firstScript.parentNode.insertBefore pa, firstScript
 
    # If Turbolinks is supported, set up a callback to track pageviews on page:change.
    # If it isn't supported, just track the pageview now.
    if typeof Turbolinks isnt 'undefined' and Turbolinks.supported
      document.addEventListener "page:change", (->
        PiwikAnalytics.trackPageView()
      ), true
    else
      PiwikAnalytics.trackPageView()
 
  @trackPageView: (url) ->
    unless PiwikAnalytics.isLocalRequest()
      #console.log('PA: trackPageView')
      if url
        window._paq.push ["trackPageView", url]
      else
        window._paq.push ["trackPageView"]

  @trackEcommerceView: (sku) ->
    unless PiwikAnalytics.isLocalRequest()
      #console.log('PA: trackEcommerceView')
      window._paq.push(['setEcommerceView', sku])

  @trackGoal: (id, price=0 ) ->
    unless PiwikAnalytics.isLocalRequest()
      #console.log("PA - goal: " + id + " price: " + price )
      window._paq.push(['trackGoal', id, price])

  @addEcommerceItem: (sku, name, category, price) ->
    unless PiwikAnalytics.isLocalRequest()
      #console.log("PA - add ecommerce-item: " + sku + " " + category + " " + name + " " + price )
      window._paq.push(['addEcommerceItem', sku, name, category, parseFloat(price)])

  @trackEcommerceOrder: (order_id, revenue) ->
    unless PiwikAnalytics.isLocalRequest()
      #console.log("PA - trackEcommerceOrder: " + order_id + " " +  parseFloat(revenue))
      window._paq.push(['trackEcommerceOrder', order_id, parseFloat(revenue)])

  @trackEcommerceCartUpdate: (sum) ->
    unless PiwikAnalytics.isLocalRequest()
      #console.log("PA - trackEcommerceCartUpdate: " + parseFloat(sum))
      window._paq.push(['trackEcommerceCartUpdate', parseFloat(sum)])

  @isLocalRequest: ->
    if PiwikAnalytics.documentDomainIncludes "localhost"
      return true
    if PiwikAnalytics.documentDomainIncludes('127.0.0.1')
      return true
    if PiwikAnalytics.documentDomainIncludes('staging')
      return true
 
  @documentDomainIncludes: (str) ->
    document.domain.indexOf(str) isnt -1

  @status: ->
    window._paq
  # your piwik-site-id here
  @siteId: ->
    "42"

  @trackerUrl: ->
    proto = ''
    if document.location.protocol is 'https://'
      proto = 'https://'
    else
      proto = 'http://'
    # your host here: 
    proto + "stats.example.com"

PiwikAnalytics.load()
