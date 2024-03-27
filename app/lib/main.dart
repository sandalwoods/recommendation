import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://avktslofxrercpcehfio.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF2a3RzbG9meHJlcmNwY2VoZmlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg1MjQ4MjAsImV4cCI6MjAyNDEwMDgyMH0.LmLqEDaOslO2oDwL1mpSINDnYA7TX_wwghJBjDk4cXw',
  );
  runApp(const MainApp());
}

final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
