import 'package:flutter/material.dart';
import 'package:provide_example/pages/app_page.dart';
import 'package:provide_example/pages/detail_page.dart';
import 'package:provide_example/pages/home_page.dart';
import 'package:provide_example/pages/timer_page.dart';
import 'package:provide_example/providers/time_page_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimePageProvider>(
      create: (context) => TimePageProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: AppPage(),
      ),
    );
  }
}
