import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Yor My Beloved',
              imageUrl:
                  'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2022/07/spy-x-family-yor-cosplay.jpg?fit=1280%2C720&quality=80&ssl=1',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://somoskudasai.com/wp-content/uploads/2021/08/portada_komi-san-23.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://www.egames.news/__export/1664220099397/sites/debate/img/2022/09/26/cyberpunk-edgerunners-anime-lucy-1.jpg_976912859.jpg',
            ),
            SizedBox(height: 50),
          ],
        ));
  }
}
