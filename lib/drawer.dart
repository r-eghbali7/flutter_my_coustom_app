import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class drawerApp extends StatefulWidget {
  const drawerApp({super.key});

  @override
  State<drawerApp> createState() => _drawerAppState();
}

class _drawerAppState extends State<drawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GlassContainer(
        borderRadius: BorderRadius.zero,
        blur: 100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              child: Text(
                'Glass Drawer Header',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home_outlined), title: Text('Page 1')),
            ListTile(
              leading: Icon(Icons.telegram_outlined),
              title: Text('Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
