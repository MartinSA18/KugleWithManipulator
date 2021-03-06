%% Load data
%clear all
%clc

data_zero_1 = load('data_x18.8z17.9_1.csv');
data_zero_2 = load('data_x18.8z17.9_2.csv');
data_zero_3 = load('data_x18.8z17.9_3.csv');
data_zero_4 = load('data_x18.8z17.9_4.csv');
data_zero_5 = load('data_x18.8z17.9_5.csv');

data_25_10_1 = load('data_x25z10_1.csv');
data_25_10_2 = load('data_x25z10_2.csv');
data_25_10_3 = load('data_x25z10_3.csv');
data_25_10_4 = load('data_x25z10_4.csv');

data_35_0_1 = load('data_x35z0_1.csv');
data_35_0_2 = load('data_x35z0_2.csv');
data_35_0_3 = load('data_x35z0_3.csv');
data_35_0_4 = load('data_x35z0_4.csv');

data_7_14_1 = load('data_x7.5z14.3_1.csv');
data_7_14_2 = load('data_x7.5z14.3_2.csv');
data_7_14_3 = load('data_x7.5z14.3_3.csv');
data_7_14_4 = load('data_x7.5z14.3_4.csv');


data_j1_10_1 = load('data_j1_10_1.csv');
data_j1_10_2 = load('data_j1_10_2.csv');
data_j1_10_3 = load('data_j1_10_3.csv');
data_j1_10_4 = load('data_j1_10_4.csv');

data_j2_10_1 = load('data_j2_10_1.csv');
data_j2_10_2 = load('data_j2_10_2.csv');
data_j2_10_3 = load('data_j2_10_3.csv');
data_j2_10_4 = load('data_j2_10_4.csv');





%% data_zero

data_dim_zero = [length(data_zero_1), length(data_zero_2), length(data_zero_3), length(data_zero_4), length(data_zero_5)];

data_zero_combined = zeros(min(data_dim_zero)-1,3);
data_zero_reference = zeros(min(data_dim_zero)-1,2);

%joint averaging
for i=2:min(data_dim_zero)
    
    data_zero_combined(i-1,1) = (data_zero_1(i,1)+data_zero_2(i,1)+data_zero_3(i,1)+data_zero_4(i,1)+data_zero_5(i,1))/length(data_dim_zero);
    data_zero_combined(i-1,2) = (data_zero_1(i,2)+data_zero_2(i,2)+data_zero_3(i,2)+data_zero_4(i,2)+data_zero_5(i,2))/length(data_dim_zero);
    data_zero_combined(i-1,3) = ((data_zero_1(i,3)-data_zero_1(1,3))+(data_zero_2(i,3)-data_zero_2(1,3))+(data_zero_3(i,3)-data_zero_3(1,3))+(data_zero_4(i,3)-data_zero_4(1,3))+(data_zero_5(i,3)-data_zero_5(1,3)))/length(data_dim_zero);
    data_zero_reference(i-1,1) = data_zero_1(1,1);
    data_zero_reference(i-1,2) = data_zero_1(1,2);
end

%plotting
figure('Name', 'Data Zero, Joint 1 average')
plot([0, (data_zero_1(end,3)-data_zero_1(1,3))/1000],[data_zero_1(1,1), data_zero_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot(data_zero_combined(:,3)/1000, data_zero_combined(:,1), 'LineWidth', 1)
title('Data zero - Joint 1 Averaged response')

figure('Name', 'Data Zero, Joint 2 average')
plot([0, (data_zero_1(end,3)-data_zero_1(1,3))/1000],[data_zero_1(1,2), data_zero_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot(data_zero_combined(:,3)/1000, data_zero_combined(:,2), 'LineWidth', 1)
title('Data zero - Joint 2 Averaged response')


%% data_25_10

data_dim_25_10 = [length(data_25_10_1), length(data_25_10_2), length(data_25_10_3), length(data_25_10_4)];

data_25_10_combined = zeros(min(data_dim_25_10)-1,3);
data_25_10_reference = zeros(min(data_dim_25_10)-1,2);

%joint averaging
for i=2:min(data_dim_25_10)
    
    data_25_10_combined(i-1,1) = (data_25_10_1(i,1)+data_25_10_2(i,1)+data_25_10_3(i,1)+data_25_10_4(i,1))/length(data_dim_25_10);
    data_25_10_combined(i-1,2) = (data_25_10_1(i,2)+data_25_10_2(i,2)+data_25_10_3(i,2)+data_25_10_4(i,2))/length(data_dim_25_10);
    data_25_10_combined(i-1,3) = ((data_25_10_1(i,3)-data_25_10_1(1,3))+(data_25_10_2(i,3)-data_25_10_2(1,3))+(data_25_10_3(i,3)-data_25_10_3(1,3))+(data_25_10_4(i,3)-data_25_10_4(1,3)))/length(data_dim_25_10);
    data_25_10_reference(i-1,1) = data_25_10_1(1,1);
    data_25_10_reference(i-1,2) = data_25_10_1(1,2);
end

%plotting
figure('Name', 'Data Zero, Joint 1 average')
plot([0, (data_25_10_1(end,3)-data_25_10_1(1,3))/1000],[data_25_10_1(1,1), data_25_10_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot(data_25_10_combined(:,3)/1000, data_25_10_combined(:,1), 'LineWidth', 1)
title('Data zero - Joint 1 Averaged response')

figure('Name', 'Data Zero, Joint 2 average')
plot([0, (data_25_10_1(end,3)-data_25_10_1(1,3))/1000],[data_25_10_1(1,2), data_25_10_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot(data_25_10_combined(:,3)/1000, data_25_10_combined(:,2), 'LineWidth', 1)
title('Data zero - Joint 2 Averaged response')



%% data_35_0

data_dim_35_0 = [length(data_35_0_1), length(data_35_0_2), length(data_35_0_3), length(data_35_0_4)];

data_35_0_combined = zeros(min(data_dim_35_0)-1,3);
data_35_0_reference = zeros(min(data_dim_35_0)-1,2);

%joint averaging
for i=2:min(data_dim_35_0)
    
    data_35_0_combined(i-1,1) = (data_35_0_1(i,1)+data_35_0_2(i,1)+data_35_0_3(i,1)+data_35_0_4(i,1))/length(data_dim_35_0);
    data_35_0_combined(i-1,2) = (data_35_0_1(i,2)+data_35_0_2(i,2)+data_35_0_3(i,2)+data_35_0_4(i,2))/length(data_dim_35_0);
    data_35_0_combined(i-1,3) = ((data_35_0_1(i,3)-data_35_0_1(1,3))+(data_35_0_2(i,3)-data_35_0_2(1,3))+(data_35_0_3(i,3)-data_35_0_3(1,3))+(data_35_0_4(i,3)-data_35_0_4(1,3)))/length(data_dim_35_0);
    data_35_0_reference(i-1,1) = data_35_0_1(1,1);
    data_35_0_reference(i-1,2) = data_35_0_1(1,2);
end

%plotting
figure('Name', 'Data Zero, Joint 1 average')
plot([0, (data_35_0_1(end,3)-data_35_0_1(1,3))/1000],[data_35_0_1(1,1), data_35_0_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot(data_35_0_combined(:,3)/1000, data_35_0_combined(:,1), 'LineWidth', 1)
title('Data zero - Joint 1 Averaged response')

figure('Name', 'Data Zero, Joint 2 average')
plot([0, (data_35_0_1(end,3)-data_35_0_1(1,3))/1000],[data_35_0_1(1,2), data_35_0_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot(data_35_0_combined(:,3)/1000, data_35_0_combined(:,2), 'LineWidth', 1)
title('Data zero - Joint 2 Averaged response')


%% data_7_14

data_dim_7_14 = [length(data_7_14_1), length(data_7_14_2), length(data_7_14_3), length(data_7_14_4)];

data_7_14_combined = zeros(min(data_dim_7_14)-1,3);
data_7_14_reference = zeros(min(data_dim_7_14)-1,2);

%joint averaging
for i=2:min(data_dim_7_14)
    
    data_7_14_combined(i-1,1) = (data_7_14_1(i,1)+data_7_14_2(i,1)+data_7_14_3(i,1)+data_7_14_4(i,1))/length(data_dim_7_14);
    data_7_14_combined(i-1,2) = (data_7_14_1(i,2)+data_7_14_2(i,2)+data_7_14_3(i,2)+data_7_14_4(i,2))/length(data_dim_7_14);
    data_7_14_combined(i-1,3) = ((data_7_14_1(i,3)-data_7_14_2(1,3))+(data_7_14_2(i,3)-data_7_14_2(1,3))+(data_7_14_3(i,3)-data_7_14_3(1,3))+(data_7_14_4(i,3)-data_7_14_4(1,3)))/length(data_dim_7_14);
    data_7_14_reference(i-1,1) = data_7_14_1(1,1);
    data_7_14_reference(i-1,2) = data_7_14_1(1,2);
end

%plotting
figure('Name', 'Data x7z14, Joint 1 average')
plot([0, (data_7_14_1(end,3)-data_7_14_1(1,3))/1000],[data_7_14_1(1,1), data_7_14_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot(data_7_14_combined(:,3)/1000, data_7_14_combined(:,1), 'LineWidth', 1)
title('Data X7 Z14 - Joint 1 Averaged response')

figure('Name', 'Data Zero, Joint 2 average')
plot([0, (data_7_14_1(end,3)-data_7_14_1(1,3))/1000],[data_7_14_1(1,2), data_7_14_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot(data_7_14_combined(:,3)/1000, data_7_14_combined(:,2), 'LineWidth', 1)
title('Data X7 Z14 - Joint 2 Averaged response')



%% data general

data_1 = data_j2_10_1;
data_2 = data_j2_10_2;
data_3 = data_j2_10_3;
data_4 = data_j2_10_4;

data_dim = [length(data_1), length(data_2), length(data_3), length(data_4)];

data_combined = zeros(min(data_dim)-1,3);
data_reference = zeros(min(data_dim)-1,2);

%joint averaging
for i=2:min(data_dim)
    
    data_combined(i-1,1) = (data_1(i,1)+data_2(i,1)+data_3(i,1)+data_4(i,1))/length(data_dim);
    data_combined(i-1,2) = (data_1(i,2)+data_2(i,2)+data_3(i,2)+data_4(i,2))/length(data_dim);
    data_combined(i-1,3) = ((data_1(i,3)-data_2(1,3))+(data_2(i,3)-data_2(1,3))+(data_3(i,3)-data_3(1,3))+(data_4(i,3)-data_4(1,3)))/length(data_dim);
    data_reference(i-1,1) = data_1(1,1);
    data_reference(i-1,2) = data_1(1,2);
end

%plotting
figure('Name', 'Data x7z14, Joint 1 average')
plot([0, (data_1(end,3)-data_1(1,3))/1000],[data_1(1,1), data_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot(data_combined(:,3)/1000, data_combined(:,1), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Reference -10�', 'Joint 2 response')
title('Averaged Response Joint 2', 'fontsize', 25)

% figure('Name', 'Data Zero, Joint 2 average')
% plot([0, (data_1(end,3)-data_1(1,3))/1000],[data_1(1,2), data_1(1,2)], 'r', 'LineWidth', 1)
% hold on
% plot(data_combined(:,3)/1000, data_combined(:,2), 'LineWidth', 1)
% title('Joint 3 Averaged response')




%% sample time for data_zero

for i=1:length(data_zero_combined)-1
    data_sample_time(i) = data_zero_combined(i+1,3)-data_zero_combined(i,3);
end

avg_sample_time = mean(data_sample_time)/1000

%% sample time for 25_10

for i=1:length(data_25_10_combined)-1
    data_sample_time_25_10(i) = data_25_10_combined(i+1,3)-data_25_10_combined(i,3);
end

avg_sample_time_25_10 = mean(data_sample_time_25_10)/1000

%% sample time for 35_0

for i=1:length(data_35_0_combined)-1
    data_sample_time_35_0(i) = data_35_0_combined(i+1,3)-data_35_0_combined(i,3);
end

avg_sample_time_35_0 = mean(data_sample_time_35_0)/1000


%% sample time for 7_14

for i=1:length(data_7_14_combined)-1
    data_sample_time_7_14(i) = data_7_14_combined(i+1,3)-data_7_14_combined(i,3);
end

avg_sample_time_7_14 = mean(data_sample_time_7_14)/1000

%% sample time

for i=1:length(data_combined)-1
    data_sample_time(i) = data_combined(i+1,3)-data_combined(i,3);
end

avg_sample_time = mean(data_sample_time)/1000


%% TF plots
options = stepDataOptions('StepAmplitude', -57.06);
[y_zero_j1, t_zero_j1] = step(tf_zero_joint1, options);
[y_25_10_j1, t_25_10_j1] = step(tf_25_10_joint1, options);
[y_35_0_j1, t_35_0_j1] = step(tf_35_0_joint1, options);

figure('Name', 'Transfer functions joint 1 plot')
plot(t_zero_j1, squeeze(y_zero_j1), 'LineWidth', 2)
hold on
plot(t_25_10_j1, squeeze(y_25_10_j1), 'LineWidth', 2)
plot(t_35_0_j1, squeeze(y_35_0_j1), 'LineWidth', 2)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('X18.8 Z17.9','X25 Z10','X35 Z0')
title('Step Responses Joint 1, Input: -57.06', 'fontsize', 25)


options = stepDataOptions('StepAmplitude', 14.08);

[y_zero_j2, t_zero_j2] = step(tf_zero_joint2, options);
[y_25_10_j2, t_25_10_j2] = step(tf_25_10_joint2, options);
[y_35_0_j2, t_35_0_j2] = step(tf_35_0_joint2, options);

figure('Name', 'Transfer functions joint 2')
plot(t_zero_j2, squeeze(y_zero_j2), 'LineWidth', 2)
hold on
plot(t_25_10_j2, squeeze(y_25_10_j2), 'LineWidth', 2)
plot(t_35_0_j2, squeeze(y_35_0_j2), 'LineWidth', 2)

xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('X18.8 Z17.9','X25 Z10','X35 Z0')
title('Step Responses joint 2, Input 14.08', 'fontsize', 25)


%% CORRECT TRANSFER FUNCTIONS PLOT!!
options1 = stepDataOptions('StepAmplitude', 2);
options2 = stepDataOptions('StepAmplitude', -10);
options3 = stepDataOptions('StepAmplitude', 10);

[y_joint_1, t_joint_1] = step(tf_joint_1, options1);
[y_joint_2, t_joint_2] = step(tf_joint_2, options2);
[y_joint_3, t_joint_3] = step(tf_joint_3, options3);

%[y_joint_2, t_joint_2] = step(tf_joint2_App1, options2);
%[y_joint_3, t_joint_3] = step(tf_joint3_App1, options3);

% figure('Name', 'Transfer function joint 1')
% plot(t_joint_1, squeeze(y_joint_1), 'LineWidth', 2)
% hold on
% plot(theta1_out(400:700,1)-theta1_out(400,1), theta1_out(400:700,3), 'LineWidth', 1)
% set(gca,'FontSize',20)
% xlabel('Time [s]', 'fontsize', 20)
% ylabel('Joint Angle [degrees]', 'fontsize', 20)
% legend('Transfer Function Response', 'Data')
% title('Transfer Function Joint 1 Response', 'fontsize', 25)



% figure('Name', 'Transfer function joint 2')
% plot(t_joint_2, squeeze(y_joint_2), 'LineWidth', 2)
% hold on
% plot((data_combined(1:10,3)/1000)-(data_combined(1,3)/1000),data_combined(1:10,1), 'LineWidth', 1)
% set(gca,'FontSize',20)
% xlabel('Time [s]', 'fontsize', 20)
% ylabel('Joint Angle [degrees]', 'fontsize', 20)
% legend('Transfer Function Response', 'Data')
% title('Transfer Function Joint 2 Response', 'fontsize', 25)



figure('Name', 'Transfer function joint 3')
plot(t_joint_3, squeeze(y_joint_3), 'LineWidth', 2)
hold on
plot((data_combined(1:10,3)/1000)-(data_combined(1,3)/1000),data_combined(1:10,2), 'LineWidth', 1)
set(gca,'FontSize',20)

xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Transfer Function Response', 'Data')
title('Transfer Function Joint 3 Response', 'fontsize', 25)


%% Data plot in 6 graphs

figure('Name', 'zero_DataJoint1')

%plot([0, (data_zero_1(end,3)-data_zero_1(1,3))/1000],[data_zero_1(1,1), data_zero_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot((data_zero_1(2:end,3)-data_zero_1(1,3))/1000, data_zero_1(2:end,1), 'LineWidth', 1)
plot((data_zero_2(2:end,3)-data_zero_2(1,3))/1000, data_zero_2(2:end,1), 'LineWidth', 1)
plot((data_zero_3(2:end,3)-data_zero_3(1,3))/1000, data_zero_3(2:end,1), 'LineWidth', 1)
plot((data_zero_4(2:end,3)-data_zero_4(1,3))/1000, data_zero_4(2:end,1), 'LineWidth', 1)
plot((data_zero_5(2:end,3)-data_zero_5(1,3))/1000, data_zero_5(2:end,1), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response 1','Response 2','Response 3', 'Response 4', 'Response 5')
title('Joint 1 Measured Response, Input X18.8 Z17.9', 'fontsize', 25)


figure('Name', 'zero_DataJoint2')

%plot([0, (data_zero_1(end,3)-data_zero_1(1,3))/1000],[data_zero_1(1,2), data_zero_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot((data_zero_1(2:end,3)-data_zero_1(1,3))/1000, data_zero_1(2:end,2), 'LineWidth', 1)
plot((data_zero_2(2:end,3)-data_zero_2(1,3))/1000, data_zero_2(2:end,2), 'LineWidth', 1)
plot((data_zero_3(2:end,3)-data_zero_3(1,3))/1000, data_zero_3(2:end,2), 'LineWidth', 1)
plot((data_zero_4(2:end,3)-data_zero_4(1,3))/1000, data_zero_4(2:end,2), 'LineWidth', 1)
plot((data_zero_5(2:end,3)-data_zero_5(1,3))/1000, data_zero_5(2:end,2), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response 1','Response 2','Response 3', 'Response 4', 'Response 5')
title('Joint 2 Measured Response, Input X18.8 Z17.9', 'fontsize', 25)




figure('Name', '25_10_DataJoint1')

%plot([0, (data_25_10_1(end,3)-data_25_10_1(1,3))/1000],[data_25_10_1(1,1), data_25_10_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot((data_25_10_1(2:end,3)-data_25_10_1(1,3))/1000, data_25_10_1(2:end,1), 'LineWidth', 1)
plot((data_25_10_2(2:end,3)-data_25_10_2(1,3))/1000, data_25_10_2(2:end,1), 'LineWidth', 1)
plot((data_25_10_3(2:end,3)-data_25_10_3(1,3))/1000, data_25_10_3(2:end,1), 'LineWidth', 1)
plot((data_25_10_4(2:end,3)-data_25_10_4(1,3))/1000, data_25_10_4(2:end,1), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response 1','Response 2','Response 3', 'Response 4')
title('Joint 1 Measured Response, Input X25 Z10', 'fontsize', 25)


figure('Name', '25_10_DataJoint2')

%plot([0, (data_25_10_1(end,3)-data_25_10_1(1,3))/1000],[data_25_10_1(1,2), data_25_10_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot((data_25_10_1(2:end,3)-data_25_10_1(1,3))/1000, data_25_10_1(2:end,2), 'LineWidth', 1)
plot((data_25_10_2(2:end,3)-data_25_10_2(1,3))/1000, data_25_10_2(2:end,2), 'LineWidth', 1)
plot((data_25_10_3(2:end,3)-data_25_10_3(1,3))/1000, data_25_10_3(2:end,2), 'LineWidth', 1)
plot((data_25_10_4(2:end,3)-data_25_10_4(1,3))/1000, data_25_10_4(2:end,2), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response 1','Response 2','Response 3', 'Response 4')
title('Joint 2 Measured Response, Input X25 Z10', 'fontsize', 25)




figure('Name', '35_0_DataJoint1')

%plot([0, (data_35_0_1(end,3)-data_35_0_1(1,3))/1000],[data_35_0_1(1,1), data_35_0_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot((data_35_0_1(2:end,3)-data_35_0_1(1,3))/1000, data_35_0_1(2:end,1), 'LineWidth', 1)
plot((data_35_0_2(2:end,3)-data_35_0_2(1,3))/1000, data_35_0_2(2:end,1), 'LineWidth', 1)
plot((data_35_0_3(2:end,3)-data_35_0_3(1,3))/1000, data_35_0_3(2:end,1), 'LineWidth', 1)
plot((data_35_0_4(2:end,3)-data_35_0_4(1,3))/1000, data_35_0_4(2:end,1), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response 1','Response 2','Response 3', 'Response 4')
title('Joint 1 Measured Response, Input X35 Z0', 'fontsize', 25)


figure('Name', '35_0_DataJoint2')

%plot([0, (data_25_10_1(end,3)-data_25_10_1(1,3))/1000],[data_25_10_1(1,2), data_25_10_1(1,2)], 'r', 'LineWidth', 1)
hold on
plot((data_35_0_1(2:end,3)-data_35_0_1(1,3))/1000, data_35_0_1(2:end,2), 'LineWidth', 1)
plot((data_35_0_2(2:end,3)-data_35_0_2(1,3))/1000, data_35_0_2(2:end,2), 'LineWidth', 1)
plot((data_35_0_3(2:end,3)-data_35_0_3(1,3))/1000, data_35_0_3(2:end,2), 'LineWidth', 1)
plot((data_35_0_4(2:end,3)-data_35_0_4(1,3))/1000, data_35_0_4(2:end,2), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response 1','Response 2','Response 3', 'Response 4')
title('Joint 2 Measured Response, Input X35 Z0', 'fontsize', 25)



%% Data plot combined in joints


figure('Name', 'DataJoint1')

%plot([0, (data_zero_1(end,3)-data_zero_1(1,3))/1000],[data_zero_1(1,1), data_zero_1(1,1)], 'r', 'LineWidth', 1)
hold on
plot((data_zero_1(2:end,3)-data_zero_1(1,3))/1000, data_zero_1(2:end,1), 'LineWidth', 1)
plot((data_zero_2(2:end,3)-data_zero_2(1,3))/1000, data_zero_2(2:end,1), 'LineWidth', 1)
plot((data_zero_3(2:end,3)-data_zero_3(1,3))/1000, data_zero_3(2:end,1), 'LineWidth', 1)
plot((data_zero_4(2:end,3)-data_zero_4(1,3))/1000, data_zero_4(2:end,1), 'LineWidth', 1)
plot((data_zero_5(2:end,3)-data_zero_5(1,3))/1000, data_zero_5(2:end,1), 'LineWidth', 1)

plot((data_25_10_1(2:end,3)-data_25_10_1(1,3))/1000, data_25_10_1(2:end,1), 'LineWidth', 1)
plot((data_25_10_2(2:end,3)-data_25_10_2(1,3))/1000, data_25_10_2(2:end,1), 'LineWidth', 1)
plot((data_25_10_3(2:end,3)-data_25_10_3(1,3))/1000, data_25_10_3(2:end,1), 'LineWidth', 1)
plot((data_25_10_4(2:end,3)-data_25_10_4(1,3))/1000, data_25_10_4(2:end,1), 'LineWidth', 1)

plot((data_35_0_1(2:end,3)-data_35_0_1(1,3))/1000, data_35_0_1(2:end,1), 'LineWidth', 1)
plot((data_35_0_2(2:end,3)-data_35_0_2(1,3))/1000, data_35_0_2(2:end,1), 'LineWidth', 1)
plot((data_35_0_3(2:end,3)-data_35_0_3(1,3))/1000, data_35_0_3(2:end,1), 'LineWidth', 1)
plot((data_35_0_4(2:end,3)-data_35_0_4(1,3))/1000, data_35_0_4(2:end,1), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response X18.8 Z17.9','Response X18.8 Z17.9','Response X18.8 Z17.9', 'Response X18.8 Z17.9', 'Response X18.8 Z17.9', 'Response X25 Z10', 'Response X25 Z10', 'Response X25 Z10', 'Response X25 Z10', 'Response X35 Z0', 'Response X35 Z0', 'Response X35 Z0', 'Response X35 Z0')
title('Joint 1 Measured Responses', 'fontsize', 25)

%%
figure('Name', 'DataJoint2')
hold on
plot((data_zero_1(2:end,3)-data_zero_1(1,3))/1000, data_zero_1(2:end,2), 'LineWidth', 1)
plot((data_zero_2(2:end,3)-data_zero_2(1,3))/1000, data_zero_2(2:end,2), 'LineWidth', 1)
plot((data_zero_3(2:end,3)-data_zero_3(1,3))/1000, data_zero_3(2:end,2), 'LineWidth', 1)
plot((data_zero_4(2:end,3)-data_zero_4(1,3))/1000, data_zero_4(2:end,2), 'LineWidth', 1)
plot((data_zero_5(2:end,3)-data_zero_5(1,3))/1000, data_zero_5(2:end,2), 'LineWidth', 1)

plot((data_25_10_1(2:end,3)-data_25_10_1(1,3))/1000, data_25_10_1(2:end,2), 'LineWidth', 1)
plot((data_25_10_2(2:end,3)-data_25_10_2(1,3))/1000, data_25_10_2(2:end,2), 'LineWidth', 1)
plot((data_25_10_3(2:end,3)-data_25_10_3(1,3))/1000, data_25_10_3(2:end,2), 'LineWidth', 1)
plot((data_25_10_4(2:end,3)-data_25_10_4(1,3))/1000, data_25_10_4(2:end,2), 'LineWidth', 1)

plot((data_35_0_1(2:end,3)-data_35_0_1(1,3))/1000, data_35_0_1(2:end,2), 'LineWidth', 1)
plot((data_35_0_2(2:end,3)-data_35_0_2(1,3))/1000, data_35_0_2(2:end,2), 'LineWidth', 1)
plot((data_35_0_3(2:end,3)-data_35_0_3(1,3))/1000, data_35_0_3(2:end,2), 'LineWidth', 1)
plot((data_35_0_4(2:end,3)-data_35_0_4(1,3))/1000, data_35_0_4(2:end,2), 'LineWidth', 1)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response X18.8 Z17.9','Response X18.8 Z17.9','Response X18.8 Z17.9', 'Response X18.8 Z17.9', 'Response X18.8 Z17.9', 'Response X25 Z10', 'Response X25 Z10', 'Response X25 Z10', 'Response X25 Z10', 'Response X35 Z0', 'Response X35 Z0', 'Response X35 Z0', 'Response X35 Z0')
title('Joint 2 Measured Responses', 'fontsize', 25)


%%
figure('Name', 'Theta2')
hold on
plot((data_7_14_1(2:end,3)-data_7_14_1(1,3))/1000, data_7_14_1(2:end,1), 'LineWidth', 1)
plot((data_7_14_2(2:end,3)-data_7_14_2(1,3))/1000, data_7_14_2(2:end,1), 'LineWidth', 1)
plot((data_7_14_3(2:end,3)-data_7_14_3(1,3))/1000, data_7_14_3(2:end,1), 'LineWidth', 1)
plot((data_7_14_4(2:end,3)-data_7_14_4(1,3))/1000, data_7_14_4(2:end,1), 'LineWidth', 1)


xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response X7.5 Z14.3','Response X7.5 Z14.3','Response X7.5 Z14.3', 'Response X7.5 Z14.3')
title('Joint 2 Measured Responses', 'fontsize', 25)


figure('Name', 'Theta3')
hold on
plot((data_7_14_1(2:end,3)-data_7_14_1(1,3))/1000, data_7_14_1(2:end,2), 'LineWidth', 1)
plot((data_7_14_2(2:end,3)-data_7_14_2(1,3))/1000, data_7_14_2(2:end,2), 'LineWidth', 1)
plot((data_7_14_3(2:end,3)-data_7_14_3(1,3))/1000, data_7_14_3(2:end,2), 'LineWidth', 1)
plot((data_7_14_4(2:end,3)-data_7_14_4(1,3))/1000, data_7_14_4(2:end,2), 'LineWidth', 1)


xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response X7.5 Z14.3','Response X7.5 Z14.3','Response X7.5 Z14.3', 'Response X7.5 Z14.3')
title('Joint 3 Measured Responses', 'fontsize', 25)


%%
figure('Name', 'Theta2')
hold on
plot((data_j1_10_1(2:end,3)-data_j1_10_1(1,3))/1000, data_j1_10_1(2:end,1), 'LineWidth', 1)
plot((data_j1_10_2(2:end,3)-data_j1_10_2(1,3))/1000, data_j1_10_2(2:end,1), 'LineWidth', 1)
plot((data_j1_10_3(2:end,3)-data_j1_10_3(1,3))/1000, data_j1_10_3(2:end,1), 'LineWidth', 1)
plot((data_j1_10_4(2:end,3)-data_j1_10_4(1,3))/1000, data_j1_10_4(2:end,1), 'LineWidth', 1)

set(gca,'FontSize', 20)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Joint 2 response 1','Joint 2 response 2','Joint 2 response 3', 'Joint 2 response 4')
title('Joint 2 Measured Responses', 'fontsize', 25)


figure('Name', 'Theta3')
hold on
plot((data_j2_10_1(2:end,3)-data_j2_10_1(1,3))/1000, data_j2_10_1(2:end,2), 'LineWidth', 1)
plot((data_j2_10_2(2:end,3)-data_j2_10_2(1,3))/1000, data_j2_10_2(2:end,2), 'LineWidth', 1)
plot((data_j2_10_3(2:end,3)-data_j2_10_3(1,3))/1000, data_j2_10_3(2:end,2), 'LineWidth', 1)
plot((data_j2_10_4(2:end,3)-data_j2_10_4(1,3))/1000, data_j2_10_4(2:end,2), 'LineWidth', 1)

set(gca,'FontSize', 20)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Joint 3 response 1','Joint 3 response 2','Joint 3 response 3', 'Joint 3 response 4')
title('Joint 3 Measured Responses', 'fontsize', 25)




%%
figure('Name', 'Data_Theta_1')
plot(theta1_out(:,1), theta1_out(:,3), 'LineWidth', 2)
hold on
plot(theta1_out(:,1), theta1_out(:,2), 'LineWidth', 1)
set(gca,'FontSize',20)
xlabel('Time [s]', 'fontsize', 20)
ylabel('Joint Angle [degrees]', 'fontsize', 20)
legend('Response Theta 1','Reference 2� step')
title('Joint 1 Measured Response', 'fontsize', 25)
