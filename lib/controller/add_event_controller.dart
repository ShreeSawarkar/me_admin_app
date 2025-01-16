import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me_admin_app/model/event/event.dart';

class AddEventController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference eventsCollection;

  TextEditingController eventNameCrtl = TextEditingController();
  TextEditingController eventDescriptionCrtl = TextEditingController();
  TextEditingController eventImageCrtl = TextEditingController();
  TextEditingController eventPriceCrtl = TextEditingController();

  String category = '';
  String subcategory = '';

  @override
  void onInit() {
    eventsCollection = firestore.collection('events');
    super.onInit();
  }

  addEvent() {
    try {
      DocumentReference doc = eventsCollection.doc();
      Event event = Event(
          id: doc.id,
          name: eventNameCrtl.text,
          category: category,
          subcategory: subcategory,
          price: double.tryParse(eventPriceCrtl.text) ,
          image: eventImageCrtl.text,
          description: eventDescriptionCrtl.text);
      final eventJson = event.toJson();
      doc.set(eventJson);
      Get.snackbar('Success', 'Event added successfully',colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Success', e.toString(),colorText: Colors.red);
      print(e);
    }
  }
}
