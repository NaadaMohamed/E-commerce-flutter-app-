import 'package:flutter/material.dart';

import 'Product_Model.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),

        backgroundColor: Colors.purple,
        title:
        Text('                 Shop Now',style: TextStyle(fontSize:20),),
        actions: [
          Icon(Icons.shopping_cart,),
          Icon(Icons.search,),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.5 / 5,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(productList[index].image!),
                    InkWell(
                      onTap: () {
                        setState(() {
                          productList[index].isFavorite =
                          !productList[index].isFavorite!;
                        });
                      },
                      child: Icon(
                        productList[index].isFavorite == true
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Text(productList[index].name!),
                Text(productList[index].price.toString()),
              ],
            );
          },
        ),
      ),
    );
  }
}
