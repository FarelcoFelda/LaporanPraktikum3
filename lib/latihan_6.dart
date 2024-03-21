import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Data dummy berupa list map yang berisi nama, foto, dan hobi
  final List<Map<String, String>> data = [
    {
      'nama': 'Farelco Felda',
      'foto': 'assets/foto farel.jpg',
      'hobi': 'Basket'
    },
    {
      'nama': 'Dimas Satrio',
      'foto': 'assets/dimas.jpg',
      'hobi': 'Bermain musik'
    },
    {'nama': 'Fendy Rahmawan', 'foto': 'assets/fendy.jpg', 'hobi': 'Badminton'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder Farelco'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return buildCard(data[index]);
          },
        ),
      ),
    );
  }

  // Method untuk membangun widget Card
  Widget buildCard(Map<String, String> personData) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(personData['foto']!),
        ),
        title: Text(personData['nama']!),
        subtitle: Text('Hobi: ${personData['hobi']}'),
        trailing: Icon(Icons.more_vert), // Icon titik tiga
      ),
    );
  }
}
