import 'package:flutter/material.dart';

import '../widgets/listTileTask.dart';
import '../widgets/userProfileBanner.dart';

class CanaelTaskScreen extends StatefulWidget {
  const CanaelTaskScreen({Key? key}) : super(key: key);

  @override
  State<CanaelTaskScreen> createState() => _CanaelTaskScreenState();
}

class _CanaelTaskScreenState extends State<CanaelTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const userProfileBanner(),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text('title will be here'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45'),
                        const Text('Date'),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Chip(
                              label: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_forever_outlined,
                                color: Colors.red.shade300,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 4,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
