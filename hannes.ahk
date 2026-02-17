#Requires AutoHotkey v2.0

; Swap underscore (_) and semicolon (;)
; Keep colon (:) and dash (-) unchanged

; Map semicolon key to underscore (without shift)
`;::_

; Map shift+semicolon (colon) back to colon (unchanged)
+`;:::

; Map shift+dash (underscore) to semicolon
+_::`;

; Map dash key back to dash (unchanged)
-::-
