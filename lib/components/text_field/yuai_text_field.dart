import 'package:flutter/material.dart';

class YuaiTextField extends StatefulWidget {
  const YuaiTextField({
    super.key,
    this.controller,
    required this.label,
    this.icon,
    this.hintText,
    this.initialValue,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.onChanged,
    this.onTap,
  });

  final TextEditingController? controller;
  final String label;
  final IconData? icon;
  final String? hintText;
  final String? initialValue;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final void Function(String)? onChanged;
  final void Function()? onTap;

  @override
  State<YuaiTextField> createState() => _YuaiTextFieldState();
}

class _YuaiTextFieldState extends State<YuaiTextField> {
  final FocusNode _focusNode = FocusNode();
  Color _color = Colors.grey.shade100;

  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _color = Theme.of(context).colorScheme.primary.withOpacity(0.05);
      } else {
        _color = Colors.grey.shade100;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          focusNode: _focusNode,
          controller: widget.controller,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
          validator: widget.validator,
          obscureText: widget.obscureText,
          enabled: widget.enabled,
          initialValue: widget.initialValue,
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.enabled ? _color : Colors.grey.shade300,
            hintText: widget.hintText,
            suffixIcon: widget.suffixIcon,
            suffixIconColor: _focusNode.hasFocus
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.shade400,
            prefixIcon: widget.prefixIcon,
            prefixIconColor: _focusNode.hasFocus
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.shade400,
            icon: widget.icon != null
                ? Icon(
                    widget.icon,
                    color: _focusNode.hasFocus
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey.shade400,
                  )
                : null,
            contentPadding: const EdgeInsets.all(16),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: _color.withOpacity(0.6),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
          ),
          onChanged: widget.onChanged,
          onTap: widget.onTap,
          keyboardType: widget.keyboardType,
          onTapOutside: (event) {
            _focusNode.unfocus();
          },
          onEditingComplete: () => _focusNode.nextFocus(),
        ),
      ],
    );
  }
}
