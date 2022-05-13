import 'package:flutter/material.dart';
import 'package:provide_example/providers/api_view_provider.dart';
import 'package:provider/provider.dart';

import '../model/datamodel.dart';
import '../util/dart_model_util.dart';

class ApiView extends StatelessWidget {
  const ApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiViewProvider>(
      builder: ((context, provider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              List<DataModel> data = await DataUtil().getData();
              provider.updateDataModel(data);
            },
            child: Icon(Icons.read_more_sharp),
          ),
          body: Container(
            child: provider.datalist.isEmpty
                ? Center(child: Text("There is No Data"))
                : ListView.builder(
                    itemCount: provider.datalist.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text("${provider.datalist[index].title}"),
                        leading: Text("${provider.datalist[index].id}"),
                      );
                    })),
          ),
        );
      }),
    );
  }
}
