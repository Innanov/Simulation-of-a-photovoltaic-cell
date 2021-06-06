%Rs=28 Ohm
Icc=0.0024;Vco=0.699;Rs=28;Rp=3683;
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
IRp=(V+Rs*I)/(Rp); I=Icc-Id-IRp;
if I>=0; k=k+1; II(k)=I; IIRp(k)=IRp; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'g'); hold on;grid on
xlabel(' tension ( V ) ');
ylabel(' Courant ( A ) ');
%Rs=38 Ohm
Icc=0.0024;Vco=0.699;Rs=38;Rp=3683;
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
IRp=(V+Rs*I)/(Rp); I=Icc-Id-IRp;
if I>=0; k=k+1; II(k)=I; IIRp(k)=IRp; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'b'); hold on;grid on
xlabel(' tension ( V ) ');
ylabel(' Courant ( A ) ');
%Rs=48 Ohm
Icc=0.0024;Vco=0.699;Rs=48;Rp=3683;
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
IRp=(V+Rs*I)/(Rp); I=Icc-Id-IRp;
if I>=0; k=k+1; II(k)=I; IIRp(k)=IRp; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'red'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
%Rs=58 Ohm
Icc=0.0024;Vco=0.699;Rs=58;Rp=3683;
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
IRp=(V+Rs*I)/(Rp); I=Icc-Id-IRp;
if I>=0; k=k+1; II(k)=I; IIRp(k)=IRp; VV(k)=V;
IIph(k)=Icc; IId(k)=Id; end;
V=V+0.01; end;
VV=[VV Vco]; II=[II 0];
plot(VV,II,'black'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
legend('R_{s}=28 (Ohm)','R_{s}=38 (Ohm)','R_{s}=48 (Ohm)','R_{s}=58 (Ohm)','Location', 'Best')
