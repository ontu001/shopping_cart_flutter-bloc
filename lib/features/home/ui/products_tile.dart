import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_crat_flutter_bloc/features/home/models/home_product_data_model.dart';
import 'package:shopping_crat_flutter_bloc/utilities/constant.dart';

class ProductTile extends StatelessWidget {
  final ProdutDataModel produtDataModel;

  const ProductTile({super.key, required this.produtDataModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal, width: 2.0,),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                
                  image: NetworkImage(produtDataModel.imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 16.0,),
          Text(produtDataModel.name, style: kProductTitleTextStyle),
          Text(
            produtDataModel.description,
            style: kProductDesTextStyle,
          ),
          const SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${produtDataModel.price}",style: kProductTitleTextStyle,),
              Row(
                children: [
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.favorite_outline,color: kCommonColor,),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.shopping_bag_outlined,color: kCommonColor,),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
