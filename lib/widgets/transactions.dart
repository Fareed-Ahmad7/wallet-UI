import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionCard(isRecentTransaction: true),
        SizedBox(height: 24),
        TransactionCard(isRecentTransaction: false),
      ],
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.isRecentTransaction,
  });

  final bool isRecentTransaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 8),
          child: Text(
            isRecentTransaction ? 'Recent Transaction' : 'Payments Pending',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(248, 239, 237, 1), width: 2),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(248, 239, 237, 1),
                spreadRadius: 1,
                blurRadius: 2,
                // offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromRGBO(255, 92, 57, 1),
                    child: Text(
                      's',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  title: const Text(
                    'Syeda Sana',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text(
                    '4:27pm . From Kotak Bank',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  trailing: isRecentTransaction
                      ? const Text(
                          '+₹100',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Container(
                          height: 32,
                          width: 100,
                          alignment: Alignment.center,
                          // padding:
                          //     const EdgeInsets.symmetric(horizontal: 15.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(0, 0, 0, .8)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Send Money',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                )),
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(height: 1);
            },
          ),
        ),
      ],
    );
  }
}
