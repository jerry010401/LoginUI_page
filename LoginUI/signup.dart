import 'package:email_auth_firebase/screens/signin.dart';
import 'package:flutter/material.dart';

class AppSignUp extends StatefulWidget {
  const AppSignUp({super.key});

  @override
  State<AppSignUp> createState() => _AppSignUpState();
}

class _AppSignUpState extends State<AppSignUp> {
  TextEditingController tecUsername = TextEditingController();
  TextEditingController tecMobile = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecConfirm = TextEditingController();
  bool textVisible = true;
  final SignUpkey = GlobalKey<FormState>();
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
        child: Form(
          key: SignUpkey,
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: Image.asset("assets/png_images/signup.png"),
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
                    prefixIcon: Icon(Icons.email, color: Colors.grey),
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
                padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),

                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  validator: (tecMobile) {
                    if (tecMobile!.isEmpty) {
                      return "Enter your 10 digit Mobile Number";
                    }
                    return null;
                  },
                  controller: tecMobile,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android, color: Colors.grey),
                    labelText: "Mobile Number",
                    hintText: "Enter your Mobile Number",
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
                padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: TextFormField(
                  maxLength: 8,
                  validator: (tecPassword) {
                    if (tecPassword!.isEmpty) {
                      return "Enter your 8 digit Password";
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
                padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: TextFormField(
                  maxLength: 8,
                  validator: (tecConfirm) {
                    if (tecConfirm!.isEmpty) {
                      return "Enter your 8 digit Confirm Password";
                    }
                    return null;
                  },
                  obscureText: textVisible,
                  controller: tecConfirm,
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
                    labelText: "Confirm Password",
                    hintText: "Enter your Confirm Password",
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (SignUpkey.currentState!.validate()) {}
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already having an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppSignin()),
                        );
                      },
                      child: Text(
                        "Signin now",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
