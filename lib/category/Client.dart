import 'package:app_law/category/addClient.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 193, 7),
        title: !isSearching
            ? Text("الموكلون")
            : TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 6, 75, 39),
                    ),
                    hintText: "بحث...",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 75, 39),
                    )),
              ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearching = !this.isSearching;
              });
            },
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => addCustomer()));
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 6, 75, 39),
        foregroundColor: Color.fromARGB(255, 255, 193, 7),
      ),
    );
  }
}
