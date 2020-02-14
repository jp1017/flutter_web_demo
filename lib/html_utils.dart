import 'dart:html';

/// @description: 跳转某个 weburl
/// @param {url}
navigation(String url) {
  document.window.location.href = url;
}

Map readCookie(String cookies) {
  var cookies = document.cookie;
  var cookie = Map();
  cookies.split(';').forEach((e) {
    var k = e.indexOf('=');
    if (k > 0) {
      cookie[Uri.decodeComponent(e.substring(0, k)).trim()] =
          Uri.decodeComponent(e.substring(k + 1)).trim();
    }
  });

  return cookie;
}