import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => OptionsState();
}

class OptionsState extends State<Options> {
  int selectedIndex = 0;
  List options = ['Account', 'Debit Card', 'Loans'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,16,0,0),
      child: SizedBox(
        height: 32.0,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromRGBO(0, 0, 0, .5)),
                  color: index == selectedIndex
                      ? const Color.fromRGBO(40, 49, 56, 1)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  options[index].toString(),
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : const Color.fromRGBO(40, 49, 56, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
