import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? gender;
  String? level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complete Profile')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const Text('Mobile Number'),
            const SizedBox(height: 6),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(hintText: '+971XXXXXXXX'),
            ),

            const SizedBox(height: 20),
            const Text('Gender'),
            DropdownButtonFormField<String>(
              items: ['Male', 'Female', 'Other']
                  .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                  .toList(),
              onChanged: (v) => gender = v,
            ),

            const SizedBox(height: 20),
            const Text('Level'),
            DropdownButtonFormField<String>(
              items: ['Beginner', 'Intermediate', 'Advanced']
                  .map((l) => DropdownMenuItem(value: l, child: Text(l)))
                  .toList(),
              onChanged: (v) => level = v,
            ),

            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              label: const Text('Add Photo (Optional)'),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Validate & go to Home (next step)
              },
              child: const Text('Save Profile'),
            )
          ],
        ),
      ),
    );
  }
}
