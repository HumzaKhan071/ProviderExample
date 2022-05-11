import 'package:flutter/material.dart';
import 'package:provide_example/pages/second_page.dart';
import 'package:provider/provider.dart';

import '../providers/time_page_provider.dart';
import 'first_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var timePageProvider =
        Provider.of<TimePageProvider>(context, listen: false);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            timePageProvider.updateWidget();
          },
          child: Icon(Icons.add),
        ),
        body: Consumer<TimePageProvider>(
            builder: ((context, provider, child) =>
                provider.change ? SecondPage() : FirstPage())));
  }
}
