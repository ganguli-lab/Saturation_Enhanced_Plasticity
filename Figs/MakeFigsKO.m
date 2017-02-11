%Generate plots for Figure 4BCDE of main text and Appendix-Figure 2
%printVORfigsKO( prefix, paramWT ,paramKO, df, T_train, T_pre, varargin )
printVORfigsKO('binary',0.1,0.2,-0.1,5,5)
printVORfigsKO('multistate_lin',0.3,0.4,-0.3,5,5)
printVORfigsKO('pooled_deponly',[0.008 0.0006 0.6],[0.001 1],-0.4,5,20)
printVORfigsKO('serial_fit',[0.12 0.14], 0.2, -0.39, 5, 100)
printVORfigsKO('cascade_fit',[0.386 0.398], 0.466, {0.522, 0.37, 0.998}, 1.5, 200)
printVORfigsKO('nonuni_fit',0.4, 0.53, {0.5, 0.3, 0.9}, 5, 500)
