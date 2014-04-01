window.noff =
  init: () ->
    !@testFF() && @display()
  testFF: () ->
    if window.location.hash != 'yesff'
      navigator.userAgent.toLowerCase().indexOf("firefox") > -1
  display: () ->
    # ==========================================
    # = Feel free to tweak this to your liking =
    # ==========================================
    msg = ["<h1>A message from the internet</h1>",
          "<p>Hello there, Mozilla Firefox user. Pardon this interruption of your web broswsing experience.</p>",
          "<p>Mozilla&apos;s new CEO, Brendan Eich, is an opponent of equal rights for gay couples. We would therefore prefer that our users not use Mozilla software to access our site.</p> ",
          "<p>If you want to keep using Firefox, the link at the bottom will take you through to the site.</p>",
          "<p>However, we urge you to consider different software for accessing OkCupid.</p>"]
          
    body = document.getElementsByTagName('body')[0]
    noh8 = document.createElement('div')
    noh8.innerHTML = msg.join()
    body.insertBefore(noh8, body.firstChild)
    
document.onreadystatechange = () ->
  if document.readyState == "complete"
    noff.init()
    