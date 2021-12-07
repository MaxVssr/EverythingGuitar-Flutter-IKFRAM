import 'package:EverythingGuitar/models/color_scheme.dart';
import 'package:EverythingGuitar/widgets/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70))),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'EverythingGuitar',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Your one stop guitar lesson app!',
                    style: TextStyle(
                        fontFamily: 'circe', fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Log In',
                    style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontFamily: 'circe'),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email, color: Colors.black),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontFamily: 'circe',
                        color: Colors.black,
                      ),
                      hintText: 'Enter your email here',
                      hintStyle: TextStyle(
                        fontFamily: 'circe',
                        color: Colors.black,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          gapPadding: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        gapPadding: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontFamily: 'circe'),
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock, color: Colors.black),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontFamily: 'circe',
                        color: Colors.black,
                      ),
                      hintText: 'Enter your password here',
                      hintStyle: TextStyle(
                        fontFamily: 'circe',
                        color: Colors.black,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        gapPadding: 10,
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: darkBlue,
                    onPressed: () {
                      context.read<AuthenticationService>().signIn(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontFamily: 'circe',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
