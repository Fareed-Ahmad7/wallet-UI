import 'package:flutter/material.dart';

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 18, 0),
      child: Container(
        height: 190,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1.2, 0.0),
            colors: [
              Color.fromRGBO(255, 0, 91, .9),
              Color.fromRGBO(255, 0, 46, .9),
              Color.fromRGBO(255, 53, 0, .9),
            ],
            tileMode: TileMode.repeated,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
              child: Container(
                height: 70,
                width: 240,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1.2, 0.0),
                    colors: [
                      Color.fromRGBO(255, 108, 169, .8),
                      Color.fromRGBO(255, 132, 115, 1),
                    ],
                    tileMode: TileMode.repeated,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallet balance',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "\$321,500.00",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              // textBaseline: TextBaseline.ideographic,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(18, 8, 0, 0),
                  child: Text('UPI ID: 2121333456@farmaxis',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, .8),
                        fontWeight: FontWeight.w500,
                      )),
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  './assets/icons/duplicate-2.png',
                  height: 18,
                  opacity: const AlwaysStoppedAnimation(.8),
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 12, 8, 0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 8, 16, 8),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(40, 49, 66, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add money',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                        image: AssetImage(
                          "./assets/icons/angle-small-right.png",
                        ),
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
