import 'package:flutter/material.dart';

// Global Variable & functions
int count = 0;
void increment() => count += 1;
void decrement() => count -= 1;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Countet's current value is : $count",
              style: const TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () async => await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (routeContext) => AnotherPage(oldValue: count),
              ),
            ).then((_) => setState(() {})),
            child: const Text('Navigate to another page'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(increment),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key, required this.oldValue});
  final int oldValue;

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnotherPageView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Counter's ${widget.oldValue == count ? 'old' : 'updated'} value is: $count",
              style: const TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Get back to previous screen'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(decrement),
        child: const Icon(Icons.remove),
      ),
    );
  }
}
