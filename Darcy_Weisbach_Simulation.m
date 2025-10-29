%% Darcy–Weisbach Simulation (API 610 Reference)
% Author: Gianluigi Riccardi
% Simulation of suction vs discharge flow conditions for a centrifugal pump
% ------------------------------------------------------------------------
% This script applies the Darcy–Weisbach equation to evaluate
% head losses between suction and discharge lines.
%
% Reference:
% - API 610: Centrifugal Pumps for Petroleum, Petrochemical and Natural Gas Industries
% - f = 0.02 typical for smooth SAIS carbon-steel process piping
% ------------------------------------------------------------------------

clear; clc; close all;

% Flow rate [m^3/s] (50 m³/h)
Q = 50 / 3600;           

% Pipe diameters [m]
Ds = 0.10;               % Suction line (DN100 ≈ 4”)
Dd = 0.076;              % Discharge line (DN80 ≈ 3”)

% Constants
g = 9.81;                % Gravity [m/s²]
f = 0.02;                % Friction factor (smooth steel)
L = 4;                   % Pipe length [m]

% Cross-sectional area function
A = @(D) pi * D^2 / 4;

% Velocities [m/s]
v_suction   = Q / A(Ds);
v_discharge = Q / A(Dd);

% Head losses [m]
hf_suction   = f * (L / Ds) * (v_suction^2 / (2 * g));
hf_discharge = f * (L / Dd) * (v_discharge^2 / (2 * g));

% Display numerical results
fprintf('--- Darcy–Weisbach Simulation Results ---\n');
fprintf('Suction velocity     = %.2f m/s\n', v_suction);
fprintf('Discharge velocity   = %.2f m/s\n', v_discharge);
fprintf('Suction head loss    = %.3f m\n', hf_suction);
fprintf('Discharge head loss  = %.3f m\n', hf_discharge);

% Visualization
values = [v_suction v_discharge; hf_suction hf_discharge];
figure('Name','Darcy–Weisbach Simulation','NumberTitle','off');
bar(values');
set(gca, 'XTickLabel', {'Suction','Discharge'});
legend({'Velocity [m/s]', 'Head loss h_f [m]'}, 'Location', 'northwest');
title('Suction vs Discharge: Velocity and Head Loss');
xlabel('Pipe section');
ylabel('Magnitude');
grid on;

% 2025 – Gianluigi Riccardi | ReliaVib Initiative
