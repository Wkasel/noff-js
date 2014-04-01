window.noff = {
  init: function() {
    return !this.testFF() && this.display();
  },
  testFF: function() {
    if (window.location.hash !== 'yesff') {
      return navigator.userAgent.toLowerCase().indexOf("firefox") > -1;
    }
  },
  display: function() {
    var body, msg, noh8;
    msg = ["<h1>A message from the internet</h1>" + "<p>Hello there, Mozilla Firefox user. Pardon this interruption of your web broswsing experience.</p>" + "<p>Mozilla&apos;s new CEO, Brendan Eich, is an opponent of equal rights for gay couples. We would therefore prefer that our users not use Mozilla software to access our site.</p> " + "<p>If you want to keep using Firefox, the link at the bottom will take you through to the site.</p>" + "<p>However, we urge you to consider different software for accessing OkCupid.</p>" + "<p><a href=\"#yesff\" onclick=\"noff.hide()\">"];
    body = document.getElementsByTagName('body')[0];
    noh8 = document.createElement('div');
    noh8.setAttribute("id", "noFF_Banner");
    noh8.innerHTML = msg.join();
    return body.insertBefore(noh8, body.firstChild);
  },
  remove: function() {
    return document.getElementById('noFF_Banner').remove();
  }
};

document.onreadystatechange = function() {
  if (document.readyState === "complete") {
    return noff.init();
  }
};
