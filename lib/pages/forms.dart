import 'package:flutter/material.dart';

class FormsDemo extends StatefulWidget {
  const FormsDemo({super.key});

  @override
  State<FormsDemo> createState() => _FormsDemoState();
}

class _FormsDemoState extends State<FormsDemo> {
  final formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  submitTester() {
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      Submitted();
    } else {
      print("Something went wrong!!");
    }
  }

  Submitted() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fomrs Demo"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25),
          margin:const  EdgeInsets.all(5),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  
                  decoration:const  InputDecoration(hintText: 'Enter first name'),
                  key: const ValueKey('First Name'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'first name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Enter last name'),
                  key:const  ValueKey('Last Name'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'last name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration:const  InputDecoration(hintText: 'Enter your email'),
                  key:const  ValueKey('Email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'email should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration:const  InputDecoration(hintText: 'Enter your password'),
                  key:const  ValueKey('Password'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'password should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                  onPressed: () {
                    submitTester();
                  },
                  child:const  Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
