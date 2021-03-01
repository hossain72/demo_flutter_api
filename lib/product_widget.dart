import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:ecom_app/data/product_api_service.dart';
import 'package:ecom_app/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*class ProductWidget extends StatelessWidget {
  Product product = Product("fjkh", "", "45");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(-2, -1),
                  blurRadius: 5),
            ]),
//            height: 160,
        child: Row(
          children: <Widget>[
            Container(
              width: 140,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: product.picture == null
                    ? Container(
                        height: 120,
                        child: CircularProgressIndicator(),
                      )
                    : Image.network(
                        product.picture,
                        fit: BoxFit.fill,
                      ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      product.name,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "\$${product.price}",
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}*/

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  FutureBuilder<Response> _buildBody(BuildContext context) {
    return FutureBuilder<Response>(
      future: Provider.of<ProductApiService>(context).getProduct(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> map = json.decode(snapshot.data.bodyString);
          final List<dynamic> products = map['data'];
          print(products[0]['name']);
          return _buildProducts(context, products);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _buildProducts(BuildContext context, List products) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: ListTile(
              title: Text(products[index]['name']),
            ),
          );
        });
  }
}
