import 'package:flutter/material.dart';
import 'package:d_t_o_t_px/widgets/totp_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dTOTP'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          TotpCard(
            issuer: 'Google',
            account: 'example@gmail.com',
            code: '123 456',
            secondsRemaining: 23,
          ),

          SizedBox(height: 12),

          TotpCard(
            issuer: 'GitHub',
            account: 'caylt7',
            code: '928 314',
            secondsRemaining: 11,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 以后这里打开添加 TOTP 页面
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
