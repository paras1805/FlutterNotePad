import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notepad_home_screen.dart';

class NotePadLoginScreen extends StatefulWidget {
  const NotePadLoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NotePadLoginScreen();
}

class _NotePadLoginScreen extends State<NotePadLoginScreen> {
  TextEditingController usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var msg = "Login Page";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    usernameController.clear();
    usernameController.addListener(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Notepad"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                msg,
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Enter your username."),
                  controller: usernameController,
                  onChanged: (String userInput) {
                    /*setState(() {
                      msg = userInput;
                    });*/
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter correct username.";
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Enter your password."),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter correct password.";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      //if my form is valid or not. True/False
                      if (_formKey.currentState!.validate()) {
                        // Done Some Login Process
                        // Hit the server -> Success Response
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Login Successfull.")));

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NoteList()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("Please enter correct details.")));
                      }
                    },
                    child: const Text("Login Button")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
