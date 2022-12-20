import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    products: List<String>.generate(13, (i) => "Product List: $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> products;

  const MyApp({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Flutter List';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index]),
            );
          },
        ),
      ),
    );
  }
}
