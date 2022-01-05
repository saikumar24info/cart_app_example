// ignore_for_file: prefer_const_constructors

import 'package:cart_app_example/cart_page.dart';
import 'package:cart_app_example/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
        title: Text(
          'Items',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Laptop'),
            leading: Container(
              color: Colors.yellow,
              height: 30,
              width: 30,
            ),
            trailing: TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).add('LapTop');
              },
              child: Text('ADD'),
            ),
          ),
          ListTile(
            title: Text('Cpu'),
            leading: Container(
              color: Colors.green,
              height: 30,
              width: 30,
            ),
            trailing: TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).add('Cpu');
              },
              child: Text('ADD'),
            ),
          ),
          ListTile(
            title: Text('Monitor'),
            leading: Container(
              color: Colors.blue,
              height: 30,
              width: 30,
            ),
            trailing: TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).add('Monitor');
              },
              child: Text('ADD'),
            ),
          ),
          ListTile(
            title: Text('Desk'),
            leading: Container(
              color: Colors.pink,
              height: 30,
              width: 30,
            ),
            trailing: TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).add('Desk');
              },
              child: Text('ADD'),
            ),
          ),
          ListTile(
            title: Text('Speakers'),
            leading: Container(
              color: Colors.purple,
              height: 30,
              width: 30,
            ),
            trailing: TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).add('Speaker');
              },
              child: Text('ADD'),
            ),
          ),
          ListTile(
            title: Text('Camera'),
            leading: Container(
              color: Colors.black,
              height: 30,
              width: 30,
            ),
            trailing: TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).add('Camera');
              },
              child: Text('ADD'),
            ),
          ),
        ],
      ),
    );
  }
}
