import 'package:flutter/material.dart';
import 'package:telegram_mini_app/Components/loading_indicator.dart';
import 'package:telegram_mini_app/UI/create_wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
         const CreateWalletScreen()), (Route<dynamic> route) => false);
    });
  }
  @override
    Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(8, -0, 18, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
          const SizedBox(height: 30),
          const LoadingIndicator(),
        ],
      ),
    );
  }

}