import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/recovery.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                const Spacer()
              ],
            ),
        ), 
          Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Spacer(),
                const Spacer(),
                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(71, 55, 89, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      // Container(
                      //   width: 40,
                      //   height: 40,
                      //   decoration: const BoxDecoration(
                      //     color: Color(0xFF4C4C4C),
                      //     shape: BoxShape.circle,
                      //   ),
                      //   child: Center(
                      //     child: Container(
                      //       width: 20,
                      //       height: 20,
                      //       decoration: const BoxDecoration(
                      //         color: Colors.black,
                      //         shape: BoxShape.circle,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(width: 10),
                      Spacer(),
                      Text(
                        '12 Words',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      width: 80,
                      height: 1,
                      color: const Color.fromRGBO(71, 55, 89, 1),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'or',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 1,
                      color: const Color.fromRGBO(71, 55, 89, 1),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(71, 55, 89, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      // Container(
                      //   width: 40,
                      //   height: 40,
                      //   decoration: const BoxDecoration(
                      //     color: Color(0xFF4C4C4C),
                      //     shape: BoxShape.circle,
                      //   ),
                      //   child: Center(
                      //     child: Container(
                      //       width: 20,
                      //       height: 20,
                      //       decoration: const BoxDecoration(
                      //         color: Colors.black,
                      //         shape: BoxShape.circle,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(width: 10),
                      Spacer(),
                       Text(
                        '24 Words',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          
      ]
    );
  }
}