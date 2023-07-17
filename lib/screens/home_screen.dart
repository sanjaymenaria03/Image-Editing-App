import 'package:create_memes/screens/edit_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.upload_file,),
          onPressed:() async{
         final XFile? image = await ImagePicker().pickImage(
            source: ImageSource.gallery,
            );
            if ( image != null) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditImageScreen(selectedImage: image.path,
              ),
              ),
              );
            }
          },
        ),
      )
    );
  }
}