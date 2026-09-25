import 'package:flutter/material.dart';

class TotpCard extends StatelessWidget {
  final String issuer;
  final String account;
  final String code;
  final int secondsRemaining;

  const TotpCard({
    super.key,
    required this.issuer,
    required this.account,
    required this.code,
    required this.secondsRemaining,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const CircleAvatar(child: Icon(Icons.key)),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(issuer, style: Theme.of(context).textTheme.titleMedium),

                  Text(account, style: Theme.of(context).textTheme.bodySmall),

                  const SizedBox(height: 12),

                  Text(
                    code,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),

                  Text(
                    '还有 $secondsRemaining 秒',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(value: secondsRemaining / 30),
            ),
          ],
        ),
      ),
    );
  }
}
