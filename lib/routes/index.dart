import 'package:fluro/fluro.dart';
import 'package:flutter_application_demo/routes/routes_handler.dart';

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define("/", handler: indexHandler);
    router.define("/login", handler: loginHandler);
    router.notFoundHandler = notFoundHandler;
  }
}
