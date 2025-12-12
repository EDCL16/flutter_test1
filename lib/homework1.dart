import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // 標題
            const Text(
              "Homework 1",
              style: TextStyle(fontSize: 26),
            ),

            const SizedBox(height: 30),

            // 圓型頭像底色 + 圖片
            CircleAvatar(
              radius: 180,
              backgroundColor: Colors.black,
              child: Image.asset(
                'Images/mori.jpg', // 放你的圖片
                height: 150,
              ),
            ),

            const SizedBox(height: 30),

            // 名字
            const Text(
              "Mori Calliope",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            // 分隔線
            Container(
              width: 300,
              height: 2,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(vertical: 8),
            ),

            // 副標
            const Text(
              "Gug!",
              style: TextStyle(fontSize: 29, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // Email 按鈕
            _buildButton(
              icon: Icons.email,
              text: "s111216067@stu.ntue.edu.tw",
              onTap: () {},
            ),

            const SizedBox(height: 15),

            // Phone 按鈕
            _buildButton(
              icon: Icons.phone,
              text: "0909-919-gigi3",
              onTap: () {},
            ),

            const SizedBox(height: 15),
            // Phone 按鈕
            _buildButton(
              icon: Icons.videogame_asset,
              text: "Favorite game : LoL",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  // 自訂黃色按鈕
  Widget _buildButton({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 300,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 26),
              const SizedBox(width: 12),
              Text(
                text,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
