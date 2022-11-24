import 'package:lab/model/watch_list.dart';
import 'package:lab/main.dart';
import 'package:lab/page/form.dart';
import 'package:lab/page/data.dart';
import 'package:flutter/material.dart';
import 'package:lab/page/watch_list_page.dart';

class MyWatchListDetails extends StatefulWidget {
    const MyWatchListDetails({Key? key}) : super(key: key);

    @override
    State<MyWatchListDetails> createState() => MyWatchListStateDetails();
}

class MyWatchListStateDetails extends State<MyWatchListDetails> {
    Fields currentFields = Details.test;
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
        body: Column(
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:Align(
                      alignment: Alignment.center,
                      child: Column(
                          children: <Widget>[
                            Text(
                              currentFields.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Release Date: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: currentFields.releaseDate),
                          ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Rating: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: currentFields.rating.toString()),
                          ]
                        ),
                      ),
                    ),
                    if(Watched.DONE == true)...[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Status: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text:'watched'),
                            ]
                          ),
                        ),
                      ),
                    ]
                    else ...[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          children: <TextSpan>[
                            TextSpan(
                            text: 'Status: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'not watched'),
                          ]
                        ),
                      ),
                    ),
                  ],
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Review: ", 
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      currentFields.review,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ]
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [TextButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () { 
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),
              ],
              ),
            ),
          ],
        ),
      );
    }
}

