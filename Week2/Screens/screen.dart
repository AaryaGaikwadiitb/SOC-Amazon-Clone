import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
    );
  }
}

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isSignIn = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void toggleForm(bool value) {
    setState(() {
      isSignIn = value;
    });
    clearFields();
  }

  void clearFields() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isSignIn) ...[
              Text(
                "Create Account.",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your sign up logic here
                  print(
                      'Sign Up with: ${nameController.text}, ${emailController.text}, ${passwordController.text}');
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
              ),
            ] else ...[
              Text(
                "Sign In.",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your sign in logic here
                  print(
                      'Sign In with: ${emailController.text}, ${passwordController.text}');
                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
              ),
            ],
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<bool>(
                  value: false,
                  groupValue: isSignIn,
                  onChanged: (value) {
                    toggleForm(value!);
                  },
                ),
                Text('Create Account.'),
                Radio<bool>(
                  value: true,
                  groupValue: isSignIn,
                  onChanged: (value) {
                    toggleForm(value!);
                  },
                ),
                Text('Sign-in.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
