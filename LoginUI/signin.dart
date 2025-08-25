import 'package:email_auth_firebase/screens/forgetpassword.dart';
import 'package:email_auth_firebase/screens/signup.dart';
import 'package:flutter/material.dart';

class AppSignin extends StatefulWidget {
  const AppSignin({super.key});

  @override
  State<AppSignin> createState() => _AppSigninState();
}

class _AppSigninState extends State<AppSignin> {
  TextEditingController tecUsername = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  bool textVisible = true;
  final signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: signInFormKey,
          child: ListView(
            children: [
              SizedBox(
                height: 300,
                child: Image.asset("assets/png_images/signin.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Sign In ",
                  style: TextStyle(fontSize: 30, color: Colors.grey),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),

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
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                    labelText: "Username",
                    hintText: "Enter your email Address",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.red),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextFormField(
                  validator: (tecPassword) {
                    if (tecPassword!.isEmpty) {
                      return "Enter your Password";
                    }
                    return null;
                  },
                  obscureText: textVisible,
                  controller: tecPassword,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password, color: Colors.grey),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          textVisible = !textVisible;
                        });
                      },
                      icon: textVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    labelText: "Password",
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.red),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (signInFormKey.currentState!.validate()) {}
                    },
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
