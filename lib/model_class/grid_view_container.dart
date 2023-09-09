import 'package:car_app_saba/model_class/model_class.dart';
import 'package:flutter/material.dart';

class GridViewContainer extends StatelessWidget {
  const GridViewContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: HomeProductsList.length, // Number of items in your list
      itemBuilder: (context, index) {
        final product = HomeProductsList[index];

        return Container(
          // Customize your grid item here using product data
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Variations: ${product.variations}'),
              Text('Price: \$${product.price.toStringAsFixed(2)}'),
            ],
          ),
        );
      },
    );
  }
}
