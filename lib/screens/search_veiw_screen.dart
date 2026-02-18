import 'package:flutter/material.dart';

class SearchVeiwScreen extends StatelessWidget {
  const SearchVeiwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search City")),
      body: TextField(),
    );
  }
}
