// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Paisa Tirne Haina"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            // Container for displaying each person's splitted money
            Center(
              child: Container(
                margin: EdgeInsets.all(16),
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: theme.cardColor, blurRadius: 9),
                  ],
                  color: theme.colorScheme.copyWith().surfaceContainerHigh,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Each Person Payment',
                      style: theme.textTheme.copyWith().titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Rs 450',
                      style: theme.textTheme.copyWith().titleLarge,
                    ),
                  ],
                ),
              ),
            ),

            // Input field for amount
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter amount",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(224, 70, 63, 63),
                        width: 0.5),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 231, 88, 88),
                        width: 0.5),
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
