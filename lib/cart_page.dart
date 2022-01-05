// ignore_for_file: prefer_const_constructors

import 'package:cart_app_example/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cart screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart Items'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: ListView.builder(
          itemCount: Provider.of<Data>(context, listen: false).items.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                title: Text(Provider.of<Data>(context, listen: false).items[i]),
                trailing: TextButton(
                  onPressed: () {
                    Provider.of<Data>(context, listen: false).remove('');
                  },
                  child: Text('Remove'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
