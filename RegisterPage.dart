import 'package:flutter/material.dart';
import 'package:loginpage/ProfilePage.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text("Sign up"),
      ),
      body:SingleChildScrollView(
        child:  Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              Container(
                alignment: Alignment.centerLeft, // Align text to the left
                padding: EdgeInsets.only(left: 1.0), // Optional: Add some padding from the left
                child: Text("Full Name",
                style: TextStyle(                 
                  fontSize: 16,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  ),
                ),
            ),

          SizedBox(height: 15),
          
            // Full Name
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Type here..",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.account_circle)
              ),
            ),
            const SizedBox(height: 20),

            Container(
              alignment: Alignment.centerLeft, // Align text to the left
              padding: EdgeInsets.only(left: 1.0), // Optional: Add some padding from the left
              child: Text("Email",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

            SizedBox(height: 15,),

            // Email
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Type here..",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email)
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),

            Container(
              alignment: Alignment.centerLeft, // Align text to the left
              padding: EdgeInsets.only(left: 1.0), // Optional: Add some padding from the left
              child: Text("Phone Number",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

            SizedBox(height: 15,),

            // Phone Number
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Type here..",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone)
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),

            Container(
              alignment: Alignment.centerLeft, // Align text to the left
              padding: EdgeInsets.only(left: 1.0), // Optional: Add some padding from the left
              child: Text("Password",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

            SizedBox(height: 15,),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Type here..",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),

            // Register Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Homepage() 
                    )
                  ); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple
              ),
              child: const Text("Register", 
                style: TextStyle(
                  color: Colors.white,
                ),
             ),
            ),
          ],
        ),
        ),
      )
    )
    );
  }
}
