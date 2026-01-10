import 'package:flutter/material.dart';

void main() {
  runApp(const ShuttleIQApp());
}

class ShuttleIQApp extends StatelessWidget {
  const ShuttleIQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShuttleIQ',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final List<Map<String, dynamic>> _players = [];

  void _registerPlayer() {
    final name = _nameController.text.trim();
    if (name.isEmpty) return;
    setState(() {
      _players.add({"name": name, "score": 0});
      _nameController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🏸 ShuttleIQ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Register Player',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(hintText: 'Enter player name'),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _registerPlayer,
                  child: const Text('Register'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Leaderboard',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _players.length,
                itemBuilder: (context, index) {
                  final player = _players[index];
                  return ListTile(
                    title: Text(player['name']),
                    trailing: Text(player['score'].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

