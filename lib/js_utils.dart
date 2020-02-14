import 'dart:js' as js;

/// @description: 从 dart 里面 直接调用 js 方法
/// @param {method} 方法名
/// @param {[List args]} 可选参数
/// @return:
callJsMethod(String method, [List args]) {
  js.context.callMethod(method, args);
}

/// @description: 从 dart 里面 直接调用 js 方法 并且传递一个 callback 过去 以便于回调
/// @param {method} 方法名
/// @param {callback} 回调函数
/// @param {[List args]} 可选参数
/// @return:

callJsWithCallback(String method, Function callback, [List args]) {
  js.context.callMethod(method, [js.allowInterop(callback), args]);
}

/// @description: 将 dart 方法设置成 js 方法 以供调用
/// @param {functioname} 设置的函数名称 js 那边调用
/// @param {callback} 设置的函数
/// @return:
setJsMethod(String functioname, Function callback) {
  print("setjsmethod $functioname");
  js.context[functioname] = callback;
}
