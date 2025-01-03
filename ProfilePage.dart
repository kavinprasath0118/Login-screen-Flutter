import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Profile", style: TextStyle(
          //color: Colors.white
        ),
      ),
      centerTitle: true,
      // backgroundColor: Colors.deepPurple,
    ),

    body: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/peakpx.jpg'),
          ),

          SizedBox(height: 16),

          Text(
            "Kavinprasath S",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),

          Text(
            "Vigilante", 
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),

          SizedBox(height: 16),

          Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email", style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("skavinprasath@gmail.com"),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.phone),
              title: Text("Phone", style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("+91 98765 43210"),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.phone),
              title: Text("Skills", style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Flutter"),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.location_on),
              title: Text("Location", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Bangalore, India"),
            ),
          )

        ],
      ),
    ),
   );
  }
}


