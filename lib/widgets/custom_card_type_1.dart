import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Irure incididunt ut ut aliquip aliquip pariatur dolor non ad. Qui nostrud qui aliquip labore id reprehenderit irure minim tempor. Sint amet incididunt ex culpa. Qui ullamco anim duis et proident Lorem deserunt. Excepteur incididunt non ad sunt consectetur cillum adipisicing ipsum ut.'),
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
