import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lab/model/watch_list.dart';
import 'package:lab/main.dart';
import 'package:lab/page/form.dart';
import 'package:flutter/material.dart';
import 'package:lab/page/watch_list_detail.dart';
import 'package:lab/page/data.dart';



class MyWatchListPage extends StatefulWidget {
    const MyWatchListPage({Key? key}) : super(key: key);

    @override
    MyWatchListState createState() => MyWatchListState();
}

class Details {
    static late Fields _test;
    static Fields get test => _test;
}

class MyWatchListState extends State<MyWatchListPage>{

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
      body: FutureBuilder(
        future: fetchMyWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                  children: const [
                      Text(
                      "Belum ada film yang di tonton"
                      ),
                      SizedBox(height: 10),
                  ],
                );
            } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index)=> Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Details._test = snapshot.data![index].fields;
                              Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const MyWatchListDetails()),
                                    );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:[
                                Text(
                                  "${snapshot.data![index].fields.title}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                               const SizedBox(
                                height: 1,
                               ),
                              ],
                            ),
                          ),
                        ],
                    ),
                  )
                );
            }
          }
        }
      )
    );
  }

  Future<List<WatchList>> fetchMyWatchList() async {
        var url = Uri.parse('https://tugas-2-syifa.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        List<WatchList> listMyWatchList = [];
        for (var d in data) {
          if (d != null) {
              listMyWatchList.add(WatchList.fromJson(d));
          }
        }

        return listMyWatchList;
    }
}