import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addCustomer extends StatefulWidget {
  const addCustomer({super.key});

  @override
  State<addCustomer> createState() => _addCustomerState();
}

class _addCustomerState extends State<addCustomer> {
  final formKey = GlobalKey<FormState>();
  String id = '';
  String name = '';
  String adress = '';
  String num_phone = '';

  final Stream<QuerySnapshot> costumer =
      FirebaseFirestore.instance.collection('costumer').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 193, 7),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'رقم الموكل',
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'اسم الموكل',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'عنوان الموكل',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'رقم هاتف الموكل',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            //
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 75, 39),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text(
                  'حفظ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 193, 7),
                    // backgroundColor: Color.fromARGB(255, 6, 75, 39),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
