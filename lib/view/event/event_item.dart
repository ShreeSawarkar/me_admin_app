import 'package:flutter/material.dart';
import '../../utility/app_color.dart';
import '../../utility/custom_app_bar.dart';
import '../../utility/custom_drawer.dart';
import '../../utility/open_container_wrapper.dart';
import 'add_event_item.dart';

class EventItemList extends StatelessWidget {
  const EventItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        viewName: 'Event Item',
        backButton: true,
      ),
      //drawer: const CustomDrawer(),
      backgroundColor: AppColor.lightPurple,
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('Event Title'),
              subtitle: const Text('Price : 100'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            );
          }),
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight, // Align at the bottom-left
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Add some padding
              child: OpenContainerWrapper(
                nextScreen: const AddEventPage(),
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    color: AppColor.backgroundPurple,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue, // Shadow color
                        blurRadius: 10, // Blur radius
                        offset: Offset(4, 4), // Offset of the shadow
                      ),
                    ],
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(1.0), // Add some padding
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: AppColor.darkPurple,
                      )),
                ),
              ),
            ),
            /*Align(
            alignment: Alignment.bottomLeft, // Align at the bottom-left
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Add some padding
              child: FloatingActionButton(
                mini: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                backgroundColor: AppColor.backgroundPurple,
                child: const Icon(Icons.arrow_back, color: AppColor.darkPurple),
              ),
            ),),*/
          ),
        ],
      ),
    );
  }
}
