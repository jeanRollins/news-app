import 'package:flutter/material.dart';

import 'News.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> names = ["Noticia 1", "Noticia 2", "Noticia "];

  News today = News();

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 214, 214, 214),
            title: const Center(
              child: Text(
                'News App',
                style: TextStyle(color: Color.fromARGB(255, 90, 90, 90)),
              ),
            )),
        //Columns van quedando hacia abajo
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: const TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search News...',
                  ),
                ),
                margin: const EdgeInsets.all(10.0)),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                final item = names[index];
                return Container(
                  child: Text(item),
                );
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => today.showResource(),
        ),
        //drawer: Drawer(),
        //endDrawer: Drawer(),
        backgroundColor: Color.fromARGB(255, 214, 214, 214),
      ),
    );
  }
}


/*
 child: Container(
            child: const TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search News...',
              ),
              
            ),
          ),
          
          margin: const EdgeInsets.all(10.0), */
