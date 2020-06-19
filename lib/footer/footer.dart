import 'package:flutter/material.dart';

footerGallery() {
  return BottomNavigationBar(
    currentIndex: 0,
    items: [
      footerIcon(Icons.home,'Home'),
      footerIcon(Icons.mail,'Mail')
    ],
  );
}

footerIcon(icon, String text) {
  return BottomNavigationBarItem(
    icon: new Icon(icon),
    title: new Text(text),
  );
}
