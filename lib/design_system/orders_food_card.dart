import 'package:flutter/material.dart';

import '../domain/entities/food.dart';
import 'colors.dart';

class FoodCard extends StatefulWidget {
  final Food food;
  final int orderNumber;
  const FoodCard({
    Key? key,
    required this.food,
    required this.orderNumber,
  }) : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  Color contentColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        setState(() {
          contentColor = const Color.fromARGB(255, 114, 212, 117).withOpacity(0.9);
        });
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 355,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: _contentCard(widget.food, context, contentColor),
            ),
          ),
          Container(
              height: 170,
              width: 170,
              color: Colors.transparent,
              child: _imageCard(widget.food))
        ],
      ),
    );
  }

  Widget _contentCard(Food food, BuildContext context, Color contentColor) =>
      Card(
        color: contentColor,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            _nameLabel(food),
            const SizedBox(
              height: 30,
            ),
            _priceLabel(food)
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        shadowColor: Colors.grey.withOpacity(0.3),
        elevation: 5,
      );

  Widget _imageCard(Food food) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        elevation: 30,
        color: Colors.grey.withOpacity(0.1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.network(
            food.imageUrls.first,
            fit: BoxFit.fill,
            height: 150,
            width: 150,
          ),
        ),
      );

  Widget _nameLabel(Food food) => Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: SizedBox(
            width: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    food.name,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _priceLabel(Food food) => Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  r'R$ ' + food.price.toString(),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: primaryOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      );
}
