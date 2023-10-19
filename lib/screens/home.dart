import 'package:flutter/material.dart';
import 'package:sensegrass/widgets/balance.dart';
import 'package:sensegrass/widgets/banking.dart';
import 'package:sensegrass/widgets/menu.dart';
import 'package:sensegrass/widgets/options.dart';
import 'package:sensegrass/widgets/transactions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            AppMenu(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Options(),
                    WalletBalanceCard(),
                    QuickBankingServices(),
                    RecentTransactions(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      // floating action button
      floatingActionButton: FloatingActionButton.extended(
        extendedIconLabelSpacing: 12,
        onPressed: () {},
        backgroundColor: Colors.black,
        elevation: 5,
        splashColor: Colors.grey,
        icon: const Image(
          image: AssetImage(
            "./assets/icons/qr.png",
          ),
          height: 24,
        ),
        label: const Text(
          'Scan & Pay',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(255, 0, 46, 1),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('./assets/icons/home.png', height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                './assets/icons/exchange-alt.png',
                height: 24,
                opacity: const AlwaysStoppedAnimation(.3),
              ),
              label: 'Payments'),
          BottomNavigationBarItem(
              icon: Image.asset(
                './assets/icons/usd-circle.png',
                height: 24,
                opacity: const AlwaysStoppedAnimation(.3),
              ),
              label: 'Expenses'),
          BottomNavigationBarItem(
            icon: Image.asset(
              './assets/icons/user-3.png',
              height: 24,
              opacity: const AlwaysStoppedAnimation(.3),
            ),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
