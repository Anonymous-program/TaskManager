import 'package:flutter/material.dart';
import '../style/style.dart';

class userProfileBanner extends StatelessWidget {
  const userProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 16),
      tileColor: colorGreen,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://th.bing.com/th/id/OIP.IrUBHhdMo6wWLFueKNreRwHaHa?w=208&h=208&c=7&r=0&o=5&pid=1.7'),
        radius: 15,
      ),
      title: Text('User name',style: TextStyle(
        fontSize: 14,
        color: colorWhite,
      ),),
      subtitle: Text('User email',style: TextStyle(
        fontSize: 12,
        color: colorWhite,
      ),),
    );
  }
}