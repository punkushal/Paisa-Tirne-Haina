// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Column(
        children: [
          // Container for displaying each person's splitted money
          Center(
            child: Container(
              margin: EdgeInsets.all(16),
              width: 350,
              height: 150,
              decoration: BoxDecoration(
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
        ],
      ),
    );
  }
}
