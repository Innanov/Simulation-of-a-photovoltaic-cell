%n=1
Icc=0.0024;Vco=0.699;Rs=28.1;Rp=3683;
K=1.38e-23;T=298;q=1.6e-19;n=1;
W=q/(n*K*T);
Io1=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io2=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io=Io1+Io2;
Iph=Vco/Rp+Io*exp(W*Vco);
V=0; k=0; I=Icc;
while I>=0;
Id1=Io*(exp(W*(V+Rs*I))-1); 
Id2=Io*(exp(W*(V+Rs*I))-1);
Id=Id1+Id2;
Ish=(V+Rs*I)/(Rp); I=Icc-Id-Ish;
if I>=0; k=k+1; II(k)=I; IIsh(k)=Ish; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'g'); hold on;grid on
xlabel(' tension ( V ) ');
ylabel(' Courant ( A ) ');
%n=1.5
Icc=0.0024;Vco=0.699;Rs=28.1;Rp=3683;
K=1.38e-23;T=298;q=1.6e-19;n=1.5;
W=q/(n*K*T);
Io1=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io2=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io=Io1+Io2;
Iph=Vco/Rp+Io*exp(W*Vco);
V=0; k=0; I=Icc;
while I>=0;
Id1=Io*(exp(W*(V+Rs*I))-1); 
Id2=Io*(exp(W*(V+Rs*I))-1);
Id=Id1+Id2; 
Ish=(V+Rs*I)/(Rp); I=Icc-Id-Ish;
if I>=0; k=k+1; II(k)=I; IIsh(k)=Ish; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'b'); hold on;grid on
xlabel(' tension ( V ) ');
ylabel(' Courant ( A ) ');
%n=2
Icc=0.0024;Vco=0.699;Rs=28.1;Rp=3683;
K=1.38e-23;T=298;q=1.6e-19;n=2;
W=q/(n*K*T);
Io1=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io2=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io=Io1+Io2;
Iph=Vco/Rp+Io*exp(W*Vco);
V=0; k=0; I=Icc;
while I>=0;
Id1=Io*(exp(W*(V+Rs*I))-1); 
Id2=Io*(exp(W*(V+Rs*I))-1);
Id=Id1+Id2;
Ish=(V+Rs*I)/(Rp); I=Icc-Id-Ish;
if I>=0; k=k+1; II(k)=I; IIsh(k)=Ish; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'red'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
%n=2.5
Icc=0.0024;Vco=0.699;Rs=28.1;Rp=3683;
K=1.38e-23;T=298;q=1.6e-19;n=2.5;
W=q/(n*K*T);
Io1=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io2=(Icc*(1+Rs/Rp)-Vco/Rp)/(exp(W*Vco));
Io=Io1+Io2;
Iph=Vco/Rp+Io*exp(W*Vco);
V=0; k=0; I=Icc;
while I>=0;
Id1=Io*(exp(W*(V+Rs*I))-1); 
Id2=Io*(exp(W*(V+Rs*I))-1);
Id=Id1+Id2; 
Ish=(V+Rs*I)/(Rp); I=Icc-Id-Ish;
if I>=0; k=k+1; II(k)=I; IIsh(k)=Ish; VV(k)=V; 
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'black'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
legend('n=1','n=1.5','n=2','n=2.5','Location', 'Best')