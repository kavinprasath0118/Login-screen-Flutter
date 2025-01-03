import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final String email;
  final String password;

  const HomePage({super.key, required this.email, required this.password});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle:  Text('$email'),
              ),
            ),

            const SizedBox(height: 16),

           Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('$password'),
            ),
           ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
