import 'package:flutter/material.dart';
import 'package:telegram_mini_app/UI/recovery_page.dart';

class CreateWalletScreen extends StatefulWidget {
  const CreateWalletScreen({super.key});

  @override
  State<CreateWalletScreen> createState() => _CreateWalletScreenState();
}

class _CreateWalletScreenState extends State<CreateWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/wallet.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Positioned(
            top: 500, // Adjust the value as needed
            left: 83,
            child: GestureDetector(
              onTap: () {
                debugPrint('press 1');
                Navigator.push(context,   MaterialPageRoute<void>(
                  builder: (BuildContext context) => const RecoveryScreen(),
                ));
              },
              child: Container(
                width: 177,
                height: 40,
                color: Colors.transparent,
              ),
            ),
          ),

          // Green container positioned at the desired location
          Positioned(
            top: 580, // Adjust the value as needed
            left: 100, 
            child: GestureDetector(
              onTap: () {
                debugPrint('press 2');
              },
              child: Container(
                width: 160,
                height: 40,
                color: Colors.transparent,
              ),
            ),
          ),
      ]
    );
  }
}
