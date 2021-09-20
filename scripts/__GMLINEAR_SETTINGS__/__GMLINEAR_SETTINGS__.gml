/**
Set whether to inline GMLinear operations for the YYC exports here.
Inlining improves runtime performance on YYC, but significantly lengthens compile time.

- To inline GMLinear operations, set this macro to gml_pragma("forceinline");
- Otherwise, set this macro to //
*/
#macro GMLINEAR_INLINE //
