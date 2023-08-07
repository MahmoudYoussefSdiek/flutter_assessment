import 'package:flutter/material.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Internet !'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 8),
          padding: const EdgeInsetsDirectional.fromSTEB(10, 7, 7, 8),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Check Your Internet Connection',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
