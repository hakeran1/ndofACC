th_real = squeeze(out.th_real);
th_ekf = out.th_ekf;
dth_ekf = out.dth_ekf;
ddth_ekf = squeeze(out.ddth_ekf)';
t = out.tout;
for i = 1:10
    theta_cell{i}.signals.values = th_real(:,i);
    theta_cell{i}.time = 0:T_state:Tstop;
end
clearvars -except th_real th_ekf dth_ekf ddth_ekf theta_cell t exec