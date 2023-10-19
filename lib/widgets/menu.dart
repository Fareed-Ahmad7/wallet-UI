import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 18, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(
              "./assets/icons/align-left.png",
            ),
            height: 24,
          ),
          Row(
            children: [
              Image(
                image: AssetImage(
                  "./assets/icons/bell.png",
                ),
                height: 24,
              ),
              SizedBox(
                width: 22,
              ),
              Image(
                image: AssetImage(
                  "./assets/icons/interrogation.png",
                ),
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
