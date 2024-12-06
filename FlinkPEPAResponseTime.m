clear 
clc

%画图数据区
% x=0:100;%创建一个从0到100的向量x，但后面被覆盖了。
x=[1,5,10,50,100];%重新定义向量x，包含元素1, 5, 10, 50, 100。
%x=[0,25,50,75,100];
%设置不同的速率和工作负载参数： 
Rate1=0.1;
Rate2=0.8;
Rate3=1;
Rate4=5;
Ratem_1=0.1;
Ratem_2=0.8;
Ratem_3=1;
Ratem_4=5;
%定义了一系列Spark系统中的参数向量 类似于组件分类fmb 组件名称f1f2f3 m1m2m3m4m5 b1b2b3





% global fun1_r_build_JobGraph; fun1_r_build_JobGraph = 10; 全局变量用起来太繁琐了 放弃了
% global fun2_r_build_JobGraph; fun2_r_build_JobGraph = 10;
% global fun3_r_build_JobGraph; fun3_r_build_JobGraph = 10;
% global fun4_r_build_JobGraph; fun4_r_build_JobGraph = 10;
% global fun5_r_build_JobGraph; fun5_r_build_JobGraph = 10;
% global fun6_r_build_JobGraph; fun6_r_build_JobGraph = 10;
% 
% global fun1_r_distribute_Tasks; fun1_r_distribute_Tasks=3; %3和10效果大差不差 我用最开始设定的
% global fun2_r_distribute_Tasks; fun2_r_distribute_Tasks=100;
% global fun3_r_distribute_Tasks; fun3_r_distribute_Tasks=200;
% global fun4_r_distribute_Tasks; fun4_r_distribute_Tasks=10;
% global fun5_r_distribute_Tasks; fun5_r_distribute_Tasks=100;
% global fun6_r_distribute_Tasks; fun6_r_distribute_Tasks=200;
% 
% global fun1_r_run_Subtasks; fun1_r_run_Subtasks=10;
% global fun2_r_run_Subtasks; fun2_r_run_Subtasks=10;
% global fun3_r_run_Subtasks; fun3_r_run_Subtasks=10;
% global fun4_r_run_Subtasks; fun4_r_run_Subtasks=100;
% global fun5_r_run_Subtasks; fun5_r_run_Subtasks=100;
% global fun6_r_run_Subtasks; fun6_r_run_Subtasks=100;




%Client1=[1,0,0,0];Client2=[5,0,0,0];Client3=[10,0,0,0];
% JobGraph1=[1,0,0];JobGraph2=[10,0,0];JobGraph3=[20,0,0];
% Dispatcher1=[1,0,0,0];Dispatcher2=[10,0,0,0];Dispatcher3=[20,0,0,0];
% JobManager1=[1,0,0,0,0,0,0,0,0,0];JobManager2=[10,0,0,0,0,0,0,0,0,0];JobManager3=[20,0,0,0,0,0,0,0,0,0];
%ResourceManager=[1,0,0,0,0,0];
% TaskManager1=[5,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager2=[10,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager3=[15,0,0,0,0,0,0,0,0,0,0,0,0];
% SubTasks1=[5,0,0,0,0,0,0,0,0];SubTasks2=[10,0,0,0,0,0,0,0,0];SubTasks3=[15,0,0,0,0,0,0,0,0];
% Datas1=[5,0,0,0];Datas2=[10,0,0,0];Datas3=[15,0,0,0]; 

%Client1=[1,0,0,0];Client2=[5,0,0,0];Client3=[10,0,0,0];
% JobGraph1=[1,0,0];JobGraph2=[30,0,0];JobGraph3=[60,0,0];
% Dispatcher1=[1,0,0,0];Dispatcher2=[30,0,0,0];Dispatcher3=[60,0,0,0];
% JobManager1=[1,0,0,0,0,0,0,0,0,0];JobManager2=[30,0,0,0,0,0,0,0,0,0];JobManager3=[60,0,0,0,0,0,0,0,0,0];
%ResourceManager=[1,0,0,0,0,0];
% TaskManager1=[30,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager2=[60,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager3=[90,0,0,0,0,0,0,0,0,0,0,0,0];
% TaskManager4=[120,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager5=[150,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager6=[180,0,0,0,0,0,0,0,0,0,0,0,0];
% SubTasks1=[30,0,0,0,0,0,0,0,0];SubTasks2=[60,0,0,0,0,0,0,0,0];SubTasks3=[90,0,0,0,0,0,0,0,0];
% SubTasks4=[120,0,0,0,0,0,0,0,0];SubTasks5=[150,0,0,0,0,0,0,0,0];SubTasks6=[180,0,0,0,0,0,0,0,0];
% Datas1=[30,0,0,0];Datas2=[60,0,0,0];Datas3=[90,0,0,0];Datas4=[120,0,0,0];Datas5=[150,0,0,0];Datas6=[180,0,0,0];

% Client1=[1,0,0,0];Client2=[2,0,0,0];  Client3=[3,0,0,0]; Client4=[4,0,0,0]; Client5=[5,0,0,0];  Client6=[6,0,0,0];



%客户端组件
Client1=[5,0,0,0];  Client2=[10,0,0,0]; Client3=[13,0,0,0]; Client4=[16,0,0,0]; Client5=[20,0,0,0]; Client6=[50,0,0,0];  Client7=[100,0,0,0];
JobGraph1=[100,0,0];JobGraph2=[200,0,0];JobGraph3=[300,0,0];JobGraph4=[400,0,0];JobGraph5=[500,0,0];JobGraph6=[1000,0,0];JobGraph7=[2000,0,0];
%Application Master组件
Dispatcher1=[100,0,0,0];Dispatcher2=[200,0,0,0];Dispatcher3=[300,0,0,0];Dispatcher4=[400,0,0,0];Dispatcher5=[500,0,0,0];Dispatcher6=[1000,0,0,0];Dispatcher7=[2000,0,0,0];
JobManager1=[100,0,0,0,0,0,0,0,0,0];JobManager2=[200,0,0,0,0,0,0,0,0,0];
JobManager3=[300,0,0,0,0,0,0,0,0,0];JobManager4=[400,0,0,0,0,0,0,0,0,0];JobManager5=[500,0,0,0,0,0,0,0,0,0];
JobManager6=[1000,0,0,0,0,0,0,0,0,0];JobManager7=[2000,0,0,0,0,0,0,0,0,0];
ResourceManager=[1,0,0,0,0,0];
%Worker组件
TaskManager1=[100,0,0,0,0,0,0,0,0,0,0,0,0]; TaskManager2=[200,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager3=[300,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager4=[400,0,0,0,0,0,0,0,0,0,0,0,0];
TaskManager5=[500,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager6=[1000,0,0,0,0,0,0,0,0,0,0,0,0];TaskManager7=[2000,0,0,0,0,0,0,0,0,0,0,0,0];
SubTasks1=[100,0,0,0,0,0,0,0,0]; SubTasks2=[200,0,0,0,0,0,0,0,0];SubTasks3=[300,0,0,0,0,0,0,0,0];SubTasks4=[400,0,0,0,0,0,0,0,0];
SubTasks5=[500,0,0,0,0,0,0,0,0];SubTasks6=[1000,0,0,0,0,0,0,0,0];SubTasks7=[2000,0,0,0,0,0,0,0,0];
Datas1=[100,0,0,0];Datas2=[200,0,0,0];Datas3=[300,0,0,0];Datas4=[400,0,0,0];Datas5=[500,0,0,0];Datas6=[1000,0,0,0];Datas7=[2000,0,0,0];

Client50=[1,0,0,0];JobGraph50=[50,0,0];Dispatcher50=[50,0,0,0];
%begin
% 用来画不同组件数量的响应时间图 开始
% 调用SparkPEPAResponseTime函数计算不同参数设置下的平均响应时间、吞吐量和利用率，并将结果存储在不同的变量中，如meantime1, throughput1, utilzation1等。

% disp("进入第一轮")
% [meantime1,throughput1,utilzation1] = FlinkPEPAResponseTime1(Client1,JobGraph1,Dispatcher1,JobManager1,ResourceManager,TaskManager1,SubTasks1,Datas1,Rate1,Ratem_1);
% 
% disp("进入第二轮")
% [meantime2,throughput2,utilzation2] = FlinkPEPAResponseTime1(Client2,JobGraph2,Dispatcher2,JobManager2,ResourceManager,TaskManager2,SubTasks2,Datas2,Rate1,Ratem_1);
% disp("进入第三轮")
% [meantime3,throughput3,utilzation3] = FlinkPEPAResponseTime1(Client3,JobGraph3,Dispatcher3,JobManager3,ResourceManager,TaskManager3,SubTasks3,Datas3,Rate1,Ratem_1);
% disp("进入第四轮")
% [meantime4,throughput4,utilzation4] = FlinkPEPAResponseTime1(Client4,JobGraph4,Dispatcher4,JobManager4,ResourceManager,TaskManager4,SubTasks4,Datas4,Rate1,Ratem_1);
% disp("进入第五轮")
% [meantime5,throughput5,utilzation5] = FlinkPEPAResponseTime1(Client5,JobGraph5,Dispatcher5,JobManager5,ResourceManager,TaskManager5,SubTasks5,Datas5,Rate1,Ratem_1);
% disp("进入第六轮")
% [meantime6,throughput6,utilzation6] = FlinkPEPAResponseTime1(Client6,JobGraph6,Dispatcher6,JobManager6,ResourceManager,TaskManager6,SubTasks6,Datas6,Rate1,Ratem_1);
% disp("进入第七轮")
% [meantime7,throughput7,utilzation7] = FlinkPEPAResponseTime1(Client7,JobGraph7,Dispatcher7,JobManager7,ResourceManager,TaskManager7,SubTasks7,Datas7,Rate1,Ratem_1);

[meantime1,throughput1,utilzation1] = FlinkPEPAResponseTime1([1,0,0,0],  [1,0,0], [1,0,0,0], [1,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0], [100,0,0,0,0,0,0,0,0], [100,0,0,0],Rate1,Ratem_1);
[meantime2,throughput2,utilzation2] = FlinkPEPAResponseTime1([5,0,0,0], [100,0,0], [100,0,0,0], [100,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[200,0,0,0,0,0,0,0,0,0,0,0,0], [200,0,0,0,0,0,0,0,0], [200,0,0,0],Rate1,Ratem_1);
[meantime3,throughput3,utilzation3] = FlinkPEPAResponseTime1([5,0,0,0], [100,0,0], [100,0,0,0], [100,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[200,0,0,0,0,0,0,0,0,0,0,0,0], [200,0,0,0,0,0,0,0,0], [200,0,0,0],Rate1,Ratem_1);
[meantime4,throughput4,utilzation4] = FlinkPEPAResponseTime1([10,0,0,0], [200,0,0], [200,0,0,0], [200,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[300,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);
[meantime5,throughput5,utilzation5] = FlinkPEPAResponseTime1([10,0,0,0], [200,0,0], [200,0,0,0], [200,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[300,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);


throughput_1 = [throughput1(1),throughput2(1),throughput3(1),throughput4(1),throughput5(1)];%对应第一个组件Client 在五种不同输入参数得到的Client组件的数据
throughput_2 = [throughput1(2),throughput2(2),throughput3(2),throughput4(2),throughput5(2)];%第二个组件JobGraph
throughput_3 = [throughput1(3),throughput2(3),throughput3(3),throughput4(3),throughput5(3)];%第三个组件Dispatcher
throughput_4 = [throughput1(4),throughput2(4),throughput3(4),throughput4(4),throughput5(4)];%第四个组件JobManager
throughput_5 = [throughput1(5),throughput2(5),throughput3(5),throughput4(5),throughput5(5)];%第五个组件ResourceManager
throughput_6 = [throughput1(6),throughput2(6),throughput3(6),throughput4(6),throughput5(6)];%第六个组件TaskManager
throughput_7 = [throughput1(7),throughput2(7),throughput3(7),throughput4(7),throughput5(7)];%第七个组件SubTasks
throughput_8 = [throughput1(8),throughput2(8),throughput3(8),throughput4(8),throughput5(8)];%第八个组件Datas

utilzation_1 = [utilzation1(1),utilzation2(1),utilzation3(1),utilzation4(1),utilzation5(1)];%setting_enviroment动作在不同参数的情况下得到的动作利用率
utilzation_2 = [utilzation1(2),utilzation2(2),utilzation3(2),utilzation4(2),utilzation5(2)];%run_Subtasks
utilzation_3 = [utilzation1(3),utilzation2(3),utilzation3(3),utilzation4(3),utilzation5(3)];%output_Result
utilzation_4 = [utilzation1(4),utilzation2(4),utilzation3(4),utilzation4(4),utilzation5(4)];%stop_Tasks
utilzation_5 = [utilzation1(5),utilzation2(5),utilzation3(5),utilzation4(5),utilzation5(5)];%build_JobGraph
utilzation_6 = [utilzation1(6),utilzation2(6),utilzation3(6),utilzation4(6),utilzation5(6)];%send_JobGraph
utilzation_7 = [utilzation1(7),utilzation2(7),utilzation3(7),utilzation4(7),utilzation5(7)];%restart_Tasks
utilzation_8 = [utilzation1(8),utilzation2(8),utilzation3(8),utilzation4(8),utilzation5(8)];%distribute_Tasks

% %%老版四图一起的 新版是尝试八图
% % round(throughput_1, 2)
% figure(1);
% % plot(x,utilzation,'k-');
% subplot(2,2,1)
% plot(x,round(throughput_1, 3),'k-'); %throughput_1[组件1Client 的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of Client');
% % ylabel('Throughput of the Client component');
% grid on
% 
% subplot(2,2,2)
% plot(x,round(throughput_2, 3),'k-'); %throughput_2[组件2JobGraph的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of JobGraph');
% % ylabel('Throughput of the JobGraph component');
% grid on
% subplot(2,2,3)
% plot(x,round(throughput_3, 3),'k-'); %throughput_3[组件3Dispatcher的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% % ylabel('Throughput of the Dispatcher component');
% ylabel('Throughput of Dispatcher');
% grid on
% subplot(2,2,4)
% plot(x,round(throughput_4, 3),'k-'); %throughput_4[组件4JobManager的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of JobManager');
% % ylabel('Throughput of the JobManager component ');
% grid on
% 
% 
% figure(2);
% % plot(x,utilzation,'k-');
% subplot(2,2,1)
% plot(x,round(throughput_5, 3),'k-'); %throughput_5[组件5ResourceManager的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of ResourceManager');
% % ylabel('Throughput of the ResourceManager component');
% grid on
% 
% % figure(2);
% subplot(2,2,2)
% plot(x,round(throughput_6, 3),'k-');  %throughput_6[组件6TaskManager的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of TaskManager');
% % ylabel('Throughput of the TaskManager component');
% grid on
% subplot(2,2,3)
% plot(x,round(throughput_7, 3),'k-');  %throughput_7[组件7SubTasks的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of SubTasks');
% % ylabel('Throughput of the SubTasks component');
% grid on
% subplot(2,2,4)
% plot(x,round(throughput_8, 3),'k-');  %throughput_8[组件8Datas的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Throughput of Datas');
% % ylabel('Throughput of the Datas component');
% grid on
% 
% %利用率画图代码函数区
% figure(3);
% % plot(x,utilzation,'k-');
% subplot(2,2,1)
% plot(x,round(utilzation_1, 3),'k-');  %utilzation_1[动作1setting_enviroment的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of setting environment');
% % ylabel('Utilization of the setting environment action');
% grid on
% 
% % figure(2);
% % 1setting_environment,2run_Subtasks,3output_Result,4generate_Subtasks,5bulid_JobGraph,6send_JobGraph,7submit_Job,8distribute_Tasks
% subplot(2,2,2)
% plot(x,round(utilzation_2, 3),'k-');  %utilzation_2[动作2run_Subtasks的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of run Subtasks ');
% % ylabel('Utilization of the run Subtasks action');
% grid on
% subplot(2,2,3)
% plot(x,round(utilzation_3, 3),'k-');  %utilzation_3[动作3output_Result的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of output Result');
% % ylabel('Utilization of the output Result action');
% grid on
% subplot(2,2,4)
% plot(x,round(utilzation_4, 3),'k-');  %utilzation_4[动作4stop_Tasks的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of generate Subtasks');
% % ylabel('Utilization of the stop Tasks action');
% grid on
% 
% 
% figure(4);
% % plot(x,utilzation,'k-');
% subplot(2,2,1)
% plot(x,round(utilzation_5, 3),'k-');  %utilzation_5[动作5build_JobGraph的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of build JobGraph');
% % ylabel('Utilization of the build JobGraph action');
% grid on
% 
% % figure(2);
% subplot(2,2,2)
% plot(x,round(utilzation_6, 3),'k-');  %utilzation_6[动作6send_JobGraph的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of send JobGraph');
% % ylabel('Utilization of the send JobGraph action');
% grid on
% subplot(2,2,3)
% plot(x,round(utilzation_7, 3),'k-');  %utilzation_7[动作7restart_Tasks的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of report Status');
% % ylabel('Utilization of the restart Tasks action');
% grid on
% subplot(2,2,4)
% plot(x,round(utilzation_8, 3),'k-');  %utilzation_8[动作8distribute_Tasks的五种情况]
% % legend('1 Application','5 Application','10 Application','50 Application');
% % title('Applicaion数量');  
% % xlabel('Time(sec.)');
% % ylabel('Probability');
% xlabel('Application Number');
% ylabel('Utilization of distribute Tasks');
% % ylabel('Utilization of the distribute Tasks action');
% grid on
% %吞吐量画图函数区 结束end

%开始
%尝试八张图一起
figure(1);
% plot(x,utilzation,'k-');
subplot(4,2,1)
plot(x,round(throughput_1, 3),'k-'); %throughput_1[组件1Client 的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of Client');
% ylabel('Throughput of the Client component');
grid on

subplot(4,2,2)
plot(x,round(throughput_2, 3),'k-'); %throughput_2[组件2JobGraph的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of JobGraph');
% ylabel('Throughput of the JobGraph component');
grid on
subplot(4,2,3)
plot(x,round(throughput_3, 3),'k-'); %throughput_3[组件3Dispatcher的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
% ylabel('Throughput of the Dispatcher component');
ylabel('Throughput of Dispatcher');
grid on
subplot(4,2,4)
plot(x,round(throughput_4, 3),'k-'); %throughput_4[组件4JobManager的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of JobManager');
% ylabel('Throughput of the JobManager component ');
grid on


% figure(2);
% plot(x,utilzation,'k-');
subplot(4,2,5)
plot(x,round(throughput_5, 3),'k-'); %throughput_5[组件5ResourceManager的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of ResourceManager');
% ylabel('Throughput of the ResourceManager component');
grid on

% figure(2);
subplot(4,2,6)
plot(x,round(throughput_6, 3),'k-');  %throughput_6[组件6TaskManager的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of TaskManager');
% ylabel('Throughput of the TaskManager component');
grid on
subplot(4,2,7)
plot(x,round(throughput_7, 3),'k-');  %throughput_7[组件7SubTasks的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of SubTasks');
% ylabel('Throughput of the SubTasks component');
grid on
subplot(4,2,8)
plot(x,round(throughput_8, 3),'k-');  %throughput_8[组件8Datas的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Throughput of Datas');
% ylabel('Throughput of the Datas component');
grid on

%利用率画图代码函数区
figure(2);
% plot(x,utilzation,'k-');
subplot(4,2,1)
plot(x,round(utilzation_1, 3),'k-');  %utilzation_1[动作1setting_enviroment的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w1');
% ylabel('Utilization of the setting environment action');
grid on

% figure(2);
% 1setting_environment,2run_Subtasks,3output_Result,4generate_Subtasks,5bulid_JobGraph,6send_JobGraph,7submit_Job,8distribute_Tasks
subplot(4,2,2)
plot(x,round(utilzation_2, 3),'k-');  %utilzation_2[动作2run_Subtasks的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w16 ');
% ylabel('Utilization of the run Subtasks action');
grid on
subplot(4,2,3)
plot(x,round(utilzation_3, 3),'k-');  %utilzation_3[动作3output_Result的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w20');
% ylabel('Utilization of the output Result action');
grid on
subplot(4,2,4)
plot(x,round(utilzation_4, 3),'k-');  %utilzation_4[动作4stop_Tasks的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w15');
% ylabel('Utilization of the stop Tasks action');
grid on


% figure(4);
% plot(x,utilzation,'k-');
subplot(4,2,5)
plot(x,round(utilzation_5, 3),'k-');  %utilzation_5[动作5build_JobGraph的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w5');
% ylabel('Utilization of the build JobGraph action');
grid on

% figure(2);
subplot(4,2,6)
plot(x,round(utilzation_6, 3),'k-');  %utilzation_6[动作6send_JobGraph的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w6');
% ylabel('Utilization of the send JobGraph action');
grid on
subplot(4,2,7)
plot(x,round(utilzation_7, 3),'k-');  %utilzation_7[动作7restart_Tasks的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w22');
% ylabel('Utilization of the restart Tasks action');
grid on
subplot(4,2,8)
plot(x,round(utilzation_8, 3),'k-');  %utilzation_8[动作8distribute_Tasks的五种情况]
% legend('1 Application','5 Application','10 Application','50 Application');
% title('Applicaion数量');  
% xlabel('Time(sec.)');
% ylabel('Probability');
xlabel('Application Number');
ylabel('Utilization of w12');
% ylabel('Utilization of the distribute Tasks action');
grid on
%吞吐量画图函数区 结束end
%结束



%%用来画不同组件数量的响应时间图 开始begin
% meantime1;
% meantime2;
% meantime3;
% meantime4;
% meantime5;
% meantime6;
%%用来画不同组件数量的响应时间图 结束end

% meantime11;
% meantime22;
% meantime33;
% meantime44;
% meantime55;
%——开始———————————————————————————————————————————————————————————————————————————《画Taskmanage组件不同的响应时间图》———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
% %【本区块使用前提】：记得把函数FlinkPEPAResponseTime1里的动作distribute_Tasks和动作run_Subtasks的速率复原为10和3
% [meantime6,throughput6,utilzation6] =FlinkPEPAResponseTime1([1,0,0,0],[10,0,0],[10,0,0,0],[10,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[10,0,0,0,0,0,0,0,0,0,0,0,0],[10,0,0,0,0,0,0,0,0],[10,0,0,0],Rate1,Ratem_1);
% [meantime7,throughput7,utilzation7] = FlinkPEPAResponseTime1([2,0,0,0],[20,0,0],[20,0,0,0],[20,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[20,0,0,0,0,0,0,0,0,0,0,0,0],[20,0,0,0,0,0,0,0,0],[20,0,0,0],Rate1,Ratem_1);
% [meantime8,throughput8,utilzation8] = FlinkPEPAResponseTime1([3,0,0,0],[50,0,0],[50,0,0,0],[50,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[50,0,0,0,0,0,0,0,0,0,0,0,0],[50,0,0,0,0,0,0,0,0],[50,0,0,0],Rate1,Ratem_1);
% [meantime9,throughput9,utilzation9] = FlinkPEPAResponseTime1([4,0,0,0],[80,0,0],[80,0,0,0],[80,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[80,0,0,0,0,0,0,0,0,0,0,0,0],[80,0,0,0,0,0,0,0,0],[80,0,0,0],Rate1,Ratem_1);
% [meantime1,throughput1,utilzation1] =FlinkPEPAResponseTime1([5,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% [meantime2,throughput2,utilzation2] = FlinkPEPAResponseTime1([10,0,0,0],[200,0,0],[200,0,0,0],[200,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[200,0,0,0,0,0,0,0,0,0,0,0,0],[200,0,0,0,0,0,0,0,0],[200,0,0,0],Rate1,Ratem_1);
% [meantime3,throughput3,utilzation3] = FlinkPEPAResponseTime1([13,0,0,0],[300,0,0],[300,0,0,0],[300,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[300,0,0,0,0,0,0,0,0,0,0,0,0],[300,0,0,0,0,0,0,0,0],[300,0,0,0],Rate1,Ratem_1);
% [meantime4,throughput4,utilzation4] = FlinkPEPAResponseTime1([16,0,0,0],[400,0,0],[400,0,0,0],[400,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[400,0,0,0,0,0,0,0,0,0,0,0,0],[400,0,0,0,0,0,0,0,0],[400,0,0,0],Rate1,Ratem_1);
% [meantime5,throughput5,utilzation5] = FlinkPEPAResponseTime1([20,0,0,0],[500,0,0],[500,0,0,0],[500,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[500,0,0,0,0,0,0,0,0,0,0,0,0],[500,0,0,0,0,0,0,0,0],[500,0,0,0],Rate1,Ratem_1);
% % [meantime6,throughput6,utilzation6] = FlinkPEPAResponseTime1([50,0,0,0],[1000,0,0],[1000,0,0,0],[1000,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[1000,0,0,0,0,0,0,0,0,0,0,0,0],[1000,0,0,0,0,0,0,0,0],[1000,0,0,0],Rate1,Ratem_1);
% % [meantime7,throughput7,utilzation7] = FlinkPEPAResponseTime1([100,0,0,0],[2000,0,0],[2000,0,0,0],[2000,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[2000,0,0,0,0,0,0,0,0,0,0,0,0],[2000,0,0,0,0,0,0,0,0],[2000,0,0,0],Rate1,Ratem_1);
% 
% y1=expcdf(x,meantime6);
% y2=expcdf(x,meantime7);
% y3=expcdf(x,meantime8);
% y4=expcdf(x,meantime9);
% y5=expcdf(x,meantime1);
% y6=expcdf(x,meantime2);
% y7=expcdf(x,meantime3);
% y8=expcdf(x,meantime4);
% y9=expcdf(x,meantime5);
% % y6=expcdf(x,meantime6);
% % y7=expcdf(x,meantime7);
% plot(x,y1,'b',x,y2,'c',x,y3,'m',x,y4,'g',x,y5,'r-*',x,y6,'g-*',x,y7,'b-*',x,y8,'c-*',x,y9,'m-*');
% legend('TaskManager1=10','TaskManager2=20','TaskManager3=50','TaskManager4=80','TaskManager5=100','TaskManager6=200','TaskManager7=300','TaskManager8=400','TaskManager9=500');%——————————最优解 不用动了
% % plot(x,y1,'r',x,y2,'g',x,y3,'b',x,y4,'c',x,y5,'m');
% % legend('TaskManager1=100','TaskManager2=200','TaskManager3=300','TaskManager4=400','TaskManager5=500');%——————————最优解 不用动了
% % plot(x,y1,'r',x,y2,'g',x,y3,'b',x,y4,'c',x,y5,'m',x,y6,'y',x,y7,'k');
% % % legend('TaskManager1=100','TaskManager2=200','TaskManager3=300','TaskManager4=400','TaskManager5=500','TaskManager6=1000','TaskManager7=2000');%——————————最优解 不用动了
% title('Empirical Cumulative Distributed Function of the ResponseTime');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% % grid on;
%——结束——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

%——————开始———————————————————————————————————————————————————————————————————————————《单一变量求响应时间图》———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
%【本区块使用前提】：记得把函数FlinkPEPAResponseTime1里的动作distribute_Tasks和动作run_Subtasks的速率复原为10和3
% [meantime1,throughput1,utilzation1] = FlinkPEPAResponseTime1([13,0,0,0],  [300,0,0], [300,0,0,0], [300,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);
% [meantime2,throughput2,utilzation2] = FlinkPEPAResponseTime1([13,0,0,0], [300,0,0], [300,0,0,0], [300,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[300,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);
% [meantime3,throughput3,utilzation3] = FlinkPEPAResponseTime1([13,0,0,0], [300,0,0], [300,0,0,0], [300,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[600,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);
% [meantime4,throughput4,utilzation4] = FlinkPEPAResponseTime1([13,0,0,0], [300,0,0], [300,0,0,0], [300,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[900,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);
% [meantime5,throughput5,utilzation5] = FlinkPEPAResponseTime1([13,0,0,0], [300,0,0], [300,0,0,0], [300,0,0,0,0,0,0,0,0,0], [1,0,0,0,0,0],[1200,0,0,0,0,0,0,0,0,0,0,0,0], [300,0,0,0,0,0,0,0,0], [300,0,0,0],Rate1,Ratem_1);
% [meantime6,throughput6,utilzation6] = FlinkPEPAResponseTime1([13,0,0,0], [300,0,0],[300,0,0,0],[300,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[1500,0,0,0,0,0,0,0,0,0,0,0,0],[300,0,0,0,0,0,0,0,0],[300,0,0,0],Rate1,Ratem_1);
% [meantime7,throughput7,utilzation7] = FlinkPEPAResponseTime1([13,0,0,0],[300,0,0],[300,0,0,0],[300,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[1800,0,0,0,0,0,0,0,0,0,0,0,0],[300,0,0,0,0,0,0,0,0],[300,0,0,0],Rate1,Ratem_1);
% y1=expcdf(x,meantime1);
% y2=expcdf(x,meantime2);
% y3=expcdf(x,meantime3);
% y4=expcdf(x,meantime4);
% y5=expcdf(x,meantime5);
% y6=expcdf(x,meantime6);
% y7=expcdf(x,meantime7);
% plot(x,y1,'r',x,y2,'g',x,y3,'b',x,y4,'c',x,y5,'m',x,y6,'y',x,y7,'k');
% legend('TaskManager1=100','TaskManager2=300','TaskManager3=600','TaskManager4=900','TaskManager5=1200','TaskManager6=1500','TaskManager7=1800');%——————————最优解 不用动了
% title('单一变量对比');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% grid on;
%——————结束——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————



%————开始———————————————————————————————————————————————————————不同run_Subtasks动作速度进行对比图(10 100 200 500) 改为10 100 200 1000  2000 开始begin————————————————————————————————————————————————————————— 
%【本区块使用前提】：记得把动作distribute_Tasks（10 100 200 10 100 200）和动作run_Subtasks（10 10 10 100 100 100）的速率按照要求修改
% disp("r_distribute_Tasks=10,r_run_Subtasks=10;")
% [meantime11,throughput11,utilzation11] = FlinkPEPAResponseTime1(Client4,JobGraph4,Dispatcher4,JobManager4,ResourceManager,TaskManager4,SubTasks4,Datas4,Rate1,Ratem_1);
% disp("r_distribute_Tasks=100,r_run_Subtasks=10;")
% [meantime22,throughput22,utilzation22] = FlinkPEPAResponseTime2(Client3,JobGraph3,Dispatcher3,JobManager3,ResourceManager,TaskManager3,SubTasks3,Datas3,Rate1,Ratem_1);
% disp("r_distribute_Tasks=200,r_run_Subtasks=10;")
% [meantime33,throughput33,utilzation33] = FlinkPEPAResponseTime3(Client3,JobGraph3,Dispatcher3,JobManager3,ResourceManager,TaskManager3,SubTasks3,Datas3,Rate1,Ratem_1);
% disp("r_distribute_Tasks=10,r_run_Subtasks=100;")
% [meantime44,throughput44,utilzation44] = FlinkPEPAResponseTime4(Client2,JobGraph2,Dispatcher2,JobManager2,ResourceManager,TaskManager2,SubTasks2,Datas2,Rate1,Ratem_1);
% disp("r_distribute_Tasks=100,r_run_Subtasks=100;")
% [meantime55,throughput55,utilzation55] = FlinkPEPAResponseTime5(Client1,JobGraph1,Dispatcher1,JobManager1,ResourceManager,TaskManager1,SubTasks1,Datas1,Rate1,Ratem_1);
% disp("r_distribute_Tasks=200,r_run_Subtasks=100;")
% [meantime66,throughput66,utilzation66] = FlinkPEPAResponseTime6(Client1,JobGraph1,Dispatcher1,JobManager1,ResourceManager,TaskManager1,SubTasks1,Datas1,Rate1,Ratem_1);
% 
% % [meantime55,throughput55,utilzation55] = FlinkPEPAResponseTime5(Client1,JobGraph2,Dispatcher2,JobManager2,ResourceManager,TaskManager2,SubTasks2,Datas2,Rate1,Ratem_1);
% x=0:100;
% y1=expcdf(x,meantime11);%r_distribute_Tasks=10, r_run_Subtasks=10;
% y2=expcdf(x,meantime22);%r_distribute_Tasks=100,r_run_Subtasks=10;
% y3=expcdf(x,meantime33);%r_distribute_Tasks=200,r_run_Subtasks=10
% y4=expcdf(x,meantime44);%r_distribute_Tasks=10, r_run_Subtasks=100
% y5=expcdf(x,meantime55);%r_distribute_Tasks=100,r_run_Subtasks=100
% y6=expcdf(x,meantime66);%r_distribute_Tasks=200,r_run_Subtasks=100
% % plot(x,y1,'r:',x,y2,'b-',x,y3,'k--',x,y4,'k-+',x,y5,'k-o'); 换换颜色
% plot(x,y1,'r:',x,y2,'g',x,y3,'b',x,y4,'c',x,y5,'m',x,y6,'y');
% legend('发布:10 执行:10','发布:100 执行:10','发布:200 执行:10','发布:10 执行:100','发布:100 执行:100','发布:200 执行:100');
% title('The rate of Datass exuting Tasks and the rate of Client sending tasks VS Response Time');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% grid on;
%————结束—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

%——开始———————————————————————————————————————————————————————Client生成JobGraph和TaskManager执行Task对比————————————————————————————————————————————————————————— 
% % 【本区块使用前提】：记得把动作build_JobGraph（10 100 200 10 100 200）和动作run_Subtasks（10 10 10 100 100 100）的速率按照要求修改
% disp("r_build_JobGraph=10,r_run_Subtasks=10;")
% [meantime11,throughput11,utilzation11] = FlinkPEPAResponseTime1(Client4,JobGraph4,Dispatcher4,JobManager4,ResourceManager,TaskManager4,SubTasks4,Datas4,Rate1,Ratem_1);
% disp("r_build_JobGraph=100,r_run_Subtasks=10;")
% [meantime22,throughput22,utilzation22] = FlinkPEPAResponseTime2(Client3,JobGraph3,Dispatcher3,JobManager3,ResourceManager,TaskManager3,SubTasks3,Datas3,Rate1,Ratem_1);
% disp("r_build_JobGraph=200,r_run_Subtasks=10;")
% [meantime33,throughput33,utilzation33] = FlinkPEPAResponseTime3(Client3,JobGraph3,Dispatcher3,JobManager3,ResourceManager,TaskManager3,SubTasks3,Datas3,Rate1,Ratem_1);
% disp("r_build_JobGraph=10,r_run_Subtasks=100;")
% [meantime44,throughput44,utilzation44] = FlinkPEPAResponseTime4(Client2,JobGraph2,Dispatcher2,JobManager2,ResourceManager,TaskManager2,SubTasks2,Datas2,Rate1,Ratem_1);
% disp("r_build_JobGraph=100,r_run_Subtasks=100;")
% [meantime55,throughput55,utilzation55] = FlinkPEPAResponseTime5(Client1,JobGraph1,Dispatcher1,JobManager1,ResourceManager,TaskManager1,SubTasks1,Datas1,Rate1,Ratem_1);
% disp("r_build_JobGraph=200,r_run_Subtasks=100;")
% [meantime66,throughput66,utilzation66] = FlinkPEPAResponseTime6(Client1,JobGraph1,Dispatcher1,JobManager1,ResourceManager,TaskManager1,SubTasks1,Datas1,Rate1,Ratem_1);
% 
% % [meantime55,throughput55,utilzation55] = FlinkPEPAResponseTime5(Client1,JobGraph2,Dispatcher2,JobManager2,ResourceManager,TaskManager2,SubTasks2,Datas2,Rate1,Ratem_1);
% x=0:100;
% y1=expcdf(x,meantime11);%r_distribute_Tasks=10, r_run_Subtasks=10;
% y2=expcdf(x,meantime22);%r_distribute_Tasks=100,r_run_Subtasks=10;
% y3=expcdf(x,meantime33);%r_distribute_Tasks=200,r_run_Subtasks=10
% y4=expcdf(x,meantime44);%r_distribute_Tasks=10, r_run_Subtasks=100
% y5=expcdf(x,meantime55);%r_distribute_Tasks=100,r_run_Subtasks=100
% y6=expcdf(x,meantime66);%r_distribute_Tasks=200,r_run_Subtasks=100
% % plot(x,y1,'r:',x,y2,'b-',x,y3,'k--',x,y4,'k-+',x,y5,'k-o'); 换换颜色
% plot(x,y1,'g',x,y2,'r',x,y3,'c',x,y4,'b',x,y5,'m',x,y6,'x');
% legend('build:10 run:10','build:100 run:10','build:200 run:10','build:10 run:100','build:100 run:100','build:200 run:100');
% title('The rate of clients building JobGraphs and the rate of TaskManager running SubTasks VS Response Time');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% grid on;
%——结束—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

%——开始———————————————————————————————————————————————————————Client生成JobGraph不同速率对比10 100 200 500————————————————————————————————————————————————————————— 
%【本区块使用前提】：记得把动作build_JobGraph速率按照要求修改为10 20 50 100 200 500
% disp("r_build_JobGraph=10;")
% [meantime11,throughput11,utilzation11] = FlinkPEPAResponseTime111([2,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% % disp("r_build_JobGraph=20;")
% % [meantime22,throughput22,utilzation22] = FlinkPEPAResponseTime222([2.5,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% % disp("r_build_JobGraph=50;")
% % [meantime33,throughput33,utilzation33] = FlinkPEPAResponseTime333([3,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_build_JobGraph=100;")
% [meantime44,throughput44,utilzation44] = FlinkPEPAResponseTime444([3.5,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_build_JobGraph=200;")
% [meantime55,throughput55,utilzation55] = FlinkPEPAResponseTime555([4,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[2,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_build_JobGraph=500;")
% [meantime66,throughput66,utilzation66] = FlinkPEPAResponseTime666([4,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[2,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% 
% x=0:100;
% y1=expcdf(x,meantime11);%r_build_JobGraph=10
% % y2=expcdf(x,meantime22);%r_build_JobGraph=20
% % y3=expcdf(x,meantime33);%r_build_JobGraph=50
% y4=expcdf(x,meantime44);%r_build_JobGraph=100
% y5=expcdf(x,meantime55);%r_build_JobGraph=200
% y6=expcdf(x,meantime66);%r_build_JobGraph=500
% % plot(x,y1,'r:',x,y2,'b-',x,y3,'k--',x,y4,'k-+',x,y5,'k-o'); 换换颜色
% plot(x,y1,'r',x,y4,'b-',x,y5,'k',x,y6,'x');
% legend('build\_JobGraph=10','build\_JobGraph=100','build\_JobGraph=200','build\_JobGraph=500');
% % plot(x,y1,'r:',x,y2,'g',x,y3,'b',x,y4,'c',x,y5,'m',x,y6,'y');
% % legend('build\_JobGraph=10','build\_JobGraph=20','build\_JobGraph=50','build\_JobGraph=100','build\_JobGraph=200','build\_JobGraph=500');
% title('The rate of Clients generating JobGraphs VS Response Time');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% grid on;
%——结束—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

%——————开始———————————————————————————————————————————————————————TaskManager执行SubTask不同速率对比10 20 50 100 200 500————————————————————————————————————————————————————————— 
%【本区块使用前提】：记得把动作run_Subtasks速率按照要求修改为10 20 50 100 200 500
% disp("r_run_Subtasks=10;")
% [meantime11,throughput11,utilzation11] = FlinkPEPAResponseTime111([1,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_run_Subtasks=20;")
% [meantime22,throughput22,utilzation22] = FlinkPEPAResponseTime222([2,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_run_Subtasks=50;")
% [meantime33,throughput33,utilzation33] = FlinkPEPAResponseTime333([3,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_run_Subtasks=100;")
% [meantime44,throughput44,utilzation44] = FlinkPEPAResponseTime444([4,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[1,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_run_Subtasks=200;")
% [meantime55,throughput55,utilzation55] = FlinkPEPAResponseTime555([4,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[2,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% disp("r_run_Subtasks=500;")
% [meantime66,throughput66,utilzation66] = FlinkPEPAResponseTime666([4,0,0,0],[100,0,0],[100,0,0,0],[100,0,0,0,0,0,0,0,0,0],[3,0,0,0,0,0],[100,0,0,0,0,0,0,0,0,0,0,0,0],[100,0,0,0,0,0,0,0,0],[100,0,0,0],Rate1,Ratem_1);
% 
% x=0:100;
% y1=expcdf(x,meantime11);%r_run_Subtasks=10;
% % y2=expcdf(x,meantime22);%r_run_Subtasks=20;
% % y3=expcdf(x,meantime33);%r_run_Subtasks=50
% y4=expcdf(x,meantime44);%r_run_Subtasks=100
% y5=expcdf(x,meantime55);%r_run_Subtasks=200
% y6=expcdf(x,meantime66);%r_run_Subtasks=500
% plot(x,y1,'r',x,y4,'b-',x,y5,'k',x,y6,'x');
% legend('run\_Subtasks=10','run\_Subtasks=100','run\_Subtasks=200','run\_Subtasks=500');
% 
% % plot(x,y1,'r:',x,y2,'b-',x,y3,'k--',x,y4,'k-+',x,y5,'k-o'); 换换颜色
% % plot(x,y1,'r:',x,y2,'g',x,y3,'b',x,y4,'c',x,y5,'m',x,y6,'y');
% % legend('run\_Subtasks=10','run\_Subtasks=20','run\_Subtasks=50','run\_Subtasks=100','run\_Subtasks=200','run\_Subtasks=500');
% title('The rate of TaskManager executing SubTasks VS Response Time');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% grid on;
%——————结束—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


% %模仿丁1谢2的 选择100 200 300TaskManager的响应时间图 其他变量保持不变   开始begin
% %可以直接使用代码 不需要改动
% disp("进入第一轮")%                                                   1         1         1           1             1             100         100       100
% [meantime100,throughput100,utilzation100] = FlinkPEPAResponseTime1(Client1,JobGraph1,Dispatcher1,JobManager1,ResourceManager,TaskManager2,SubTasks2,Datas2,Rate1,Ratem_1);
% disp("进入第二轮")%                                                   5         100      100           100          1             150         150      150
% [meantime200,throughput200,utilzation200] = FlinkPEPAResponseTime1(Client2,JobGraph2,Dispatcher2,JobManager2,ResourceManager,TaskManager3,SubTasks3,Datas3,Rate2,Ratem_1);
% disp("进入第三轮")%                                                  10         200      200           200          1             200         200      200
% [meantime300,throughput300,utilzation300] = FlinkPEPAResponseTime1(Client3,JobGraph3,Dispatcher3,JobManager3,ResourceManager,TaskManager4,SubTasks4,Datas4,Rate3,Ratem_1);
%   x=0:100;
% y1=expcdf(x,meantime100);%r_run_Subtasks=
% y2=expcdf(x,meantime200);%r_run_Subtasks=
% y3=expcdf(x,meantime300);%r_run_Subtasks=
% % plot(x,y1,'r:',x,y2,'b-',x,y3,'k--',x,y4,'k-+',x,y5,'k-o'); 换换颜色
% plot(x,y1,'r',x,y2,'g',x,y3,'b');
% legend('100','200','300');
% title('TaskManager100 200 300');  
% xlabel('Time(sec.)');
% ylabel('Probability');
% grid on;               
% 
% %模仿丁1谢2的 选择100 200 300TaskManager的响应时间图    结束end



%——开始———————————————————————————————————————————————————————%吞吐量画图函数区 开始begin———————————————————————————————————————————————————————————————————————————



%方案一r_distribute_Tasks=10 ||   方案二r_bulid_JobGraph=10;   执行速度不变 r_run_Subtasks=10;
function [MeanTime,throughput,utilzation] = FlinkPEPAResponseTime1(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=10;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime  %上升1
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime%上升5
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime%上升6
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime %下降
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime  %上升8
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime%上升4
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime  %上升2
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime%下降
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime  %3
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime  
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime  
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime%下降7
    
    throughput=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_generate_Subtasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_report_Status2,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  
%下面的这些函数主要是用来改变动作速率画图用的

%r_distribute_Tasks=100;  r_run_Subtasks=10;  ||   r_bulid_JobGraph=100;  r_run_Subtasks=10;
function [MeanTime2,throughput2,utilzation2] = FlinkPEPAResponseTime2(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)

Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充

%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=100; %方案二
r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务 r_distribute_Tasks=100; 方案一
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 r_run_Subtasks=10;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime2=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime2
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime2
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime2
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime2
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime2
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime2
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime2
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime2
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime2
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime2
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime2
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime2
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime2
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime2
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime2
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime2
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime2
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime2
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime2
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime2
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime2
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime2
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime2
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime2
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime2
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime2
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime2
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime2
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime2
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime2
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime2
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime2
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime2
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime2
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime2
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime2
    
    throughput2=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation2=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  

%r_distribute_Tasks=200;  r_run_Subtasks=10;  ||   r_bulid_JobGraph=200;  r_run_Subtasks=10;
function [MeanTime3,throughput3,utilzation3] = FlinkPEPAResponseTime3(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)

Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充

%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=200;%方案二
r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务 r_distribute_Tasks=200 方案一
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务r_run_Subtasks=10; 试一试谢云月里设置的
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime3=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime3
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime3
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime3
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime3
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime3
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime3
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime3
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime3
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime3
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime3
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime3
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime3
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime3
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime3
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime3
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime3
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime3
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime3
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime3
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime3
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime3
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime3
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime3
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime3
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime3
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime3
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime3
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime3
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime3
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime3
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime3
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime3
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime3
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime3
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime3
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime3

    
    throughput3=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation3=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  

%r_distribute_Tasks=10;   r_run_Subtasks=100;  ||   r_bulid_JobGraph=10;  r_run_Subtasks=100;
function [MeanTime4,throughput4,utilzation4] = FlinkPEPAResponseTime4(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)

Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充

%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=10;%方案二
r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务r_distribute_Tasks=10; 方案一
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=100;%接受任务 r_run_Subtasks=100;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime4=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime4
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime4
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime4
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime4
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime4
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime4
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime4
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime4
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime4
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime4
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime4
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime4
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime4
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime4
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime4
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime4
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime4
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime4
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime4
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime4
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime4
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime4
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime4
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime4
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime4
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime4
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime4
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime4
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime4
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime4
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime4
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime4
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime4
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime4
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime4
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime4
    
    throughput4=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation4=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  

%r_distribute_Tasks=100;  r_run_Subtasks=100;  ||   r_bulid_JobGraph=100;  r_run_Subtasks=100;
function [MeanTime5,throughput5,utilzation5] = FlinkPEPAResponseTime5(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)

Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充

%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=100;%方案二
r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务r_distribute_Tasks=100;方案一
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=100;%执行任务 试一试谢云月里设置的r_run_Subtasks=100;
r_run_Subtasks=200;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime5=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime5
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime5
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime5
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime5
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime5
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime5
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime5
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime5
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime5
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime5
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime5
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime5
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime5
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime5
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime5
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime5
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime5
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime5
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime5
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime5
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime5
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime5
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime5
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime5
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime5
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime5
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime5
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime5
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime5
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime5
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime5
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime5
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime5
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime5
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime5
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime5
    
    throughput5=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation5=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  

%r_distribute_Tasks=200;  r_run_Subtasks=100;  ||   r_bulid_JobGraph=200;  r_run_Subtasks=100;
function [MeanTime6,throughput6,utilzation6] = FlinkPEPAResponseTime6(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充

%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=200;%方案二
r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务r_distribute_Tasks=200;方案一
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=100;%执行任务 试一试谢云月里设置的r_run_Subtasks=100;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime6=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime6
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime6
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime6
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime6
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime6
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime6
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime6
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime6
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime6
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime6
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime6
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime6
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime6
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime6
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime6
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime6
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime6
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime6
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime6
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime6
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime6
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime6
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime6
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime6
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime6
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime6
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime6
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime6
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime6
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime6
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime6
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime6
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime6
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime6
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime6
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime6
    
    throughput6=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation6=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  

%r_bulid_JobGraph=10;  ||    r_run_Subtasks=10;  （不用动）
function [MeanTime111,throughput111,utilzation111] = FlinkPEPAResponseTime111(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=10;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime111=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime111
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime111
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime111
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime111
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime111
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime111
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime111
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime111
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime111
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime111
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime111
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime111
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime111
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime111
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime111
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime111
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime111
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime111
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime111
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime111
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime111
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime111
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime111
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime111
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime111
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime111
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime111
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime111
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime111
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime111
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime111
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime111
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime111
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime111
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime111
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime111
    
    throughput111=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation111=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  
%r_bulid_JobGraph=20;  ||    r_run_Subtasks=20;  （20改10 10改20）
function [MeanTime222,throughput222,utilzation222] = FlinkPEPAResponseTime222(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=20;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime222=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime222
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime222
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime222
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime222
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime222
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime222
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime222
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime222
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime222
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime222
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime222
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime222
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime222
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime222
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime222
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime222
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime222
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime222
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime222
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime222
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime222
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime222
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime222
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime222
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime222
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime222
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime222
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime222
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime222
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime222
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime222
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime222
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime222
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime222
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime222
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime222
    
    throughput222=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation222=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  
%r_bulid_JobGraph=50;  ||    r_run_Subtasks=50;  （50改10 10改50）
function [MeanTime333,throughput333,utilzation333] = FlinkPEPAResponseTime333(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=50;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime333=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime333
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime333
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime333
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime333
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime333
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime333
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime333
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime333
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime333
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime333
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime333
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime333
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime333
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime333
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime333
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime333
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime333
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime333
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime333
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime333
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime333
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime333
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime333
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime333
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime333
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime333
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime333
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime333
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime333
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime333
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime333
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime333
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime333
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime333
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime333
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime333
    
    throughput333=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation333=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  
%r_bulid_JobGraph=100;  ||   r_run_Subtasks=100; （100改10 10改100）
function [MeanTime444,throughput444,utilzation444] = FlinkPEPAResponseTime444(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=100;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime444=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime444
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime444
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime444
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime444
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime444
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime444
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime444
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime444
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime444
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime444
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime444
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime444
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime444
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime444
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime444
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime444
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime444
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime444
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime444
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime444
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime444
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime444
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime444
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime444
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime444
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime444
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime444
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime444
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime444
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime444
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime444
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime444
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime444
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime444
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime444
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime444
    
    throughput444=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation444=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  
%r_bulid_JobGraph=200;  ||   r_run_Subtasks=200; （200改10 10改200）
function [MeanTime555,throughput555,utilzation555] = FlinkPEPAResponseTime555(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=200;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime555=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime555
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime555
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime555
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime555
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime555
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime555
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime555
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime555
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime555
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime555
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime555
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime555
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime555
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime555
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime555
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime555
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime555
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime555
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime555
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime555
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime555
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime555
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime555
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime555
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime555
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime555
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime555
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime555
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime555
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime555
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime555
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime555
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime555
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime555
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime555
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime555
    
    throughput555=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation555=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  
%r_bulid_JobGraph=500;  ||   r_run_Subtasks=500; （500改10 10改500）
function [MeanTime666,throughput666,utilzation666] = FlinkPEPAResponseTime666(Client_load,JobGraph_load,Dispatcher_load,JobManager_load,ResourceManager_load,TaskManager_load,SubTasks_load,Datas_load,Rate,Rate2)
Client=Client_load;
% disp(Client)
JobGraph=JobGraph_load;
Dispatcher=Dispatcher_load;
JobManager=JobManager_load;
ResourceManager=ResourceManager_load;
TaskManager=TaskManager_load;
SubTasks=SubTasks_load;
Datas=Datas_load;
% disp("此处为代码开头")
TENumber=10000;
TargetFlag='1';%%
TargetTime=0;%%
TargetTime_Array=zeros(1,TENumber);%初始化一个名为 TargetTime_Array 的数组，并用零填充


%吴开林的动作速率设置
% disp("执行到动作速度定义板块");
r_setting_environment=8;
r_launch_JobManager=5;
r_launch_TaskManager=8;
r_register_Resources=10;
r_bulid_JobGraph=500;%原来是10  方案一

r_send_JobGraph=5;
r_validate_JobGraph=5;
r_return_validation=3;
r_submit_Job=5;
r_apply_Resources1=5;
r_assgin_Resources2=5;
r_distribute_Tasks=10;%发送任务%原来是10 方案二
r_apply_Resources3=5;
r_assgin_Resources4=5;
r_generate_Subtasks=4;
r_run_Subtasks=10;%执行任务 试一试谢云月里设置的%原来是3
% r_run_Subtasks=10;
% r_run_Subtasks=100;
% r_run_Subtasks=200;
% r_run_Subtasks=500;
r_reading_Data=3;
r_filtering_Data=3;
r_transforming_Data=10;
r_output_Result=5;
r_monitor_Subtasks=10;
r_report_Status2=10;
r_adjust_Resources=5;
r_monitor_Tasks=10;
r_report_Status5=3;
r_restart_Tasks=3;
r_stop_Tasks=2;
r_output_JobResult=3;

%吴开林的动作数量设置
num_setting_environment=0;
num_launch_JobManager=0;
num_launch_TaskManager=0;
num_register_Resources=0;
num_bulid_JobGraph=0;
num_send_JobGraph=0;
num_validate_JobGraph=0;
num_return_validation=0;
num_submit_Job=0;
num_apply_Resources1=0;
num_assgin_Resources2=0;
num_distribute_Tasks=0;
num_apply_Resources3=0;
num_assgin_Resources4=0;
num_generate_Subtasks=0;
num_run_Subtasks=0;
num_reading_Data=0;
num_filtering_Data=0;
num_transforming_Data=0;
num_output_Result=0;
num_monitor_Subtasks=0;
num_report_Status2=0;
num_adjust_Resources=0;
num_monitor_Tasks=0;
num_report_Status5=0;
num_restart_Tasks=0;
num_stop_Tasks=0;
num_output_JobResult=0;

%吴开林的定义动作初始持续时间
duration_setting_environment=0;
duration_launch_JobManager=0;
duration_launch_TaskManager=0;
duration_register_Resources=0;
duration_bulid_JobGraph=0;
duration_send_JobGraph=0;
duration_validate_JobGraph=0;
duration_return_validation=0;
duration_submit_Job=0;
duration_apply_Resources1=0;
duration_assgin_Resources2=0;
duration_distribute_Tasks=0;
duration_apply_Resources3=0;
duration_assgin_Resources4=0;
duration_generate_Subtasks=0;
duration_run_Subtasks=0;
duration_reading_Data=0;
duration_filtering_Data=0;
duration_transforming_Data=0;
duration_output_Result=0;
duration_monitor_Subtasks=0;
duration_report_Status2=0;
duration_adjust_Resources=0;
duration_monitor_Tasks=0;
duration_report_Status5=0;
duration_restart_Tasks=0;
duration_stop_Tasks=0;
duration_output_JobResult=0;

for i=1:TENumber %从 1 到 TENumber 迭代执行循环体中的代码。
    if rem(i,1000)==0 %如果 i 是 1000 的倍数（即 i 除以 1000 后余数为 0），那么执行 if 语句块内的代码。
        i %则输出 i 的值。
    end
    % disp("如果你进了for循环 请输出♻️")
    TargetFlag='1';
    TargetTime=0;
        n=1;
         while ~strcmp(TargetFlag, 'gg')%%
              % fprintf('                                        进入轮次为: %f\n', n);

        %  if Client(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobGraph(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Dispatcher(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if JobManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if ResourceManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if TaskManager(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if SubTasks(1) < 0
        %    TargetFlag='gg';
        % end
        % 
        % if Datas(1) < 0
        %    TargetFlag='gg';
        % end
        % disp("此处将所有动作重新设为♾️️")
        
        MinAll=inf;
       
        time_setting_environment=inf;
        time_launch_JobManager=inf;
        time_launch_TaskManager=inf;
        time_register_Resources=inf;
        time_bulid_JobGraph=inf;
        time_send_JobGraph=inf;
        time_validate_JobGraph=inf;
        time_return_validation=inf;
        time_submit_Job=inf;
        time_apply_Resources1=inf;
        time_assgin_Resources2=inf;
        time_distribute_Tasks=inf;
        time_apply_Resources3=inf;
        time_assgin_Resources4=inf;
        time_generate_Subtasks=inf;
        time_run_Subtasks=inf;
        time_reading_Data=inf;
        time_filtering_Data=inf;
        time_transforming_Data=inf;
        time_output_Result=inf;
        time_monitor_Subtasks=inf;
        time_report_Status2=inf;
        time_adjust_Resources=inf;
        time_monitor_Tasks=inf;
        time_report_Status5=inf;
        time_restart_Tasks=inf;
        time_stop_Tasks=inf;
        time_output_JobResult=inf;
        % fprintf('                                        Client(1)=: %f\n', Client(1));
        % fprintf('                                        Client(2)=: %f\n', Client(2));
        % fprintf('                                        Client(3)=: %f\n', Client(3));
        % fprintf('                                        Client(4)=: %f\n', Client(4));
        % fprintf('                                        JobGraph(1)=: %f\n', JobGraph(1));
        % fprintf('                                        JobGraph(2)=: %f\n', JobGraph(2));
        % fprintf('                                        JobGraph(3)=: %f\n', JobGraph(3));
        % fprintf('                                        Dispatcher(1)=: %f\n', Dispatcher(1));
        % fprintf('                                        Dispatcher(2)=: %f\n', Dispatcher(2));
        % fprintf('                                        Dispatcher(3)=: %f\n', Dispatcher(3));
        % fprintf('                                        Dispatcher(4)=: %f\n', Dispatcher(4));
        % fprintf('                                        JobManager(1)=: %f\n', JobManager(1));
        % fprintf('                                        JobManager(2)=: %f\n', JobManager(2));
        % fprintf('                                        JobManager(3)=: %f\n', JobManager(3));
        % fprintf('                                        JobManager(4)=: %f\n', JobManager(4));
        % fprintf('                                        JobManager(5)=: %f\n', JobManager(5));
        % fprintf('                                        JobManager(6)=: %f\n', JobManager(6));
        % fprintf('                                        JobManager(7)=: %f\n', JobManager(7));
        % fprintf('                                        JobManager(8)=: %f\n', JobManager(8));
        % fprintf('                                        JobManager(9)=: %f\n', JobManager(9));
        % fprintf('                                        JobManager(10)=: %f\n', JobManager(10));
        % fprintf('                                        ResourceManager(1)=: %f\n', ResourceManager(1));
        % fprintf('                                        ResourceManager(2)=: %f\n', ResourceManager(2));
        % fprintf('                                       ResourceManager(3)=: %f\n',  ResourceManager(3));
        % fprintf('                                        ResourceManager(4)=: %f\n', ResourceManager(4));
        % fprintf('                                       ResourceManager(5)=: %f\n', ResourceManager(5));
        % fprintf('                                       ResourceManager(6)=: %f\n', ResourceManager(6));
        % fprintf('                                        TaskManager(1)=: %f\n', TaskManager(1));
        % fprintf('                                        TaskManager(2)=: %f\n', TaskManager(2));
        % fprintf('                                        TaskManager(3)=: %f\n',  TaskManager(3));
        % fprintf('                                        TaskManager(4)=: %f\n',  TaskManager(4));
        % fprintf('                                        TaskManager(5)=: %f\n',TaskManager(5));
        % fprintf('                                        TaskManager(6)=: %f\n', TaskManager(6));
        % fprintf('                                        TaskManager(7)=: %f\n', TaskManager(7));
        % fprintf('                                        TaskManager(8)=: %f\n', TaskManager(8));
        % fprintf('                                        TaskManager(9)=: %f\n', TaskManager(9));
        % fprintf('                                        TaskManager(10)=: %f\n', TaskManager(10));
        % fprintf('                                        TaskManager(11)=: %f\n', TaskManager(11));
        % fprintf('                                        TaskManager(12)=: %f\n', TaskManager(12));
        %  fprintf('                                        TaskManager(13)=: %f\n', TaskManager(13));
        % fprintf('                                        SubTasks(1)=: %f\n', SubTasks(1));
        % fprintf('                                         SubTasks(2)=: %f\n', SubTasks(2));
        % fprintf('                                         SubTasks(3)=: %f\n', SubTasks(3));
        % fprintf('                                         SubTasks(4)=: %f\n', SubTasks(4));
        % fprintf('                                         SubTasks(5)=: %f\n', SubTasks(5));
        % fprintf('                                         SubTasks(6)=: %f\n', SubTasks(6));
        % fprintf('                                         SubTasks(7)=: %f\n', SubTasks(7));
        % fprintf('                                         SubTasks(8)=: %f\n', SubTasks(8));
        % fprintf('                                        Datas(1)=: %f\n', Datas(1));
        % fprintf('                                        Datas(2)=: %f\n', Datas(2));
        % fprintf('                                        Datas(3)=: %f\n', Datas(3));
        % fprintf('                                        Datas(4)=: %f\n', Datas(4));
       

%%%Client组件
        % disp("此处开始计算动作速率和时长⬇️")
          % fprintf('Client(1)的值大多数的: %f\n', Client(1));
       if Client(1) >= 1                           %非并行 单状态变化    C1-C2
          rates=r_setting_environment * Client(1);%1setting_environment  C1-C2 C组件
          time_setting_environment = exprnd(1/rates);
          % fprintf('                                        setting_environment的速率: %f\n', rates);
          % fprintf('                                        setting_environment的时长: %f\n', time_setting_environment);
       end
           % fprintf('Client(2)的值: %f\n', Client(2));
           % fprintf('JobManager(1)的值: %f\n', JobManager(1) );
           % fprintf('TaskManager(1)的值: %f\n', TaskManager(1));
       if Client(2) >= 1 && JobManager(1) >= 1 && TaskManager(1) >= 1   %并行 多状态变化      C2-C3
           rates=r_launch_JobManager * min(Client(2),JobManager(1)) ;%2launch_JobManager C2-C3   JM1-JM2 C组件
           time_launch_JobManager = exprnd(1/rates);
           % fprintf('launch_JobManager的速率: %f\n', rates);
           % fprintf('launch_JobManager的时长: %f\n', time_launch_JobManager);
           rates=r_launch_TaskManager * min(Client(2),JobManager(1));%3launch_TaskManager C2-C3   TM1-TM2  C组件
           time_launch_TaskManager = exprnd(1/rates);
           % fprintf('launch_TaskManager的速率: %f\n', rates);
           % fprintf('launch_TaskManager的时长: %f\n', time_launch_TaskManager);
       end
           % fprintf('Client(3)的值: %f\n', Client(3));
           % fprintf('JobGraph(1)的值: %f\n', JobGraph(1));
       if Client(3) >= 1 && JobGraph(1) >= 1  %非并行 多状态变化C3-C4
           rates=r_bulid_JobGraph * min(Client(3),JobGraph(1)) ;%5bulid_JobGraph    C3-C4   JG1-JG2   C组件
           time_bulid_JobGraph = exprnd(1/rates);
           % fprintf('bulid_JobGraph的速率: %f\n', rates);
           % fprintf('bulid_JobGraph的时长: %f\n', time_bulid_JobGraph);
       end 
% fprintf('Client(4)的值: %f\n', Client(4));
% fprintf('JobManager(10)的值: %f\n', JobManager(10));
       if Client(4) >= 1 && JobManager(10) >= 1 %非并行 单状态变化C4-C1 
           rates=r_output_JobResult * min(JobManager(10)) ;%28output_JobResult  C4-C1 JM10-JM1  JM组件
           time_output_JobResult = exprnd(1/rates);
           % fprintf('output_JobResult的速率: %f\n', rates);
           % fprintf('output_JobResult的时长: %f\n', time_output_JobResult);
       end

% % % JobGraph组件
        % fprintf(' JobGraph(2)的值: %f\n',  JobGraph(2));
        % fprintf('Dispatcher(1)的值: %f\n',  Dispatcher(1));
        if JobGraph(2) >= 1 && Dispatcher(1) >= 1  %非并行 多状态变化
           rates=r_send_JobGraph * min(JobGraph(2),Dispatcher(1)) ;%6send_JobGraph     JG2-JG3   Dp1-Dp2  JG组件
           time_send_JobGraph = exprnd(1/rates);
        % fprintf('send_JobGraph的速率: %f\n', rates);
        % fprintf('send_JobGraph的时长: %f\n', time_send_JobGraph);
        end 
        % fprintf(' JobGraph(3)的值: %f\n',  JobGraph(3));
        % fprintf('Dispatcher(3)的值: %f\n',  Dispatcher(3));
        if JobGraph(3) >= 1 && Dispatcher(3) >= 1  %非并行 多状态变化
           rates=r_return_validation * min(Dispatcher(3),JobGraph(3)); %8.return_validation   JG3-JG1    Dp3-Dp4 Dp组件
           time_return_validation = exprnd(1/rates);
           % fprintf('return_validation的速率: %f\n', rates);
           % fprintf('return_validation的时长: %f\n', time_return_validation);
       end 
% % % Dispatcher组件
             % fprintf('Dispatcher(2)的值: %f\n',  Dispatcher(2));
        if Dispatcher(2) >= 1                           %非并行 单状态变化    
          rates=r_validate_JobGraph * Dispatcher(2) ;%7.validate_JobGraph               Dp2-Dp3  Dp组件
          time_validate_JobGraph = exprnd(1/rates);
          % fprintf('validate_JobGraph的速率: %f\n', rates);
          % fprintf('validate_JobGraph的时长: %f\n', time_validate_JobGraph);
        end
             % fprintf('Dispatcher(4)的值: %f\n',  Dispatcher(4));
             %  fprintf('JobManager(2)的值: %f\n',  JobManager(2));
       if Dispatcher(4) >= 1 && JobManager(2) >= 1  %非并行 多状态变化
           rates=r_submit_Job * min(Dispatcher(4),JobManager(2)); %9.submit_Job    Dp4-Dp1  JM2-JM3  Dp组件
           time_submit_Job = exprnd(1/rates);
           % fprintf('submit_Job的速率: %f\n', rates);
           % fprintf('submit_Job的时长: %f\n', time_submit_Job);
       end 
% % % JobManager组件
             % fprintf('JobManager(3)的值: %f\n',  JobManager(3));
             % fprintf('ResourceManager(2)的值: %f\n', ResourceManager(2));
       if JobManager(3) >= 1 && ResourceManager(2) >= 1  %非并行 多状态变化
            rates=r_apply_Resources1 * min(JobManager(3),ResourceManager(2)); %10.apply_Resources1  JM3-JM4  RM2-RM3  JM组件
            time_apply_Resources1 = exprnd(1/rates);
           %  fprintf('apply_Resources1的速率: %f\n', rates);
           % fprintf('apply_Resources1的时长: %f\n', time_apply_Resources1);
       end 
             % fprintf('JobManager(4)的值: %f\n',  JobManager(4));
             % fprintf('ResourceManager(3)的值: %f\n', ResourceManager(3));
       if JobManager(4) >= 1 && ResourceManager(3) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources2 * min(ResourceManager(3),JobManager(4)); %11.assgin_Resources2   JM4-JM5   RM3-RM4 RM组件
            time_assgin_Resources2 = exprnd(1/rates);
           %  fprintf('assgin_Resources2的速率: %f\n', rates);
           % fprintf('assgin_Resources2的时长: %f\n', time_assgin_Resources2);
       end  
             % fprintf('JobManager(5)的值: %f\n',  JobManager(5));
             % fprintf('TaskManager(3)的值: %f\n', TaskManager(3));
       if JobManager(5) >= 1 && TaskManager(3) >= 1  %非并行 多状态变化
            rates=r_distribute_Tasks * min(JobManager(5),TaskManager(3)) ;%12.distribute_Tasks   JM5-JM6  TM3-TM4  JM组件
            time_distribute_Tasks = exprnd(1/rates);
           %  fprintf('distribute_Tasks的速率: %f\n', rates);
           % fprintf('distribute_Tasks的时长: %f\n', time_distribute_Tasks);
       end
             % fprintf('JobManager(6)的值: %f\n',  JobManager(6));
             % fprintf('TaskManager(10)的值: %f\n', TaskManager(10));
       if JobManager(6) >= 1 && TaskManager(10) >= 1  %非并行 多状态变化
            rates=r_monitor_Tasks * min(JobManager(6),TaskManager(10)); %24.monitor_Tasks   JM6-JM7   TM10-TM11  JM组件
            time_monitor_Tasks = exprnd(1/rates);
           %  fprintf('monitor_Tasks的速率: %f\n', rates);
           % fprintf('monitor_Tasks的时长: %f\n', time_monitor_Tasks);
       end  
            % fprintf('JobManager(7)的值: %f\n',  JobManager(7));
            %  fprintf('TaskManager(11)的值: %f\n', TaskManager(11));
       if JobManager(7) >= 1 && TaskManager(11) >= 1  %非并行 多状态变化
            rates=r_report_Status5 * min(TaskManager(11),JobManager(7)) ;%25.report_Status5  JM7-JM8   TM11-TM12  TM组件
            time_report_Status5 = exprnd(1/rates);
           %  fprintf('report_Status5的速率: %f\n', rates);
           % fprintf('report_Status5的时长: %f\n', time_report_Status5);
       end  
             % fprintf('JobManager(8)的值: %f\n',  JobManager(8));
             % fprintf('TaskManager(12)的值: %f\n', TaskManager(12));
       if JobManager(8) >= 1 && TaskManager(12) >= 1  %非并行 多状态变化
            rates=r_restart_Tasks * min(JobManager(8),TaskManager(12)) ;%26.restart_Tasks  JM8-JM9  TM12-TM13  JM组件
            time_restart_Tasks = exprnd(1/rates);
           %   fprintf('restart_Tasks的速率: %f\n', rates);
           % fprintf('restart_Tasks的时长: %f\n', time_restart_Tasks);
       end  
            % fprintf('JobManager(9)的值: %f\n',  JobManager(9));
            %  fprintf('TaskManager(13)的值: %f\n', TaskManager(13));
       if JobManager(9) >= 1 && TaskManager(13) >= 1  %非并行 多状态变化
            rates=r_stop_Tasks * min(JobManager(9),TaskManager(13)); %27.stop_Tasks   JM9-JM10  TM13-TM1  JM组件
            time_stop_Tasks = exprnd(1/rates);
           %  fprintf('stop_Tasks的速率: %f\n', rates);
           % fprintf('stop_Tasks的时长: %f\n', time_stop_Tasks);
       end  
       
% % % ResourceManager组件
             % fprintf('ResourceManager(1)的值: %f\n', ResourceManager(1));
             % fprintf('TaskManager(2)的值: %f\n', TaskManager(2));
        if ResourceManager(1) >= 1 && TaskManager(2) >= 1  %非并行 多状态变化
            rates=r_register_Resources * min(ResourceManager(1),TaskManager(2)) ;%4.register_Resources     RM1-RM2   TM2-TM3
            time_register_Resources = exprnd(1/rates);
           %  fprintf('register_Resources的速率: %f\n', rates);
           % fprintf('register_Resources的时长: %f\n', time_register_Resources);
        end
            % fprintf('ResourceManager(4)的值: %f\n', ResourceManager(4));
            %  fprintf('TaskManager(4)的值: %f\n', TaskManager(4));
        if ResourceManager(4) >= 1 && TaskManager(4) >= 1  %非并行 多状态变化
            rates=r_apply_Resources3 * min(TaskManager(4),ResourceManager(4)); %13.apply_Resources3     RM4-RM5      TM4-TM5 TM组件
            time_apply_Resources3 = exprnd(1/rates);
           %  fprintf('apply_Resources3的速率: %f\n', rates);
           % fprintf('apply_Resources3的时长: %f\n', time_apply_Resources3);
        end
            % fprintf('ResourceManager(5)的值: %f\n', ResourceManager(5));
            %  fprintf('TaskManager(5)的值: %f\n', TaskManager(5));
        if ResourceManager(5) >= 1 && TaskManager(5) >= 1  %非并行 多状态变化
            rates=r_assgin_Resources4 * min(ResourceManager(5),TaskManager(5)); %14.assgin_Resources4      RM5-RM6  TM5-TM6 RM组件
            time_assgin_Resources4 = exprnd(1/rates);
           %  fprintf('assgin_Resources4的速率: %f\n', rates);
           % fprintf('apply_Resources4的时长: %f\n', time_assgin_Resources4);
        end
            % fprintf('ResourceManager(6)的值: %f\n', ResourceManager(6));
        if ResourceManager(6) >= 1   %非并行 单状态变化
            rates=r_adjust_Resources * ResourceManager(6) ;%23.adjust_Resources   RM6-RM1  RM组件
            time_adjust_Resources = exprnd(1/rates);
           %  fprintf('adjust_Resources的速率: %f\n', rates);
           % fprintf('adjust_Resources的时长: %f\n', time_adjust_Resources);
        end
        
% % % TaskManager组件
            % fprintf('TaskManager(6)的值: %f\n', TaskManager(6));
            % fprintf('SubTasks(1)的值: %f\n', SubTasks(1));
      if TaskManager(6) >= 1 && SubTasks(1) >= 1  %非并行 多状态变化
            rates=r_generate_Subtasks * min(TaskManager(6),SubTasks(1)) ;%15.generate_Subtasks   TM6-TM7  ST1-ST2  TM组件
            time_generate_Subtasks = exprnd(1/rates);
           %  fprintf('generate_Subtasks的速率: %f\n', rates);
           % fprintf('generate_Subtasks的时长: %f\n', time_generate_Subtasks);
      end
            % fprintf('TaskManager(7)的值: %f\n', TaskManager(7));
            % fprintf('SubTasks(2)的值: %f\n', SubTasks(2));
      if TaskManager(7) >= 1 && SubTasks(2) >= 1  %非并行 多状态变化
            rates=r_run_Subtasks * min(TaskManager(7),SubTasks(2)) ;%16.run_Subtasks     TM7-TM8   ST2-ST3  TM组件
            time_run_Subtasks = exprnd(1/rates);
           %  fprintf('run_Subtasks的速率: %f\n', rates);
           % fprintf('run_Subtasks的时长: %f\n', time_run_Subtasks);
      end
            % fprintf('TaskManager(8)的值: %f\n', TaskManager(8));
            % fprintf('SubTasks(7)的值: %f\n', SubTasks(7));
      if TaskManager(8) >= 1 && SubTasks(7) >= 1  %非并行 多状态变化
            rates=r_monitor_Subtasks  * min(TaskManager(8),SubTasks(7)) ;%21.monitor_Subtasks    TM8-TM9  ST7-ST8 TM组件
            time_monitor_Subtasks  = exprnd(1/rates);
           %  fprintf('monitor_Subtasks 的速率: %f\n', rates);
           % fprintf('monitor_Subtasks 的时长: %f\n', time_monitor_Subtasks );
      end
            % fprintf('TaskManager(9)的值: %f\n', TaskManager(9));
            % fprintf('SubTasks(8)的值: %f\n', SubTasks(8));
      if TaskManager(9) >= 1 && SubTasks(8) >= 1  %非并行 多状态变化
            rates=r_report_Status2 * min(SubTasks(8),TaskManager(9)) ;%22.report_Status2    TM9-TM10   ST8-ST1  ST组件
            time_report_Status2 = exprnd(1/rates);
           %  fprintf('report_Status2的速率: %f\n', rates);
           % fprintf('report_Status2的时长: %f\n', time_report_Status2);
      end
        
% % % SubTasks组件
            % fprintf('Datas(1)的值: %f\n', Datas(1));
            % fprintf('SubTasks(3)的值: %f\n', SubTasks(3));
    if Datas(1) >= 1 && SubTasks(3) >= 1  %非并行 多状态变化
            rates=r_reading_Data * min(SubTasks(3),Datas(1)) ;%17.reading_Data   ST3-ST4  Dt1-Dt2  ST组件
            time_reading_Data = exprnd(1/rates);
           %  fprintf('reading_Data的速率: %f\n', rates);
           % fprintf('reading_Data的时长: %f\n', time_reading_Data);
    end
            % fprintf('Datas(2)的值: %f\n', Datas(2));
            % fprintf('SubTasks(4)的值: %f\n', SubTasks(4));
    if Datas(2) >= 1 && SubTasks(4) >= 1  %非并行 多状态变化
            rates=r_filtering_Data * min(SubTasks(4),Datas(2)) ;%18.filtering_Data   ST4-ST5  Dt2-Dt3  ST组件
            time_filtering_Data = exprnd(1/rates);
           %  fprintf('filtering_Data的速率: %f\n', rates);
           % fprintf('filtering_Data的时长: %f\n', time_filtering_Data);
    end
            % fprintf('Datas(3)的值: %f\n', Datas(3));
            % fprintf('SubTasks(5)的值: %f\n', SubTasks(5));
    if Datas(3) >= 1 && SubTasks(5) >= 1  %非并行 多状态变化
            rates=r_transforming_Data * min(SubTasks(5),Datas(3)) ;%19.transforming_Data   ST5-ST6     Dt3-Dt4 ST组件
            time_transforming_Data = exprnd(1/rates);
           %  fprintf('transforming_Data的速率: %f\n', rates);
           % fprintf('transforming_Data的时长: %f\n', time_transforming_Data);
    end
            % fprintf('Datas(4)的值: %f\n', Datas(4));
            % fprintf('SubTasks(6)的值: %f\n', SubTasks(6));
    if Datas(4) >= 1 && SubTasks(6) >= 1  %非并行 多状态变化
            rates=r_output_Result * min(Datas(4),SubTasks(6)) ;%20.output_Result     ST6-ST7  Dt4-Dt1  Dt组件
            time_output_Result = exprnd(1/rates);
           %  fprintf('output_Result的速率: %f\n', rates);
           % fprintf('output_Result的时长: %f\n', time_output_Result);
      end

    % disp("此处开始计算最小动作速率⬇️")
% % % Datas组件
    % fprintf('time_setting_environment: %f\n', time_setting_environment);
    % fprintf('time_launch_JobManager: %f\n', time_launch_JobManager);
    % fprintf('time_launch_TaskManager: %f\n', time_launch_TaskManager);
    % fprintf('time_bulid_JobGraph: %f\n', time_bulid_JobGraph);
    %根据时序图来写，这里面的是箭头的出发点
     MinClient=min([time_setting_environment,time_launch_JobManager,time_launch_TaskManager,time_bulid_JobGraph]);%%%代码
     % fprintf('time_setting_environment的值为: %f\n', time_setting_environment); 
     % fprintf('time_launch_JobManager的值为: %f\n', time_launch_JobManager); 
     % fprintf('time_launch_TaskManager的值为: %f\n', time_launch_TaskManager); 
     % fprintf('time_bulid_JobGraph的值为: %f\n', time_bulid_JobGraph); 
     % fprintf('MinClient的值为: %f\n', MinClient); 
     MinJobGraph=min([time_send_JobGraph]);
     % fprintf('time_send_JobGraph的值为: %f\n', time_send_JobGraph);
     % fprintf('MinJobGraph的值为: %f\n', MinJobGraph);
     MinDispatcher=min([time_validate_JobGraph,time_return_validation,time_submit_Job]);
     % fprintf('time_validate_JobGraph的值为: %f\n', time_validate_JobGraph);
     % fprintf('time_return_validation的值为: %f\n', time_return_validation);
     % fprintf('time_submit_Job的值为: %f\n', time_submit_Job);
     % fprintf('MinDispatcher的值为: %f\n', MinDispatcher);
     MinJobManager =min([time_apply_Resources1,time_distribute_Tasks,time_monitor_Tasks,time_restart_Tasks,time_stop_Tasks,time_output_JobResult]);
     % fprintf('time_apply_Resources1的值为: %f\n', time_apply_Resources1);
     % fprintf('time_distribute_Tasks的值为: %f\n', time_distribute_Tasks);
     % fprintf('time_monitor_Tasks的值为: %f\n', time_monitor_Tasks);
     % fprintf('time_restart_Tasks的值为: %f\n', time_restart_Tasks);
     % fprintf('time_stop_Tasks的值为: %f\n', time_stop_Tasks);
     % fprintf('time_output_JobResult的值为: %f\n', time_output_JobResult);
     % fprintf('MinJobManager的值为: %f\n', MinJobManager);
     MinResourceManager =min([time_assgin_Resources2,time_assgin_Resources4,time_adjust_Resources]);
     % fprintf('time_assgin_Resources2的值为: %f\n', time_assgin_Resources2);
     % fprintf('time_assgin_Resources4的值为: %f\n', time_assgin_Resources4);
     % fprintf('time_adjust_Resources的值为: %f\n', time_adjust_Resources);
     % fprintf('MinResourceManager的值为: %f\n', MinResourceManager);
     MinTaskManager =min([time_register_Resources,time_apply_Resources3,time_generate_Subtasks,time_run_Subtasks,time_monitor_Subtasks,time_report_Status5]);
     % fprintf('time_register_Resources的值为: %f\n', time_register_Resources);
     % fprintf('time_apply_Resources3的值为: %f\n',time_apply_Resources3);
     % fprintf('time_generate_Subtasks的值为: %f\n', time_generate_Subtasks);
     % fprintf('time_run_Subtasks的值为: %f\n', time_run_Subtasks);
     % fprintf('time_monitor_Subtasks的值为: %f\n',time_monitor_Subtasks);
     % fprintf('time_report_Status5的值为: %f\n', time_report_Status5);
     % fprintf('MinTaskManager的值为: %f\n', MinTaskManager);
     MinSubTasks=min([time_reading_Data,time_filtering_Data,time_transforming_Data,time_report_Status2]);
     % fprintf('time_reading_Data的值为: %f\n', time_reading_Data);
     % fprintf('time_filtering_Data的值为: %f\n', time_filtering_Data);
     % fprintf('time_transforming_Data的值为: %f\n', time_transforming_Data);
     % fprintf('time_report_Status2的值为: %f\n', time_report_Status2);
     % fprintf('MinSubTasks的值为: %f\n', MinSubTasks);
     MinDatas =min([time_output_Result]);
     % fprintf('time_output_Result的值为: %f\n', time_output_Result);
     % fprintf('MinDatas的值为: %f\n', MinDatas);
     MinAll=min([MinClient,MinJobGraph,MinDispatcher,MinJobManager,MinResourceManager,MinTaskManager,MinSubTasks,MinDatas]);
     % fprintf('MinAll的值为: %f\n', MinAll);
     %所有动作出现一次
     % disp("此处开始token转移⬇️")
    if time_setting_environment==MinAll%.setting_environment  C1-C2
           Client(1)=Client(1)-1;
           % disp("Client(1)token减1")
           Client(2)=Client(2)+1;
           % disp("Client(2)token加1")
           num_setting_environment=num_setting_environment+1;%将 num_env_init 增加 1。这可能用于跟踪环境初始化的次数。
           duration_setting_environment=duration_setting_environment+time_setting_environment;%将 duration_setting_environment 增加 time_setting_environment。这可能用于跟踪环境初始化的总持续时间。
           % disp('                    执行动作setting_environment');
    elseif (time_launch_JobManager==MinAll) || (time_launch_TaskManager==MinAll) %2.launch_JobManager  C2-C3  JM1-JM2   3.launch_TaskManager C2-C3  TM1-TM2
           Client(2)=Client(2)-1;
           Client(3)=Client(3)+1;
           JobManager(1)=JobManager(1)-1;
           JobManager(2)=JobManager(2)+1;
           TaskManager(1)=TaskManager(1)-1;
           TaskManager(2)=TaskManager(2)+1;
           num_launch_JobManager=num_launch_JobManager+1;
           num_launch_TaskManager=num_launch_TaskManager+1;
           duration_launch_JobManager=duration_launch_JobManager+time_launch_JobManager;
           duration_launch_TaskManager=duration_launch_TaskManager+time_launch_TaskManager;
           % disp('                    执行动作launch_JobManager  ||  动作launch_TaskManager');
    elseif time_register_Resources==MinAll  %4.register_Resources  RM1-RM2       TM2-TM3
           ResourceManager(1)=ResourceManager(1)-1;
           ResourceManager(2)=ResourceManager(2)+1;
           TaskManager(2)=TaskManager(2)-1;
           TaskManager(3)=TaskManager(3)+1;
           num_register_Resources=num_register_Resources+1;
           duration_register_Resources=duration_register_Resources+time_register_Resources;
            % disp('                    执行动作register_Resources');
    elseif time_bulid_JobGraph==MinAll%5.bulid_JobGraph    C3-C4  JG1-JG2
           Client(3)=Client(3)-1;
           Client(4)=Client(4)+1;
           JobGraph(1)=JobGraph(1)-1;
           JobGraph(2)=JobGraph(2)+1;
           num_bulid_JobGraph=num_bulid_JobGraph+1;
           duration_bulid_JobGraph=duration_bulid_JobGraph+time_bulid_JobGraph;
           % disp('                    执行动作bulid_JobGraph');
    elseif time_send_JobGraph==MinAll%6.send_JobGraph    JG2-JG3  Dp1-Dp2
           JobGraph(2)=JobGraph(2)-1;
           JobGraph(3)=JobGraph(3)+1;
           Dispatcher(1)=Dispatcher(1)-1;
           Dispatcher(2)=Dispatcher(2)+1;
           num_send_JobGraph=num_send_JobGraph+1;
           duration_send_JobGraph=duration_send_JobGraph+time_send_JobGraph;
           % disp('                    执行动作send_JobGraph');
    elseif time_validate_JobGraph==MinAll%7.validate_JobGraph     Dp2-Dp3
           Dispatcher(2)=Dispatcher(2)-1;
           Dispatcher(3)=Dispatcher(3)+1;
           num_validate_JobGraph=num_validate_JobGraph+1;
           duration_validate_JobGraph=duration_validate_JobGraph+time_validate_JobGraph;
           % disp('                    执行动作validate_JobGraph');
    elseif time_return_validation==MinAll%8.return_validation  JG3-JG1 Dp3-Dp4
           JobGraph(3)=JobGraph(3)-1;
           JobGraph(1)=JobGraph(1)+1;
           Dispatcher(3)=Dispatcher(3)-1;
           Dispatcher(4)=Dispatcher(4)+1;
           num_return_validation=num_return_validation+1;
           duration_return_validation=duration_return_validation+time_return_validation;
            % disp('                    执行动作return_validation');
   elseif time_submit_Job==MinAll%9.submit_Job  Dp4-Dp1  JM2-JM3
           Dispatcher(4)=Dispatcher(4)-1;
           Dispatcher(1)=Dispatcher(1)+1;
           JobManager(2)=JobManager(2)-1;
           JobManager(3)=JobManager(3)+1;
           num_submit_Job=num_submit_Job+1;
           duration_submit_Job=duration_submit_Job+time_submit_Job; 
           % disp('                    执行动作submit_Job');
    elseif time_apply_Resources1==MinAll%10.apply_Resources1  JM3-JM4 RM2-RM3
           JobManager(3)=JobManager(3)-1;
           JobManager(4)=JobManager(4)+1;
           ResourceManager(2)=ResourceManager(2)-1;
           ResourceManager(3)=ResourceManager(3)+1;
           num_apply_Resources1=num_apply_Resources1+1;
           duration_apply_Resources1=duration_apply_Resources1+time_apply_Resources1;
            % disp('                    执行动作apply_Resources1');
   elseif time_assgin_Resources2==MinAll%11.assgin_Resources2  JM4-JM5  RM3-RM4
           JobManager(4)=JobManager(4)-1;
           JobManager(5)=JobManager(5)+1;
           ResourceManager(3)=ResourceManager(3)-1;
           ResourceManager(4)=ResourceManager(4)+1;
           num_assgin_Resources2=num_assgin_Resources2+1;
           duration_assgin_Resources2=duration_assgin_Resources2+time_assgin_Resources2; 
           % disp('                    执行动作assgin_Resources2');
  elseif time_distribute_Tasks==MinAll%12.distribute_Tasks  JM5-JM6  TM3-TM4
           JobManager(5)=JobManager(5)-1;
           JobManager(6)=JobManager(6)+1;
           TaskManager(3)=TaskManager(3)-1;
           TaskManager(4)=TaskManager(4)+1;
           num_distribute_Tasks=num_distribute_Tasks+1;
           duration_distribute_Tasks=duration_distribute_Tasks+time_distribute_Tasks;  
            % disp('                    执行动作distribute_Tasks');
 elseif time_apply_Resources3==MinAll%13.apply_Resources3  RM4-RM5  TM4-TM5
           ResourceManager(4)=ResourceManager(4)-1;
           ResourceManager(5)=ResourceManager(5)+1;
           TaskManager(4)=TaskManager(4)-1;
           TaskManager(5)=TaskManager(5)+1;
           num_apply_Resources3=num_apply_Resources3+1;
           duration_apply_Resources3=duration_apply_Resources3+time_apply_Resources3;   
           % disp('                    执行动作apply_Resources3');
  elseif time_assgin_Resources4==MinAll%14.assgin_Resources4 RM5-RM6 TM5-TM6
           ResourceManager(5)=ResourceManager(5)-1;
           ResourceManager(6)=ResourceManager(6)+1;
           TaskManager(5)=TaskManager(5)-1;
           TaskManager(6)=TaskManager(6)+1;
           num_assgin_Resources4=num_assgin_Resources4+1;
           duration_assgin_Resources4=duration_assgin_Resources4+time_assgin_Resources4;  
           % disp('                    执行动作assgin_Resources4');
  elseif time_generate_Subtasks==MinAll%15.generate_Subtasks  TM6-TM7  ST1-ST2
           TaskManager(6)=TaskManager(6)-1;
           TaskManager(7)=TaskManager(7)+1;
           SubTasks(1)=SubTasks(1)-1;
           SubTasks(2)=SubTasks(2)+1;
           num_generate_Subtasks=num_generate_Subtasks+1;
           duration_generate_Subtasks=duration_generate_Subtasks+time_generate_Subtasks;  
           % disp('                    执行动作generate_Subtasks');
  elseif time_run_Subtasks==MinAll%16.run_Subtasks  TM7-TM8  ST2-ST3
           TaskManager(7)=TaskManager(7)-1;
           TaskManager(8)=TaskManager(8)+1;
           SubTasks(2)=SubTasks(2)-1;
           SubTasks(3)=SubTasks(3)+1;
           num_run_Subtasks=num_run_Subtasks+1;
           duration_run_Subtasks=duration_run_Subtasks+time_run_Subtasks;  
           % disp('                    执行动作run_Subtasks');
  elseif time_reading_Data==MinAll%17.reading_Data   ST3-ST4  Dt1-Dt2
           SubTasks(3)=SubTasks(3)-1;
           SubTasks(4)=SubTasks(4)+1;
           Datas(1)=Datas(1)-1;
           Datas(2)=Datas(2)+1;
           num_reading_Data=num_reading_Data+1;
           duration_reading_Data=duration_reading_Data+time_reading_Data;  
            % disp('                    执行动作reading_Data');
   elseif time_filtering_Data==MinAll%18.filtering_Data  ST4-ST5  Dt2-Dt3
           SubTasks(4)=SubTasks(4)-1;
           SubTasks(5)=SubTasks(5)+1;
           Datas(2)=Datas(2)-1;
           Datas(3)=Datas(3)+1;
           num_filtering_Data=num_filtering_Data+1;
           duration_filtering_Data=duration_filtering_Data+time_filtering_Data; 
            % disp('                    执行动作filtering_Data');
  elseif time_transforming_Data==MinAll%19.transforming_Data  ST5-ST6  Dt3-Dt4
           SubTasks(5)=SubTasks(5)-1;
           SubTasks(6)=SubTasks(6)+1;
           Datas(3)=Datas(3)-1;
           Datas(4)=Datas(4)+1;
           num_transforming_Data=num_transforming_Data+1;
           duration_transforming_Data=duration_transforming_Data+time_transforming_Data;  
            % disp('                    执行动作transforming_Data');
    elseif time_output_Result==MinAll%20.output_Result    ST6-ST7  Dt4-Dt1
           SubTasks(6)=SubTasks(6)-1;
           SubTasks(7)=SubTasks(7)+1;
           Datas(4)=Datas(4)-1;
           Datas(1)=Datas(1)+1;
           num_output_Result=num_output_Result+1;
           duration_output_Result=duration_output_Result+time_output_Result;   
            % disp('                    执行动作output_Result');
  elseif time_monitor_Subtasks==MinAll%21.monitor_Subtasks  TM8-TM9  ST7-ST8
           TaskManager(8)=TaskManager(8)-1;
           TaskManager(9)=TaskManager(9)+1;
           SubTasks(7)=SubTasks(7)-1;
           SubTasks(8)=SubTasks(8)+1;
           num_monitor_Subtasks=num_monitor_Subtasks+1;
           duration_monitor_Subtasks=duration_monitor_Subtasks+time_monitor_Subtasks;  
            % disp('                    执行动作monitor_Subtasks');
  elseif time_report_Status2==MinAll%22.report_Status  TM9-TM10  ST8-ST1
           TaskManager(9)=TaskManager(9)-1;
           TaskManager(10)=TaskManager(10)+1;
           SubTasks(8)=SubTasks(8)-1;
           SubTasks(1)=SubTasks(1)+1;
           num_report_Status2=num_report_Status2+1;
           duration_report_Status2=duration_report_Status2+time_report_Status2;  
            % disp('                    执行动作report_Status');
  elseif time_adjust_Resources==MinAll%23.adjust_Resources  RM6-RM1
           ResourceManager(6)=ResourceManager(6)-1;
           ResourceManager(1)=ResourceManager(1)+1;
           num_adjust_Resources=num_adjust_Resources+1;
           duration_adjust_Resources=duration_adjust_Resources+time_adjust_Resources;  
            % disp('                    执行动作adjust_Resources');
  elseif time_monitor_Tasks==MinAll%24.monitor_Tasks  JM6-JM7  TM10-TM11
           JobManager(6)=JobManager(6)-1;
           JobManager(7)=JobManager(7)+1;
           TaskManager(10)=TaskManager(10)-1;
           TaskManager(11)=TaskManager(11)+1;
           num_monitor_Tasks=num_monitor_Tasks+1;
           duration_monitor_Tasks=duration_monitor_Tasks+time_monitor_Tasks;  
            % disp('                    执行动作monitor_Tasks');
  elseif time_report_Status5==MinAll%25.report_Status  JM7-JM8 TM11-TM12
           JobManager(7)=JobManager(7)-1;
           JobManager(8)=JobManager(8)+1;
           TaskManager(11)=TaskManager(11)-1;
           TaskManager(12)=TaskManager(12)+1;
           num_report_Status5=num_report_Status5+1;
           duration_report_Status5=duration_report_Status5+time_report_Status5;  
                % disp('                    执行动作report_Status');
  elseif time_restart_Tasks==MinAll%26.restart_Tasks  JM8-JM9  TM12-TM13
           JobManager(8)=JobManager(8)-1;
           JobManager(9)=JobManager(9)+1;
           TaskManager(12)=TaskManager(12)-1;
           TaskManager(13)=TaskManager(13)+1;
           num_restart_Tasks=num_restart_Tasks+1;
           duration_restart_Tasks=duration_restart_Tasks+time_restart_Tasks;  
            % disp('                    执行动作restart_Tasks');
 elseif time_stop_Tasks==MinAll%27.stop_Tasks  JM9-JM10  TM13-TM1
           JobManager(9)=JobManager(9)-1;
           JobManager(10)=JobManager(10)+1;
           TaskManager(13)=TaskManager(13)-1;
           TaskManager(1)=TaskManager(1)+1;
           num_stop_Tasks=num_stop_Tasks+1;
           duration_stop_Tasks=duration_stop_Tasks+time_stop_Tasks;   
            % disp('                    执行动作stop_Tasks');
  elseif time_output_JobResult==MinAll%28.output_JobResult   C4-C1 JM10-JM1
           Client(4)=Client(4)-1;
           Client(1)=Client(1)+1;
           JobManager(10)=JobManager(10)-1;
           JobManager(1)=JobManager(1)+1;
           num_output_JobResult=num_output_JobResult+1;
           duration_output_JobResult=duration_output_JobResult+time_output_JobResult;  
            % disp('                    执行动作output_JobResult');
    end
    %unidrnd（）函数里的内容和动作起点有关系，细看组件状态就可以全部写出
    %TargetFlag并发选择动作是同一个号
    %这里动作顺序排号根据什么不清楚
    %最下面的TargetFlag=2;不太懂是怎么跳转的 
    %上面if的TargetFlag可以是这个动作的序号
    %下面TargetFlag赋值，类似于跳转，找距离你这个动作最近的动作？
    TargetTime=TargetTime+MinAll;
    % fprintf('TargetTime的值为: %f\n', TargetTime);
    % disp("此处开始服务流转移⬇️")

      if strcmp(TargetFlag,'1') && time_setting_environment==MinAll % 1.setting_environment  C1-C2  C组件       
            TargetFlag='2'; 
            % disp("                                                        TargetFlag='→2'");
      elseif strcmp(TargetFlag,'2') && time_launch_JobManager==MinAll && unidrnd(Client(2)+1)==1 % 2.launch_JobManager  C2-C3  JM1-JM2   C组件
            TargetFlag='3a';
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3a') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %5.bulid_JobGraph    C3-C4  JG1-JG2  C组件          
            TargetFlag='4a';  
            % disp("                                                        TargetFlag='→4a'");
      elseif strcmp(TargetFlag,'4a') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5a';     
            % disp("                                                        TargetFlag='→5a'");
      elseif strcmp(TargetFlag,'5a') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6a';
            % disp("                                                        TargetFlag='→6a'");
      elseif strcmp(TargetFlag,'6a') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7a';       
            % disp("                                                        TargetFlag='→7a'");
      elseif strcmp(TargetFlag,'7a') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8a';
            % disp("                                                        TargetFlag='→8a'");
      elseif strcmp(TargetFlag,'8a')&& time_apply_Resources1==MinAll && unidrnd(JobManager(3)+1)==1   %w10
            TargetFlag='9a'; 
            % disp("                                                        TargetFlag='→9a'");
      elseif strcmp(TargetFlag,'9a') && time_assgin_Resources2==MinAll && unidrnd(ResourceManager(3)+1)==1 %w11
            TargetFlag='10a';
            % disp("                                                        TargetFlag='→10a'");
      elseif strcmp(TargetFlag,'10a')&& time_distribute_Tasks==MinAll && unidrnd(JobManager(5)+1)==1  %W12
            TargetFlag='11a';       
            % disp("                                                        TargetFlag='→11a'");
      elseif strcmp(TargetFlag,'11a') && time_apply_Resources3==MinAll && unidrnd(TaskManager(4)+1)==1    %w13
            TargetFlag='12a';       
            % disp("                                                        TargetFlag='→12a'");
     elseif strcmp(TargetFlag,'12a') && time_assgin_Resources4==MinAll && unidrnd(ResourceManager(5)+1)==1  %w14
            TargetFlag='14';   
            % disp("                                                        TargetFlag='→14'");
      elseif strcmp(TargetFlag,'14') && time_adjust_Resources==MinAll && unidrnd(ResourceManager(6)+1)==1  %w23
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w23→→ggggggggggggggggggggggggg'");
       elseif strcmp(TargetFlag,'14') && time_generate_Subtasks==MinAll && unidrnd(TaskManager(6)+1)==1      %w15     
            TargetFlag='15';   
            % disp("                                                        TargetFlag='→15'");
      elseif strcmp(TargetFlag,'15')&& time_run_Subtasks==MinAll && unidrnd(TaskManager(7)+1)==1  %w16
            TargetFlag='16';          
            % disp("                                                        TargetFlag='→16'");
      elseif strcmp(TargetFlag,'16') && time_reading_Data==MinAll && unidrnd(SubTasks(3)+1)==1         %w17
            TargetFlag='17';      
            % disp("                                                        TargetFlag='→17'");
      % fprintf('unidrnd(SubTasks(4)+1)的值: %f\n', unidrnd(SubTasks(4)+1));
      elseif strcmp(TargetFlag,'17') && time_filtering_Data==MinAll && unidrnd(SubTasks(4)+1)==1   %w18
            TargetFlag='18';      
            % disp("                                                        TargetFlag='→18'");
      % fprintf('unidrnd(SubTasks(5)+1)的值: %f\n', unidrnd(SubTasks(5)+1));
      elseif strcmp(TargetFlag,'18') && time_transforming_Data==MinAll && unidrnd(SubTasks(5)+1)==1   %w19
            TargetFlag='19';   
            % disp("                                                        TargetFlag='→19'");          
      % fprintf('Datas(4)的值: %f\n', Datas(4));
      % fprintf('unidrnd(Datas(4)+1的值: %f\n', unidrnd(Datas(4)+1));
      elseif strcmp(TargetFlag,'19') && time_output_Result==MinAll && unidrnd(Datas(4)+1)==1   %w20
            TargetFlag='20';    
            % disp("                                                        TargetFlag='→20'");           
      % fprintf('unidrnd(JobManager(6)+1)==1的值: %f\n', unidrnd(JobManager(6)+1));
      elseif strcmp(TargetFlag,'20') && time_monitor_Tasks==MinAll && unidrnd(JobManager(6)+1)==1  %w21
            TargetFlag='21';
            % disp("                                                        TargetFlag='→21'");
      elseif strcmp(TargetFlag,'21') && time_report_Status2==MinAll && unidrnd(SubTasks(8)+1)==1%w22.report_Status2 TM9-TM10  ST8-ST1  ST组件
            TargetFlag='22';    
            % disp("                                                        TargetFlag='→22'");
      elseif strcmp(TargetFlag,'22') && time_monitor_Subtasks==MinAll && unidrnd(JobManager(6)+1)==1  %w24
            TargetFlag='23';        
            % disp("                                                        TargetFlag='→23'");
      elseif strcmp(TargetFlag,'23') && time_report_Status5==MinAll && unidrnd(TaskManager(11)+1)==1  %w25
            TargetFlag='24'; 
            % disp("                                                        TargetFlag='→24'");
      elseif strcmp(TargetFlag,'24') && time_restart_Tasks==MinAll && unidrnd(TaskManager(12)+1)==1   %w26
            TargetFlag='25';       
            % disp("                                                        TargetFlag='→25'");
      elseif strcmp(TargetFlag,'25') && time_stop_Tasks==MinAll && unidrnd(JobManager(9)+1)==1  %w27
            TargetFlag='26';       
            % disp("                                                        TargetFlag='→26'");
      elseif strcmp(TargetFlag,'26') && time_output_JobResult==MinAll && unidrnd(JobManager(10)+1)==1   %w28
            TargetFlag='gg';
            % disp("                                                        TargetFlag='→w28→→gggggggggggggggggggggggggggggggggggggggg'");
      elseif strcmp(TargetFlag,'2') && time_launch_TaskManager==MinAll && unidrnd(Client(2)+1)==1 % w3.launch_TaskManager C2-C3  TM1-TM2  C组件       
            TargetFlag='3'; 
            % disp("                                                        TargetFlag='→3'");
      elseif strcmp(TargetFlag,'3') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %w4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='3a';  %3→3a
            % disp("                                                        TargetFlag='→3a'");
      elseif strcmp(TargetFlag,'3') && time_bulid_JobGraph==MinAll && unidrnd(Client(3)+1)==1 %w5.bulid_JobGraph    C3-C4  JG1-JG2  C组件           
            TargetFlag='4x';        
            % disp("                                                        TargetFlag='→4x'");
      elseif strcmp(TargetFlag,'4x') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='4a';  %4x→4a 
            % disp("                                                        TargetFlag='→4a'");
       elseif strcmp(TargetFlag,'4x') && time_send_JobGraph==MinAll && unidrnd(JobGraph(2)+1)==1%w6.send_JobGraph    JG2-JG3  Dp1-Dp2    JG组件           
            TargetFlag='5y'; 
            % disp("                                                        TargetFlag='→5y'");
       elseif strcmp(TargetFlag,'5y') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='5a'; %5y→5a   
            % disp("                                                        TargetFlag='→5a'");
       elseif strcmp(TargetFlag,'5y') && time_validate_JobGraph==MinAll && unidrnd(Dispatcher(2)+1)==1%7.validate_JobGraph     Dp2-Dp3   Dp组件           
            TargetFlag='6z';        
            % disp("                                                        TargetFlag='→6z'");
       elseif strcmp(TargetFlag,'6z') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='6a';%6z→6a        
            % disp("                                                        TargetFlag='→6a'");
        elseif strcmp(TargetFlag,'6z') && time_return_validation==MinAll && unidrnd(Dispatcher(3)+1)==1%8.return_validation  JG3-JG1 Dp3-Dp4   Dp组件            
            TargetFlag='7o';       
            % disp("                                                        TargetFlag='→7o'");
        elseif strcmp(TargetFlag,'7o') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='7a';  %7o→7a    
            % disp("                                                        TargetFlag='→7a'");
            
        elseif strcmp(TargetFlag,'7o') && time_submit_Job==MinAll && unidrnd(Dispatcher(4)+1)==1%9.submit_Job  Dp4-Dp1  JM2-JM3   Dp组件           
            TargetFlag='8p';  %w8→w9 
            % disp("                                                        TargetFlag='→8p'");
         elseif strcmp(TargetFlag,'8p') && time_register_Resources==MinAll && unidrnd(TaskManager(2)+1)==1 %4.register_Resources  RM1-RM2       TM2-TM3   TM组件           
            TargetFlag='8a'; %w4→w10       
            % disp("                                                        TargetFlag='→8a'");
         end
          n=n+1;
   end % while TargetFlag<100
    TargetTime_Array(i)=TargetTime;
    % fprintf('进完一次服务流之后TargetTime的值为: %f\n', TargetTime);
 end % for i=1:TENumber
    
    disp('---------------response time--------------------')
    MeanTime666=mean(TargetTime_Array)
    
     %这些吞吐量计算公式将各个阶段的任务数量除以总任务数 TENumber 乘以平均处理时间 MeanTime，以获得单位时间内的任务处理率。
    
    % 计算Client 组件的吞吐量
    throughput_Client=((num_setting_environment+num_launch_JobManager+num_launch_TaskManager+num_bulid_JobGraph+num_output_JobResult)/TENumber)/MeanTime666
    fprintf('Client的吞吐量为: %f\n', throughput_Client);
    %JobGraph组件的吞吐量
    throughput_JobGraph=((num_bulid_JobGraph + num_send_JobGraph + num_return_validation)/TENumber)/MeanTime666
    fprintf('JobGraph的吞吐量为: %f\n', throughput_JobGraph);
    %Dispatcher组件的吞吐量
    throughput_Dispatcher=((num_send_JobGraph + num_validate_JobGraph + num_return_validation + num_submit_Job)/TENumber)/MeanTime666
    fprintf('Dispatcher的吞吐量为: %f\n', throughput_Dispatcher);
    %JobManager组件的吞吐量
    throughput_JobManager=((num_launch_JobManager + num_submit_Job + num_apply_Resources1 + num_assgin_Resources2 + num_distribute_Tasks + num_monitor_Tasks + num_restart_Tasks + num_report_Status5 + num_stop_Tasks + num_output_JobResult)/TENumber)/MeanTime666
    fprintf('JobManager的吞吐量为: %f\n', throughput_JobManager);
    %ResourceManager组件的吞吐量
    throughput_ResourceManager=((num_register_Resources + num_apply_Resources1 + num_assgin_Resources2 + num_apply_Resources3 + num_assgin_Resources4 + num_adjust_Resources)/TENumber)/MeanTime666
    fprintf('ResourceManager的吞吐量为: %f\n', throughput_ResourceManager);
    %TaskManager组件的吞吐量
    throughput_TaskManager=((num_launch_TaskManager + num_register_Resources + num_distribute_Tasks + num_apply_Resources3 + num_assgin_Resources4 + num_generate_Subtasks + num_run_Subtasks + num_monitor_Subtasks + num_report_Status5 + num_restart_Tasks + num_stop_Tasks)/TENumber)/MeanTime666
    fprintf('TaskManager的吞吐量为: %f\n', throughput_TaskManager);
    %SubTasks组件的吞吐量
    throughput_SubTasks=((num_generate_Subtasks + num_run_Subtasks + num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result + num_monitor_Subtasks + num_report_Status2)/TENumber)/MeanTime666
    fprintf('SubTasks的吞吐量为: %f\n', throughput_SubTasks);
    %Datas组件的吞吐量
    throughput_Datas=((num_reading_Data + num_filtering_Data + num_transforming_Data + num_output_Result)/TENumber)/MeanTime666
    fprintf('Datas的吞吐量为: %f\n', throughput_Datas);
    
    %不同动作的利用率
    utilzation_setting_environment=(duration_setting_environment/TENumber)/MeanTime666
    utilzation_launch_JobManager=(duration_launch_JobManager/TENumber)/MeanTime666
    utilzation_launch_TaskManager=(duration_launch_TaskManager/TENumber)/MeanTime666
    utilzation_register_Resources=(duration_register_Resources/TENumber)/MeanTime666
    utilzation_bulid_JobGraph=(duration_bulid_JobGraph/TENumber)/MeanTime666
    utilzation_send_JobGraph=(duration_send_JobGraph/TENumber)/MeanTime666
    utilzation_validate_JobGraph=(duration_validate_JobGraph/TENumber)/MeanTime666
    utilzation_return_validation=(duration_return_validation/TENumber)/MeanTime666
    utilzation_submit_Job=(duration_submit_Job/TENumber)/MeanTime666
    utilzation_apply_Resources1=(duration_apply_Resources1/TENumber)/MeanTime666
    utilzation_assgin_Resources2=(duration_assgin_Resources2/TENumber)/MeanTime666
    utilzation_distribute_Tasks=(duration_distribute_Tasks/TENumber)/MeanTime666
    utilzation_apply_Resources3=(duration_apply_Resources3/TENumber)/MeanTime666
    utilzation_assgin_Resources4=(duration_assgin_Resources4/TENumber)/MeanTime666
    utilzation_generate_Subtasks=(duration_generate_Subtasks/TENumber)/MeanTime666
    utilzation__run_Subtasks=(duration_run_Subtasks/TENumber)/MeanTime666
    utilzation_reading_Data=(duration_reading_Data/TENumber)/MeanTime666
    utilzation_filtering_Data=(duration_filtering_Data/TENumber)/MeanTime666
    utilzation_transforming_Data=(duration_transforming_Data/TENumber)/MeanTime666
    utilzation_output_Result=(duration_output_Result/TENumber)/MeanTime666
    utilzation_monitor_Subtasks=(duration_monitor_Subtasks/TENumber)/MeanTime666
    utilzation_report_Status2=(duration_report_Status2/TENumber)/MeanTime666
    utilzation_adjust_Resources=(duration_adjust_Resources/TENumber)/MeanTime666
    utilzation_monitor_Tasks=(duration_monitor_Tasks/TENumber)/MeanTime666
    utilzation_report_Status5=(duration_report_Status5/TENumber)/MeanTime666
    utilzation_restart_Tasks=(duration_restart_Tasks/TENumber)/MeanTime666
    utilzation_stop_Tasks=(duration_stop_Tasks/TENumber)/MeanTime666
    utilzation_output_JobResult=(duration_output_JobResult/TENumber)/MeanTime666
    
    throughput666=[throughput_Client,throughput_JobGraph,throughput_Dispatcher,throughput_JobManager,throughput_ResourceManager,throughput_TaskManager,throughput_SubTasks,throughput_Datas];
    utilzation666=[utilzation_setting_environment,utilzation__run_Subtasks,utilzation_output_Result,utilzation_stop_Tasks,utilzation_bulid_JobGraph,utilzation_send_JobGraph,utilzation_restart_Tasks,utilzation_distribute_Tasks];
    
    
    % Throughout=(num_Client_send_write/TENumber)/MeanTime
    % % throughput_NameNode_return_availability=(num_NameNode_return_availability/TENumber)/MeanTime
    % % throughput_Client_split_packages=(num_Client_split_packages/TENumber)/MeanTime
    % % throughput_Client_send_package=(num_Client_send_package/TENumber)/MeanTime
    % % throughput_DataNode_send_Client=(num_DataNode_send_Client/TENumber)/MeanTime
    % % throughput_DataNode_send_done=(num_DataNode_send_done/TENumber)/MeanTime
    
end  

   