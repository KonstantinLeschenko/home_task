import 'package:flutter/material.dart';
import 'package:home_task/repositories/coins_repository.dart';
import 'models/coin.dart';

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
      home: const MyHomePage(title: 'HomeTask Lesson 17 Network'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Coin>? _coinsList;

  @override
  void initState() {
    loadCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _coinsList == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _coinsList!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(_coinsList![index].imageURL),
                  title: Text(_coinsList![index].name),
                  subtitle: Text('${_coinsList![index].price} \$'),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await loadCoins();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Future<void> loadCoins() async {
    _coinsList = await CoinsRepository().getConsList();
    setState(() {});
  }
}
