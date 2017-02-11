%Generate Appendix-Figure 5
%%
builder_h = @SerialBuilder;
n = 10;
pwt = [0.12 0.14];
pko = 0.2;
df = -0.39;
df = {0.5, 0.5+df, 0.5-df};
tpre = 100;
train = 150;
titl = 'Serial';
filen = 'serial';
%%
builder_h = @CascadeBuilder;
n = 10;
pwt = [0.386 0.398];
pko = 0.466;
df = {0.522, 0.37, 0.998};
tpre = 200;
train=500;
titl = 'Cascade';
filen = 'cascade';
%%
builder_h = @NonuniBuilder;
n = 10;
pwt = [0.4 0.4];
pko = 0.53;
df = {0.5, 0.3, 0.9};
tpre = 500;
train=800;
titl = 'Non-uniform multistate';
filen = 'nonuni';
%%
builder_h = @SerialBuilder;
n = 2;
pwt = [0.1 0.1];
pko = 0.2;
df = {0.5, 0.4, 0.6};
tpre = 5;
train=40;
titl = 'Two-state';
filen = 'binary';
%%
builder_h = @MultistateBuilder;
n = 10;
pwt = [0.3 0.3];
pko = 0.4;
df = {0.5, 0.2, 0.8};
tpre = 5;
train=20;
titl = 'Multistate';
filen = 'multistate';
%%
builder_h = @PooledBuilder;
n = 10;
pwt = [0.008 0.0006 0.6];
pko = [0.001 1];
df = {0.5, 0.1, 0.9};
tpre = 5;
train=800;
titl = 'Pooled resource';
filen = 'pooled';
%%
vexpt=VORbuilderKO(builder_h, n, pwt(1), pwt(2), pko, df{:},train,tpre, false);
vexpt.PlotLearnS('all',false,'LineWidth',2);
xlim([0 train]);
%%
title([titl ' model'],'FontSize',vexpt.FontSize);
print([filen '_longterm.eps'],'-depsc');
