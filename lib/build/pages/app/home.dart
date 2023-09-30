import 'package:flutter/material.dart';
import 'package:vigi_lil_app/build/models/login/response.dart';
import '../../api/api.dart';
import '../auth/login.dart';

class HomePage extends StatelessWidget {
  final LoginResponse data;
  const HomePage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () async {
                var res = await Api().logout();
                if (res.$1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Logged IN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.mail),
                  onPressed: () {
                    // Add functionality for this action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Add functionality for this action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.location_on),
                  onPressed: () {
                    // Add functionality for this action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
