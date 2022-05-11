import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/time_page_provider.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<TimePageProvider>(
        create: (context) => TimePageProvider(),
        child: Consumer<TimePageProvider>(
          builder: ((context, provider, child) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                children: [
                    Text("Provider Value :${provider.name}"),
                    SizedBox(
                      height: 100,
                    ),
                    TextButton(
                        onPressed: () {
                          provider.getName("Abdullah Khan");
                        },
                        child: Text("Press for Event"))
                ],
              ),
                  ))),
        ),
      ),
    );
  }
}
