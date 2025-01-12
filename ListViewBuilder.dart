import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  final List posts = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
    'Post 6',
    'Post 7',
    'Post 8',
    'Post 9',
    'Post 10',
    'Post 11',
    'Post 12',
    'Post 13',
    'Post 14',
    'Post 15',
    'Post 16',
    'Post 17',
    'Post 18',
    'Post 19',
    'Post 20',
    'Post 21',
    'Post 22',
    'Post 23',
    'Post 24',
    'Post 25',
    'Post 26',
    'Post 27',
    'Post 28',
    'Post 29',
    'Post 30',
    'Post 31',
    'Post 32',
    'Post 33',
    'Post 34',
    'Post 35',
    'Post 36',
    'Post 37',
    'Post 38',
    'Post 39',
    'Post 40',
    'Post 41',
    'Post 42',
    'Post 43',
    'Post 44',
    'Post 45',
    'Post 46',
    'Post 47',
    'Post 48',
    'Post 49',
    'Post 50'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder Example"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: Icon(Icons.post_add),
                    title: Text(posts[index]),
                    subtitle: Text('This is ${(posts[index])}'),
                  ));
            }),
      ),
    );
  }
}
