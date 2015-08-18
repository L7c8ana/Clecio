clear
close
clf

%teste1

t=(1:.01:10);
f=sin(2*pi.*t); % amostragem do sinal
%subplot(2,1,1)
plot(t,f) % Sinal de entrada
%[B,A]=butter(1,0.1); % Calcula coeficientes do filtro de 2ª
% ordem,
 % fs/2=50Hz e fo=5Hz, entao Wn=5/50=0.1
%saida=filter(B,A,f); % Filtra o sinal. Resultando no vetor de
 % saída.
%subplot(2,1,2)
%plot(t,saida)

%teste 2
%x = -4:4;
%y = [0 .15 1.12 2.36 2.36 1.46 .49 .06 0];
%cs = spline(x,y);
%xx = linspace(-4,4,101);
%plot(x,y,'o',xx,ppval(cs,xx),'-');

%teste 3
%y = [0 .5 1 1.5 2 1.5 1 .5 0 -.5 -1 -1.5 -2 -1.5 -1 -.5 0];
%N = length(y);
%L = 5;
%M = N*L;
%x = 0:L:L*N-1;
%xi = 0:M-1;
%yi = interpft(y,M);
%plot(x,y,'o',xi,yi,'*')
%legend('Original data','Interpolated data')

%teste 3

% Interpolation Example
% Spline curve
% A very simple example of using spline to draw a curve
% through a set of points
% this is NOT the same as a best fit curve,
% but it might be useful for a roller coaster!
clear all; close all; clc;
x = 0:10; % simple set of x values
y = randi(20,size(x)); % random y values for each x value
xx = linspace(0,10,1000); % many x values for plotting
yy = spline(x,y,xx); % generate y values based on spline interpolation
plot(x,y,'ro'); % red data points
hold on;
plot(xx,yy,'b-'); % blue spline curve
legend('data points','spline curve');
title('A spline is NOT a best fit curve');