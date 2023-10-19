import 'package:flutter/material.dart';

class QuickBankingServices extends StatelessWidget {
  const QuickBankingServices({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 38, 28, 26),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SquareCard(
            image: "./assets/icons/bank.png",
            firstWord: 'Bank',
            secondWord: 'transfer',
          ),
          SquareCard(
            image: "./assets/icons/qr-scan.png",
            firstWord: 'Scan',
            secondWord: 'QR Code',
          ),
          SquareCard(
            image: "./assets/icons/at-2.png",
            firstWord: 'UPI',
            secondWord: 'transfer',
          ),
          SquareCard(
            image: "./assets/icons/document.png",
            firstWord: 'View',
            secondWord: 'Expenses',
          ),
        ],
      ),
    );
  }
}

class SquareCard extends StatelessWidget {
  const SquareCard({
    super.key,
    required this.image,
    required this.firstWord,
    required this.secondWord,
  });

  final String image;
  final String firstWord;
  final String secondWord;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              // padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(248, 239, 237, 1), width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(248, 239, 237, 1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    // offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image(
                image: AssetImage(
                  image,
                ),
                opacity: const AlwaysStoppedAnimation(.6),
                height: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              firstWord,
              style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              secondWord,
              style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
