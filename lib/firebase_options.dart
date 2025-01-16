import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

FirebaseOptions firebaseOptions = Platform.isAndroid
    ? const FirebaseOptions(
        apiKey: 'AIzaSyARRIxHWTScgPE-XfSPjWvUUUixVVS8lZk',
        appId: '1:1039543287019:android:0f4f0e6a5f31e8284192ae',
        messagingSenderId: '1039543287019',
        projectId: 'meemee-events')
    : const FirebaseOptions(
        apiKey: 'AIzaSyAfvstQTH5umWn_wwOE9VkWLVHf_3VNKwc',
        appId: '1:1039543287019:ios:87bb2e922f0364f14192ae',
        messagingSenderId: '1039543287019',
        projectId: 'meemee-events');
