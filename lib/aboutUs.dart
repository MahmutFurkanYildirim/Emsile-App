import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Emsile Öğreniyorum',
          style: TextStyle(
            fontFamily: "Bona",
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            Divider(
              color: Colors.grey[600],
              thickness: 2,
              height: 20,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Emsile öğreniyorsunuz ve pratik mi yapmak istiyorsunuz. Bu uygulama tam size göre!',
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 8.0),
            Divider(
              color: Colors.grey[600],
              thickness: 2,
              height: 20,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/images/AppIcon.png'),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Emsile Öğreniyorum',
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      'Version 1.0 (${DateTime.now().year})',
                      style: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    const Text(
                      'Geliştirici: Mahmut Furkan Yıldırım',
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
