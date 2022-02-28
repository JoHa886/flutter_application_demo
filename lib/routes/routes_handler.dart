import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_application_demo/pages/index.dart';
import 'package:flutter_application_demo/pages/login/index.dart';
import 'package:flutter_application_demo/pages/not_found/index.dart';

var indexHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return Index();
});

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return Login();
});

var notFoundHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return NotFound();
});
