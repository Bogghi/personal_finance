import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_addLabelTextStyle);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addLabelTextStyle() {
    final text = _controller.text;
    // final spans = text.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Center(
            child: Text("transactions"),
          ),
          Column(
            children: [
              Expanded(child: Container()),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 800,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}