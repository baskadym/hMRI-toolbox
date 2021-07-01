function hmri_local_defaults_deployed_7T_FIL_600um
% PURPOSE
% To set user-defined (site- or protocol-specific) defaults parameters
% which are used by the hMRI toolbox. Customized processing parameters can
% be defined, overwriting defaults from hmri_defaults. Acquisition
% protocols can be specified here as a fallback solution when no metadata
% are available. Note that the use of metadata is strongly recommended. 
%
% RECOMMENDATIONS
% Parameters defined in this file are identical, initially, to the ones
% defined in hmri_defaults.m. It is recommended, when modifying this file,
% to remove all unchanged entries and save the file with a meaningful name.
% This will help you identifying the appropriate defaults to be used for
% each protocol, and will improve the readability of the file by pointing
% to the modified parameters only.
%
% WARNING
% Modification of the defaults parameters may impair the integrity of the
% toolbox, leading to unexpected behaviour. ONLY RECOMMENDED FOR ADVANCED
% USERS - i.e. who have a good knowledge of the underlying algorithms and
% implementation. The SAME SET OF DEFAULT PARAMETERS must be used to
% process uniformly all the data from a given study. 
%
% HOW DOES IT WORK?
% The modified defaults file can be selected using the "Configure toolbox"
% branch of the hMRI-Toolbox. For customization of B1 processing
% parameters, type "help hmri_b1_standard_defaults.m". 
%
% DOCUMENTATION
% A brief description of each parameter is provided together with
% guidelines and recommendations to modify these parameters. With few
% exceptions, parameters should ONLY be MODIFIED and customized BY ADVANCED
% USERS, having a good knowledge of the underlying algorithms and
% implementation. 
% Please refer to the documentation in the github WIKI for more details. 
%__________________________________________________________________________
% Written by E. Balteau, 2017.
% Cyclotron Research Centre, University of Liege, Belgium

% Global hmri_def variable used across the whole toolbox
global hmri_def

% Whether or not to carry out RF spoiling correction:
hmri_def.imperfectSpoilCorr.enabled = true;

% Computed using hMRI Toolbox module:
hmri_def.MPMacq_set.names{8} = 'FIL_600um_2021';
hmri_def.MPMacq_set.tags{8}  = 'FIL_600um_2021';
hmri_def.MPMacq_set.vals{8}  = [19.5         19.5            6           24];
hmri_def.imperfectSpoilCorr.FIL_600um_2021.tag = 'FIL_600um_2021';
hmri_def.imperfectSpoilCorr.FIL_600um_2021.P2_a = [70.9905     -88.3723      29.3045];
hmri_def.imperfectSpoilCorr.FIL_600um_2021.P2_b = [-0.1291      0.1346      0.9616];
hmri_def.imperfectSpoilCorr.FIL_600um_2021.enabled = hmri_def.imperfectSpoilCorr.enabled;

hmri_def.interp = 7;
hmri_def.cleanup = false;