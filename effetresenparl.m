%Rp=2000 Ohm
Icc=0.0024;Vco=0.699;Rs=38.1;Rp=2000;
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
plot(VV,II,'b'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
%Rp=3000 Ohm
Icc=0.0024;Vco=0.699;Rs=38.1;Rp=3000;
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
plot(VV,II,'r'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
%Rp=4000 Ohm
Icc=0.0024;Vco=0.699;Rs=38.1;Rp=4000;
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
plot(VV,II,'g'); hold on;grid on
xlabel(' Tension ( V ) ');
ylabel(' Courant ( A ) ');
%Rp=6000 Ohm
Icc=0.0024;Vco=0.699;Rs=38.1;Rp=6000;
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
legend('R_{p1}=2000 (Ohm)','R_{p2}=3000 (Ohm)','R_{p3}=4000 (Ohm)','R_{p4}=6000 (Ohm)','Location', 'Best')