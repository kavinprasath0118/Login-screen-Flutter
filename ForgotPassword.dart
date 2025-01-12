import 'package:flutter/material.dart';


class ForgotPassword extends StatelessWidget{
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text("Forgot Password",
        style: TextStyle(
          fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text("Please enter your phone number or email address to reset your password",
          style: TextStyle(
            fontSize: 18,
          ),
          ),
        ),
    
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Email or Phone number',
              border: OutlineInputBorder(),
            )        
          ),
        ),

        SizedBox(height: 18,),

        //Submit Button
        ElevatedButton(
          onPressed: () { 
            
           },
          child: Text("Submit",
               style: TextStyle(
               color: Colors.white,
               fontSize: 15,
               ),
             ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
