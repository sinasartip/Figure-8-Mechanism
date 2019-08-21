function [fitresult, gof] = createFit8(th, PTx)
%CREATEFIT1(TH,PTX)
%  Create a fit.
%
%  Data for 'four8' fit:
%      X Input : th
%      Y Output: PTx
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 05-Mar-2019 19:01:49


%% Fit: 'four8'.
[xData, yData] = prepareCurveData( th, PTx );

% Set up fittype and options.
ft = fittype( 'fourier8' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% % Plot fit with data.
% figure( 'Name', 'four8' );
% h = plot( fitresult, xData, yData );
% legend( h, 'PTx vs. th', 'four8', 'Location', 'NorthEast' );
% % Label axes
% xlabel th
% ylabel PTx
% grid on


