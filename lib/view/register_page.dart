import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) => (value == null || value.isEmpty)
                    ? 'Please enter a valid username'
                    : null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'myusername',
                    labelText: 'Enter your username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) => (value == null || value.isEmpty)
                    ? 'Please enter a valid password'
                    : null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password123',
                    labelText: 'Enter your password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) => (value == null || value.isEmpty)
                    ? 'Please enter a valid password'
                    : null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password123',
                    labelText: 'Enter your password'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Loading...')));
                  }
                },
                child: Text('Login')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('already have an account'))
          ],
        ),
      ),
    );
  }
}
