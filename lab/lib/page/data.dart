import 'package:lab/main.dart';
import 'package:flutter/material.dart';
import 'package:lab/page/model_data.dart';
import 'package:lab/page/form.dart';
import 'package:lab/page/watch_list_page.dart';


class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('counter'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),        
      body: SingleChildScrollView(
          child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                  children: ListBudget.data.isNotEmpty
                      ? ListBudget.data
                          .map((budget) => Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(.15),
                                      blurRadius: 20.0, 
                                      spreadRadius: 0.0, 
                                      offset: const Offset(
                                        1.0, 
                                        1.0, 
                                      ),
                                    )
                                  ],
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SizedBox(
                                    height: 100,
                                    child: Container(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    budget.judul,
                                                    style: const TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 18),
                                                  ),
                                                ]),
                                            const Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(budget.nominal
                                                    .toString()),
                                                Text(budget.jenis)
                                              ],
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              ))
                          .toList()
                      : [
                          Center(
                              // ignore: prefer_const_literals_to_create_immutables
                              child: Column(children: [
                            const Text(
                              "Belum ada data budget yang ditambahkan",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}