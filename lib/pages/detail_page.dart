import 'package:flutter/material.dart';
import 'package:provide_example/providers/detail_page_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ChangeNotifierProvider<DetailPageProvider>(
          create: (context) => DetailPageProvider(),
          child: Consumer<DetailPageProvider>(
            builder: ((context, provider, child) {
              return Column(
                children: [
                  Text(
                    provider.Dob,
                    style: TextStyle(
                        color: (provider.isDOBCorrect == true)
                            ? Colors.green
                            : Colors.red),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter your DOB"),
                    onChanged: (val) {
                      provider.checkDOB(int.parse(val));
                    },
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
