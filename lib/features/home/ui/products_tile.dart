import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_crat_flutter_bloc/features/home/models/home_product_data_model.dart';
import 'package:shopping_crat_flutter_bloc/utilities/constant.dart';

class ProductTile extends StatelessWidget{
  final ProdutDataModel produtDataModel;

  const ProductTile({super.key, required this.produtDataModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(produtDataModel.imageUrl),fit: BoxFit.cover),
            ),

          ),

          Text(produtDataModel.name,style: kProductTitleTextStyle),
          Text(produtDataModel.description,style: kProductDesTextStyle,),
        ],
      ),
    );
  }

}