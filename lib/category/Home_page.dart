import 'package:app_law/Screen/LoginScreen.dart';
import 'package:app_law/category/Client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firstPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 171, 135, 26),
        title: Center(
          child: Text(
            "Lawyer\s Office Dz",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: GridView(
            children: [
              //home
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => firstPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 6, 75, 39),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 50,
                        color: Color.fromARGB(255, 255, 193, 7),
                      ),
                      Text(
                        'الرئيسية',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              // Search

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 6, 75, 39),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 50,
                      color: Color.fromARGB(255, 255, 193, 7),
                    ),
                    Text(
                      'البحث',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              // archiv
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 6, 75, 39),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.archive,
                      size: 50,
                      color: Color.fromARGB(255, 255, 193, 7),
                    ),
                    Text(
                      'الارشيف',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              //الموكلين
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CustomerPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 6, 75, 39),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people_alt,
                        size: 50,
                        color: Color.fromARGB(255, 255, 193, 7),
                      ),
                      Text(
                        'الموكلين',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),

              /// issues
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 6, 75, 39),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder_copy_sharp,
                      size: 50,
                      color: Color.fromARGB(255, 255, 193, 7),
                    ),
                    Text(
                      'القضايا',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              //
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 6, 75, 39),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_sharp,
                      size: 50,
                      color: Color.fromARGB(255, 255, 193, 7),
                    ),
                    Text(
                      'المحاضر',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 6, 75, 39),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 50,
                      color: Color.fromARGB(255, 255, 193, 7),
                    ),
                    Text(
                      'فاتورة',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              // Search

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 6, 75, 39),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.outbound,
                        size: 50,
                        color: Color.fromARGB(255, 255, 193, 7),
                      ),
                      Text(
                        'الخروج',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ),
      ),
    );
  }
}
