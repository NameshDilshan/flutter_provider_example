import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/counter_modal.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModal(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModal>(
      builder: (context, value, child) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(value.count.toString()),
                const SizedBox(height: 20.0,),
                FloatingActionButton(
                  onPressed: () {
                    final counter = context.read<CounterModal>();
                    counter.increment();
                  },
                  child: const Text("Increment"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
