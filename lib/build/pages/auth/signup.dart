import 'package:flutter/material.dart';
import 'package:vigi_lil_app/build/models/registration/payload.dart';
import 'package:vigi_lil_app/build/pages/auth/login.dart';
import '../../api/api.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final email = TextEditingController();
  final passsowrd = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final passowrd = TextEditingController();
  final confirmPassword = TextEditingController();
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: firstName,
                decoration: const InputDecoration(
                  labelText: 'Firsename',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: lastName,
                decoration: const InputDecoration(
                  labelText: 'LastName',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: phone,
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passowrd,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: confirmPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  var res = await Api().register(RegistrationPayload(
                      firstName: firstName.text,
                      lastName: lastName.text,
                      email: email.text,
                      password: passowrd.text,
                      confirmedPassword: confirmPassword.text,
                      phoneNumber: phone.text));
                  if (res.$1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                },
                child: const Text('Register'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
