import 'package:flutter/material.dart';
import 'package:recommend/screens/setting.dart';
import 'package:recommend/widgets/footer.dart';
import 'package:recommend/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Navbar(),
      ),
      body: Setting(),
      bottomNavigationBar: Footer(),
    );
  }
}
