import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen App'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.0),

          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CodePlayon',
              style: TextStyle(fontSize: 18.0, color: Colors.blue),
            ), // Added "Hello" text with blue color
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'User Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 8.0), // Added SizedBox for spacing
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ), // A
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
              },
              child: Text('Login'),
            ),
            // Added "Forgot Password" text with blue color
            SizedBox(height: 9.0), // Added SizedBox for spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Does not have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  " Sign Up",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}