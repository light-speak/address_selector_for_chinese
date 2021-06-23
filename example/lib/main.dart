import 'package:address_selector_for_chinese/index.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InkWell(
        child: Text('打开地址选择器'),
        onTap: () {
          showMaterialModalBottomSheet(
            context: context,
            builder: (BuildContext context) => AddressSelector(
              onSelected: (Result result) {
                print(result);
              },
              title: '选择地址',
              selectedColor: Colors.red,
              unselectedColor: Colors.black,
            ),
          );
        },
      ),
    );
  }
}
