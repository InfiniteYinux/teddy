
%��·���ļ����ϳ�һ��CSV�ļ�
function[]=Combine(Name)
%·���ļ�����·��
fileFolder=fullfile(['E:\PythonFiles\Teddy\' Name]);
dirOutput=dir(fullfile(fileFolder,'*.csv'));
fileNames={dirOutput.name}';
FileN=char(fileNames);
%���λ�þ���·��
Folder='E:\PythonFiles\Teddy\Combine';
index=2;
R={'vehicleplatenumber'	'device_num' 'direction_angle' 'lng' 'lat' 'acc_state'  'right_turn_signals' 'left_turn_signals' 'hand_brake' 'foot_brake' 'location_time' 'gps_speed' 'mileage'};
for i=1:size(FileN,1)
    L=size(FileN(i,:),2);
    Table= readtable(['E:\PythonFiles\Teddy\' Name '\' FileN(i,[1:L-5]) '.csv']);
    E=table2cell(Table);
    for j=1:size(E,1)
        R(index,:)=E(j,:);
        index=index+1;
    end
end

cell2csv([Folder '\' Name,'.csv'],R);
end