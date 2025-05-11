import 'package:flutter/material.dart';
import 'package:touche_pad/utils/network.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191919),
      appBar: AppBar(
          title: Text('Devices',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          backgroundColor: Color(0xff2A004E),
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: ElevatedButton(
            onPressed:() => {
               getNetworkInfo()
              }, ),
        ),
      ),
    );
  }
}