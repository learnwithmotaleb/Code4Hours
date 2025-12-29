import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeEditor extends StatelessWidget {
  final TextEditingController controller;

  const CodeEditor({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          /// ✅ FIX: Give vertical constraint
          Positioned.fill(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 400, // optional (horizontal scroll feel)
                child: TextField(
                  controller: controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'monospace',
                    fontSize: 14,
                    height: 1.5,
                  ),
                  cursorColor: Colors.greenAccent,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(
                      52,
                      48,
                      16,
                      16,
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// Line Numbers
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 44,
              padding: const EdgeInsets.only(top: 48),
              color: const Color(0xFF252526),
              child: ValueListenableBuilder(
                valueListenable: controller,
                builder: (_, __, ___) {
                  final lines = controller.text.split('\n').length;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: List.generate(
                      lines,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          /// COPY button
          Positioned(
            top: 50,
            right: 10,
            child: InkWell(
              onTap: () {
                Clipboard.setData(
                  ClipboardData(text: controller.text),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Code copied')),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.copy,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),

          /// RUN button (disabled UI)
          Positioned(
            bottom: 100,
            right: 8,
            child: GestureDetector(
              onTap:(){
                showOutputBottomSheet(
                  context,
                  'Running...\n\nHello World\nProcess finished.',
                );


    },


              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.white54, size: 18),
                    SizedBox(width: 4),
                    Text(
                      'Run',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showOutputBottomSheet(BuildContext context, String output) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height * .4,
          decoration: const BoxDecoration(
            color: Color(0xFF0D1117),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Output',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white70),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),

              const Divider(color: Colors.white24, height: 1),

              /// Output Area
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    output,
                    style: const TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}
