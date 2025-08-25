import 'package:email_auth_firebase/screens/signup.dart';
import 'package:flutter/material.dart';

class AppForgotPassword extends StatefulWidget {
  const AppForgotPassword({super.key});

  @override
  State<AppForgotPassword> createState() => _AppForgotPasswordState();
}

class _AppForgotPasswordState extends State<AppForgotPassword> {
  TextEditingController tecUsername = TextEditingController();
  final AppForgotPasswordFormkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Image.asset("assets/png_images/forgetpassword.png"),
            ),
            Text(
              textAlign: TextAlign.center,
              "Receive an email to reset your password",
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: AppForgotPasswordFormkey,
                child: TextFormField(
                  validator: (tecUsername) {
                    if (tecUsername!.isEmpty) {
                      return "Enter your email Address";
                    }
                    return null;
                  },
                  controller: tecUsername,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: "Enter your email Address",
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    if (AppForgotPasswordFormkey.currentState!.validate()) {}
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New User?", style: TextStyle(color: Colors.grey)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppSignUp()),
                    );
                  },
                  child: Text(
                    "Signup now",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
