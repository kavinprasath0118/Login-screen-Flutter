import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen")
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            Text("Login",
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold
            ),
            ),
            //TextField(keyboardType: TextInputType.emailAddress,)

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Form(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft, // Align text to the left
                      padding: EdgeInsets.only(left: 20.0), // Optional: Add some padding from the left
                      child: Text("Email or phone number",
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.bold,
                        ),
                       ),
                      ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Type here..',
                          border: OutlineInputBorder(),
                        ),
                      
                        onChanged: (String value){
                                    
                        },
                        validator: (value){
                           return value!.isEmpty ? "Please enter email" : null;
                        },
                      ),
                    ),
                    
                    SizedBox(height: 15),

                    Container(
                      alignment: Alignment.centerLeft, // Align text to the left
                      padding: EdgeInsets.only(left: 16.0), // Optional: Add some padding from the left
                      child: Text("Password",
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.bold,
                        ),
                       ),
                      ),
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Type here..',
                              border: OutlineInputBorder(),
                            ),
                            
                            onChanged: (String value){
                                        
                            },
                            validator: (value){
                               return value!.isEmpty ? "Please enter password" : null;
                            },
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 30),
                    Text("Forget Password?",
                    style: TextStyle(color: Colors.grey),
                    ),

                    SizedBox(height: 10),
                   Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 130),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepPurple
                      ),
                      child: Center(
                        child: Text("Login", 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 17, 
                          fontWeight: FontWeight.bold),
                        )
                      ),
                   ),
                  ],
               )
              ),
            )
          ],
        ),
    ),
    );
  }
}





