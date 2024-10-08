import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text('Enter Radar Kos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Login sebagai',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => controller.loginAsPenyewa(),
              icon: Icon(Icons.person),
              label: Text('Penyewa'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => controller.loginAsPemilik(),
              icon: Icon(Icons.people),
              label: Text('Pemilik'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16),
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () => controller.needHelp(),
              child: Text('Need Help? Click here'),
            ),
          ],
        ),
      ),
    );
  }
}