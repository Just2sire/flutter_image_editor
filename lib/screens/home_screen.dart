import 'package:flutter/material.dart';
import 'package:image_edit/screens/edit_image_sceen.dart';
import 'package:image_edit/utils/page_transitioin.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () async {
            XFile? file = await ImagePicker().pickImage(
              source: ImageSource.gallery,
            );
            // ImagePicker().pickImage(source: ImageSource.camera);
            if (file != null) {
              // context.push(
              //   EditImageScreen(
              //     selectedImage: file.path,
              //   ),
              // );
              Navigator.of(context).push(
                MyCustomRouteTransition(
                  widget: EditImageScreen(
                    selectedImage: file.path,
                  ),
                ),
              );
            }
          },
          icon: const Icon(
            Icons.upload_file,
            size: 75,
          ),
        ),
      ),
      
    );
  }
}
