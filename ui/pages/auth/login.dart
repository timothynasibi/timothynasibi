import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              const SizedBox(height: kToolbarHeight),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 80.0,
                height: 80.0,
              ),
              const SizedBox(height: 30.0),
              // ignore: deprecated_member_use
              ElevatedButton(
                child: Text("Continue with Google"),
                onPressed: () {},
              ),
              const SizedBox(height: 30.0),
              LoginForm(),
              const SizedBox(height: 20.0),
              // ignore: deprecated_member_use
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final FocusNode passwordField = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "email address"),
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(passwordField);
            },
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "email address"),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            // ignore: deprecated_member_use
            child: RaisedButton(
              textColor: Colors.white,
              child: Text("Login"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  final FocusNode passwordField = FocusNode();
  final FocusNode confirmPasswordField = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "email address"),
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(passwordField);
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            focusNode: passwordField,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "password"),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            // ignore: deprecated_member_use
            child: RaisedButton(
              textColor: Colors.white,
              child: Text("Login"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
