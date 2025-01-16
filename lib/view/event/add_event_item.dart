import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me_admin_app/controller/add_event_controller.dart';
import 'package:me_admin_app/widget/dropdown_btn.dart';

class AddEventPage extends StatelessWidget {
  const AddEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddEventController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(title: const Text('Add Event')),
          body: SingleChildScrollView(
              child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Add New Event',
                          style: TextStyle(fontSize: 30, color: Colors.indigo),
                        ),
                        TextField(
                          controller: ctrl.eventNameCrtl,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: const Text('Event Name'),
                              hintText: 'Enter an Event Name'),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: ctrl.eventDescriptionCrtl,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: const Text('Description'),
                              hintText: 'Enter the description'),
                          maxLines: 4,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: ctrl.eventImageCrtl,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: const Text('Image Url'),
                              hintText: 'Enter an Image Url'),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: ctrl.eventPriceCrtl,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: const Text('Event Price'),
                              hintText: 'Enter an Event Price'),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Flexible(
                                child: DropDownBtn(
                              items: const ['Cat1', 'Cat2', 'Cat3'],
                              selectedItem: 'Cat1',
                              onSelected: (selectedValue) {
                                ctrl.category = selectedValue ?? 'General';
                              },
                            )),
                            Flexible(
                                child: DropDownBtn(
                              items: const ['SubCat2', 'SubCat2', 'SubCat3'],
                              selectedItem: 'SubCat1',
                              onSelected: (selectedValue) {
                                ctrl.subcategory = selectedValue ?? 'General';
                              },
                            )),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigoAccent,
                                foregroundColor: Colors.white),
                            onPressed: () {
                              ctrl.addEvent();
                            },
                            child: const Text('Add Event'))
                      ]))));
    });
  }
}
