import 'package:flutter/material.dart';

class CpfFooterWidget extends StatelessWidget {
  const CpfFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.blue[900]!.withValues(alpha: 0.2)
            : Colors.blue[50],
        border: Border(left: BorderSide(color: Colors.blue[700]!, width: 4)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Icon(Icons.info_outline, color: Colors.blue[700], size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cattle Protection Fund (CPF): Income Guarantee & Asset Security',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Your income is guaranteed through the Cattle Protection Fund. This safety measure secures your animals, decreases revenue risk, and ensures growing assets. It is a vital step for long-term stability.',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
