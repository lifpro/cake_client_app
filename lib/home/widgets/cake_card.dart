import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class CakeCard extends StatelessWidget {
  final String name;
  final String image;

  const CakeCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              image: AssetImage(
                'assets/images/$image',
              ),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  print('Ink appuyer');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 30,
                          color: myPrimatyColor,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: myPrimatyColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
