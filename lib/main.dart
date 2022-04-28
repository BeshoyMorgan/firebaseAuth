import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/pages/add_product.dart';
import './controller/my_provider.dart';
import 'ui/pages/home.dart';
import 'ui/pages/details.dart';
import 'ui/pages/update.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  var _ref = FirebaseDatabase.instance.ref().child('product');

  runApp(
    ChangeNotifierProvider<MyProvider>(
      create: (_) => MyProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Controls',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        'add_product_screen': (context) => AddProduct(),
        'details': (context) => DetailsScreen(),
        'update': (context) => UpdateScreen(),
      },
    );
  }
}
