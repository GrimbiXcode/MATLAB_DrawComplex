function zeigerplot_to_Origin(varargin)
%*************************************************************************
% Autor       : David Grimbichler
% Filename    : zeigerplot_to_origin.m
% Date        : 25.04.2016
% Version     : 1.0
%*************************************************************************
% ZEIGERPLOT_TO_ORIGIN(vec1,vec2,vec3,vec4,...) plots the given 
% vectors to the origin.
%
% function ZEIGERPLOT_TO_ORIGIN(varargin)
%   varargin  =   variable input arguments
% 
% plotsetups:   axis equal;
%               grid on;
%               hold on;
%*************************************************************************
% used functions:     - quiver()
%                     - set
%                     - findobj
%*************************************************************************
nVarargs = length(varargin);

grid on, axis equal;
hold on;
    for k = 1:nVarargs
    refStart=-(varargin{k}); arrow=(varargin{k});
    quiver(real(refStart),imag(refStart),real(arrow),imag(arrow));
    end

hAutoScale=findobj('-property','AutoScale');
set(hAutoScale,'AutoScale','off')

end

