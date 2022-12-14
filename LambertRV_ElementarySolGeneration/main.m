clear all
clc
% startOrbit = [7081.884743,0.0012296,86.3839*pi/180,204.5888*pi/180,239.1039*pi/180,179.7762*pi/180];
% targetOrbit = [7158.977181,0.0016367,86.3876*pi/180,217.3307*pi/180,92.2436*pi/180,330.3728*pi/180];
% tmax = 7*24*3600;
% ttfLb = 0.5*3600;
% ttfUb = 6*3600;
startOrbit = [6371+2000,0.002,60*pi/180,30*pi/180,0*pi/180,0*pi/180];
targetOrbit = [6371+36000,0.0002,55*pi/180,35*pi/180,-20*pi/180,30*pi/180];
tmax = 85000;
ttfLb = 0.5*3600;
ttfUb = 85000;

addpath('./../Lambert_Gooding/')
addpath('./../CoordinateTransformation/')
tic
[numSol,Sol]=GetElementarySolution(startOrbit,targetOrbit, tmax , ttfUb , ttfLb);
toc