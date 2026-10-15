import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // appFlavor will match the flavor name from build.gradle.kts
  if (appFlavor == 'production') {
    // Logic for production environment
    print('Running in production mode');
  } else if (appFlavor == 'staging') {
    // Logic for staging environment
    print('Running in staging mode');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text('', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
