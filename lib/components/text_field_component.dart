import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final IconData? icon;
  const CustomTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.icon,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _obscure = false;

  // adiciona o event listener pra escutar o foco do nó.
  // o initState é disparado uma única vez durante a montagem do componente
  @override
  void initState() {
    super.initState();
    _obscure = widget.isPassword;
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xff32a873),
      obscureText: _obscure,
      focusNode: _focusNode,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Campo obrigatório!';
        }

        return null;
      },
      textCapitalization: TextCapitalization.none,
      style: TextStyle(color: _isFocused ? Color(0xff32a873) : Colors.white),
      decoration: InputDecoration(
        prefixIcon:
            widget.icon != null
                ? Icon(
                  widget.icon,
                  color: _isFocused ? Color(0xff32a873) : Colors.white,
                )
                : null,
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    color: _isFocused ? Color(0xff32a873) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                )
                : null,
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: _isFocused ? Color(0xff32a873) : Colors.white,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff32A873)),
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
