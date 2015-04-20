root = exports ? this

root.show_random_alert = () ->
  strings = ["Norwegian:  Du har blitt varslet", "Swedish:  Du har varnats", "Finnish:  Olet ollut varoitettu"]
  alert(strings[Math.floor(Math.random() * strings.length)])