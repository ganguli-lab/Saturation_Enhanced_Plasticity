%Generate Appendix-Figure 4
%parameter ranges
paramvals = (0.05:0.1:0.95);
ns = 4:10;
reps=2;
%%
%calculations
ncomps=ScanPooledNum(paramvals,ns,'Top',reps);
%%
%plot
txopts={'Interpreter','latex','FontSize',20};
ax=gca;
bh=bar(ax, ns-1, ncomps','stacked');
ax.FontSize=16;
xlabel('$\#$ of synapses in pool', txopts{:});
ylabel('max/min $\{\dot{L}_{\mathrm{WT}}(0) - \dot{L}_{DKO}(0)\}$', txopts{:});
title('Pooled resource model, no pre', txopts{:});
bh(1).FaceColor='none';
bh(1).EdgeColor='none';
bh(2).FaceColor=[0 0.4470 0.7410];
xlim([ns(1)-1.5 ns(end)-0.5]);
ylim([-0.5 -1e-4]);
ax.YAxis.Scale = 'log';
%%
print('pooled_scan.eps','-depsc');
