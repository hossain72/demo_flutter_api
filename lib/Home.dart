import 'package:ecom_app/product_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ProductWidget()
          ],
        ),
      ),
    );
  }
}

