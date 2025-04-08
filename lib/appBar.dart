import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          _isSearching
              ? TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
                style: const TextStyle(color: Colors.black),
                autofocus: true,
              )
              : GlassContainer(
                blur: 20,
                width: 200, // یا هر مقداری که بخوای
                height: 50,
                borderRadius: BorderRadius.circular(10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                alignment: Alignment.center,
                child: const Text(
                  "My App Bar",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),

      centerTitle: !_isSearching,
      backgroundColor: _isSearching ? Colors.white : Colors.blue,
      iconTheme: IconThemeData(
        color: _isSearching ? Colors.black : Colors.white,
      ),
      leading: IconButton(
        onPressed: () {
          if (_isSearching) {
            setState(() {
              _isSearching = false;
              _searchController.clear();
            });
          } else {
            Scaffold.of(context).openDrawer();
          }
        },
        icon:
            _isSearching
                ? const Icon(Icons.arrow_back)
                : const Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              _isSearching = !_isSearching;
              if (!_isSearching) {
                _searchController.clear();
              }
            });
          },
          icon:
              _isSearching ? const Icon(Icons.close) : const Icon(Icons.search),
        ),
      ],
    );
  }
}
