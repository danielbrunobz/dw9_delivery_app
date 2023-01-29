import 'package:dw9_delivery_app/app/core/config/env/env.dart';
import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            width: 100,
            heigth: 100,
            label: Env.i['backend_base_url'] ?? '',
            onPressed: (){},
          ),
          Text(MediaQuery.of(context).size.width.toString()),
          Text(context.screenWidth.toString()),
          Row(
            children: [
              Container(color: Colors.red,
              width: context.percentWidth(.5),
                height: 100,
              ),
              Container(color: Colors.blue,
                width: context.percentWidth(.5),
                height: 100,
              ),
            ],
          ),

          TextFormField(
            decoration: InputDecoration(labelText: 'text'),
          ),
        ],
      ),
    );
  }
}
