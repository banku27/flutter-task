import 'package:flutter/material.dart';
import 'package:flutter_task/constants.dart';
import 'package:flutter_task/screens/login_screen.dart';
import 'package:flutter_task/widgets/horizontal_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AppIcons.wallet,
                        ),
                        const Text(
                          '***',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppIcons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppIcons.profile),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppIcons.en),
                ),
              ],
            ),
            Categories(),
          ],
        ),
      ),
    );
  }
}
