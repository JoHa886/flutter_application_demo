import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/providers/user_provider.dart';
import 'package:flutter_application_demo/routes/index.dart';
import 'package:flutter_application_demo/utils/global.dart';
import 'package:provider/provider.dart';

void main() {
  //初始化路由
  FluroRouter router = FluroRouter();
  Routes.configureRoutes(router);
  Global.router = router;
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: UserProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: const Index(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Global.router.generator,
      initialRoute: "/",
    );
  }
}
