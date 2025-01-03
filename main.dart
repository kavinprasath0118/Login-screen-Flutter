import 'HomePage.dart';
import 'ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'RegisterPage.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp()
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp>{

  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool _isPasswordVisible = false;

  void _navigateToHomePage(BuildContext context){

    final email = emailController.text.trim();
    final password = passController.text.trim();

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => HomePage(email: email, password: password),
        ),
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter Email and Password")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          title: Text("Login",
          style: TextStyle(
            fontWeight: FontWeight.bold
            ),
          )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Form(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft, // Align text to the left
                      padding: EdgeInsets.only(left: 20.0), // Optional: Add some padding from the left
                      child: Text("Email or Phone number",
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.bold,
                        ),
                       ),
                      ),
                    
                    //Email Text Filed
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Type here..',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          //suffixIcon: Icon(Icons.email)
                        ),
                      
                        onChanged: (String value){
                                    
                        },
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                         }
                          return null;
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
                    
                    //Password Text Field
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: passController,
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              hintText: 'Type here..',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock
                              ),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                  ), onPressed: () { 
                                        setState(() {
                                          _isPasswordVisible = !_isPasswordVisible;
                                        });
                                    },
                                  ),
                                ),
                            validator: (value){
                               return value!.isEmpty ? "Please enter password" : null;
                            },
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 30),
                    
                    //TextButton
                    TextButton(
                      onPressed: () { 
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ForgotPassword(),
                        )
                      ); },
                    child: Text("Forgot Password?")
                    ),

                  SizedBox(height: 10),

                  //Login button
                   ElevatedButton(
                    onPressed: () => _navigateToHomePage(context),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                       ),
                      ),
                    child: const Text("Login", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                   ),

                   SizedBox(height: 30),

                   Text("New User?", style: TextStyle(
                      color: Colors.black,
                    ),
                   ),
                  SizedBox(height: 5),

                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage(),
                    )
                      );
                   },
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                       ),
                      ),
                    child: const Text("Register", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                   ),
                  ],
               )
              ),
            )
          ],
        ),
    )
    );
  }
}
