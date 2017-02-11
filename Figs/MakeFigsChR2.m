%Generate Appendix-Figure 6
%printVORfigsChR2( prefix, param, df, T_train, T_pre, varargin )
printVORfigsChR2('binary',[0.1 0.4],-0.2,5,5)
printVORfigsChR2('multistate_lin',0.3,-0.3,5,5)
printVORfigsChR2('pooled_deponly',[0.08 0.006 0.6],-0.4,5,20)
printVORfigsChR2('serial_fit', [0.12 0.14], -0.39, 5, 100)
printVORfigsChR2('cascade_fit', [0.386 0.398], {0.522, 0.37, 0.01}, 1.5, 200)
printVORfigsChR2('nonuni_fit', 0.4, {0.5, 0.3, 0.01}, 5, 500)
