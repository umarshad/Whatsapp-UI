import 'package:flutter/material.dart';
import 'package:whatsapp/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kTealColor,
            title: const Text(
              'WhatsApp',
              style: TextStyle(color: kWhiteColor),
            ),
            bottom: const TabBar(
              indicatorColor: kWhiteColor,
              tabs: [
                Icon(
                  Icons.camera_alt,
                  color: kWhiteColor,
                ),
                Text(
                  'Chats',
                  style: headline,
                ),
                Text(
                  'Updates',
                  style: headline,
                ),
                Text(
                  'Calls',
                  style: headline,
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search, color: kWhiteColor),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: kWhiteColor,
                ),
                itemBuilder: (context) => [
                  const PopupMenuItem(value: 1, child: Text('New Group')),
                  const PopupMenuItem(value: 2, child: Text('New Contact')),
                  const PopupMenuItem(value: 3, child: Text('Settings')),
                  const PopupMenuItem(value: 4, child: Text('Logout')),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Icon(Icons.camera_alt),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('Umar Arshad'),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.done_all_outlined,
                          color: kTealColor,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Where are you?'),
                      ],
                    ),
                    trailing: Text('12:00 am'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // My Update (at index 0)
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Update',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: kTealColor, width: 3),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              ),
                            ),
                            title: const Text('Umar Arshad'),
                            subtitle: const Text('2 minutes ago'),
                          ),
                        ],
                      ),
                    );
                  } else if (index == 1) {
                    // Recent Updates (at index 1)
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Recent Updates',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: kTealColor, width: 3),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              ),
                            ),
                            title: const Text('Umar Arshad'),
                            subtitle: const Text('2 minutes ago'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Regular Updates for index > 1
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kTealColor, width: 3),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                        ),
                        title: const Text('Umar Arshad'),
                        subtitle: const Text('2 minutes ago'),
                      ),
                    );
                  }
                },
              ),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: const Text('Umar Arshad'),
                    subtitle: Row(
                      children: [
                        Icon(
                          index % 2 == 0
                              ? Icons.arrow_outward
                              : Icons.call_missed,
                          color: index % 2 == 0 ? kTealColor : kRedColor,
                          size: 15,
                        ),
                        Text(index % 2 == 0 ? 'Yesterday,' : 'Today'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(index % 2 == 0 ? '12:00 am' : '10:59 pm'),
                      ],
                    ),
                    trailing: Icon(
                      index % 2 == 0
                          ? Icons.call_outlined
                          : Icons.missed_video_call_outlined,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
