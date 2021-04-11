function varargout = CTS_VLSI_ATP_Tool(varargin)
% CTS_VLSI_ATP_TOOL MATLAB code for CTS_VLSI_ATP_Tool.fig
%      CTS_VLSI_ATP_TOOL, by itself, creates a new CTS_VLSI_ATP_TOOL or raises the existing
%      singleton*.
%
%      H = CTS_VLSI_ATP_TOOL returns the handle to a new CTS_VLSI_ATP_TOOL or the handle to
%      the existing singleton*.
%
%      CTS_VLSI_ATP_TOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CTS_VLSI_ATP_TOOL.M with the given input arguments.
%
%      CTS_VLSI_ATP_TOOL('Property','Value',...) creates a new CTS_VLSI_ATP_TOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CTS_VLSI_ATP_Tool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CTS_VLSI_ATP_Tool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CTS_VLSI_ATP_Tool

% Last Modified by GUIDE v2.5 17-Mar-2021 22:43:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CTS_VLSI_ATP_Tool_OpeningFcn, ...
                   'gui_OutputFcn',  @CTS_VLSI_ATP_Tool_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% End initialization code - DO NOT EDIT


% --- Executes just before CTS_VLSI_ATP_Tool is made visible.
function CTS_VLSI_ATP_Tool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CTS_VLSI_ATP_Tool (see VARARGIN)

% Choose default command line output for CTS_VLSI_ATP_Tool
handles.output = hObject;

LogCellArray = {};
handles.Cellarray1 = LogCellArray;
mypath1 = pwd;
handles.mypath1 = mypath1;

%guidata(hObject,handles)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CTS_VLSI_ATP_Tool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CTS_VLSI_ATP_Tool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%handles.mypath1
%mypath1 = get(handles.mypath1, 'String');
%clearvars -except handles.mypath1
%asdfas = handles.mypath1
%mypath1 = handles.mypath1;
if exist(handles.mypath1) == 0 || isempty(handles.mypath1)
    handles.mypath1 = pwd;
end

if handles.mypath1 == 0
    clearvars
    return
end

if handles.mypath1 == 0
    [handles.myfiles1,handles.mypath1] = uigetfile('*Height.csv','Select Files','MultiSelect','on');
else
    [handles.myfiles1,handles.mypath1] = uigetfile('*Height.csv','Select Files','MultiSelect','on',handles.mypath1);
end
if handles.mypath1 == 0
    return
end
%handles.mypath1= mypath1;

%handles.myfiles1= myfiles1;

filename1 = fullfile(handles.mypath1, handles.myfiles1);
handles.filename1= filename1;
guidata(hObject,handles)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
VLSINom = str2double(get(hObject, 'String'));
if isnan(VLSINom)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.VLSINom = VLSINom;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
VLSITol = str2double(get(hObject, 'String'));
if isnan(VLSITol)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.VLSITol = VLSITol;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

           currentFolder = pwd;
           SpecFileName = 'CTS_VLSI_ATP_Param.ini';
           CTSVLSICamtekSpec = fullfile(currentFolder, SpecFileName);
           
           text = fileread(CTSVLSICamtekSpec);
           TextAsCells = regexp(text, '\n', 'split');
CamtekSpec = {};
SitetoSiteheighttoleranceprecentage = [];
           str1 = regexprep(TextAsCells,'[,;=]', ' ');
           str2 = regexprep(regexprep(str1,'[^- 0-9.eE(,)/]',''), ' \D* ',' ');
           str3 = regexprep(str2, {'\.\s','\E\s','\e\s','\s\E','\s\e'},' ');
           str4 = regexprep(str3, {'\.\s','\E\s','\e\s','\s\E','\s\e'},' ');
           for i=1:size(TextAsCells,2)
               if strfind(cell2mat(TextAsCells(i)),'Camtek VLSI CTS Error Range')== 1
                   %display('Camtek VLSI CTS Error Range found')
                   %display(i);
                   CamtekSpec(1) = str4(i);
               end
               if strfind(cell2mat(TextAsCells(i)),'Average Line P\T Ratio USL')== 1
                   %display('Average Line p\T Ratio USL')
                   %display(i);
                   CamtekSpec(2) = str4(i);
               end
               if strfind(cell2mat(TextAsCells(i)),'Site to Site P\T Ratio USL')== 1
                   %display('Site to Site P\T Ratio USL')
                   %display(i);
                   CamtekSpec(3) = str4(i);
               end
               if strfind(cell2mat(TextAsCells(i)),'Site to Site height tolerance precentage')== 1
                   %display('Site to Site P\T Ratio USL')
                   %display(i);
                   CamtekSpec(4) = str4(i);
               end
               
           end
           CamtekVLSITol = str2double(cell2mat(CamtekSpec(1)));
           SitetoSitePTRatioUSL = str2double(cell2mat(CamtekSpec(3)));
           AverageLinePTRatioUSL = str2double(cell2mat(CamtekSpec(2)));
           SitetoSiteheighttoleranceprecentage = str2double(cell2mat(CamtekSpec(4)));
set(handles.edit16, 'String', sprintf('%.2f',SitetoSitePTRatioUSL))
set(handles.edit15, 'String', sprintf('%.2f',AverageLinePTRatioUSL))
%oldpointer = get(handles.figure1, 'pointer');
set(handles.figure1, 'pointer', 'watch')
drawnow;
% your computation goes here

mypath1 = handles.mypath1;
myfiles1 = handles.myfiles1;
filename1 = handles.filename1;
VLSINom = handles.VLSINom;
VLSITol = handles.VLSITol;

[VLSITableHeader, VLSITableData]  = Raw_Files_To_Table_VLSI(mypath1, myfiles1);


NumberOfNonDataColumns = 4;
VLSITableData_Isolated = cell2mat(VLSITableData(:,(NumberOfNonDataColumns +1):end));

[TableRows,  TableColumns] = size(VLSITableData_Isolated);

for i = 1 : (TableRows)
Site2SiteDIFMat(i) = max(VLSITableData_Isolated(i,:)) - min(VLSITableData_Isolated(i,:)) ;
S2SStdevMat(i) = std(VLSITableData_Isolated(i,:),1);
end

for i = 1 : (TableColumns)
AverageLine(i) = mean(VLSITableData_Isolated(:,i));
end

AverageLineStdev = std(AverageLine(:),1);


Site2SiteUSL(1:TableColumns) =  handles.VLSINom + SitetoSiteheighttoleranceprecentage/2/100* handles.VLSINom;
Site2SiteLSL(1:TableColumns) =  handles.VLSINom - SitetoSiteheighttoleranceprecentage/2/100* handles.VLSINom;

AverageLineUSL(1:TableColumns) =  handles.VLSINom + handles.VLSITol + CamtekVLSITol/2;
AverageLineLSL(1:TableColumns) =  handles.VLSINom - handles.VLSITol - CamtekVLSITol/2;

%%Axes1 plot line for each site

axes(handles.axes1);

for i=1 : TableRows
linecolor = [rand(), rand(), rand()];
plot(VLSITableData_Isolated(i,:),'Color',linecolor,'LineWidth',1.5);
hold on
end

title('Individual Sites Measurement Results')
xlabel('Sample ID') 
ylabel('Height [um]')

plot(Site2SiteUSL,'r--','LineWidth',3);
plot(Site2SiteLSL,'r--','LineWidth',3);

hold off;

axes(handles.axes2);

%for i=1 : TableColumns
%linecolor = [rand(), rand(), rand()];
plot(AverageLine,'Color','k','LineWidth',5);
hold on
plot(AverageLineUSL,'r--','LineWidth',3);
plot(AverageLineLSL,'r--','LineWidth',3);
title('Average Line Measurement Results')
xlabel('Sample ID') 
ylabel('Height [um]')
hold off

%sprintf('%.3f',MaxS2SRepeatability);
TestResult = 'Pass';

PTRatioAverage = (6*AverageLineStdev)/(AverageLineUSL(1) - AverageLineLSL(1))*100;
set(handles.edit8, 'String', sprintf('%.2f',PTRatioAverage))
if PTRatioAverage <= AverageLinePTRatioUSL
   set(handles.edit10, 'String', 'Pass')
   set(handles.edit10,'BackgroundColor','green');
else
    set(handles.edit10, 'String', 'Fail')
    set(handles.edit10,'BackgroundColor','red');
    TestResult = 'Fail';
end
PTRatioSite2Site = (6*Average(S2SStdevMat))/(Site2SiteUSL(1) - Site2SiteLSL(1))*100;
set(handles.edit9, 'String', sprintf('%.2f',PTRatioSite2Site));

if PTRatioSite2Site <= SitetoSitePTRatioUSL
   set(handles.edit11, 'String', 'Pass')
   set(handles.edit11,'BackgroundColor','green');
else
    set(handles.edit11, 'String', 'Fail')
    set(handles.edit11,'BackgroundColor','red');
    TestResult = 'Fail';
end

if (max(AverageLine) < AverageLineUSL(1)) && (min(AverageLine) > AverageLineLSL(1))
    set(handles.edit12, 'String', 'Pass')
    set(handles.edit12,'BackgroundColor','green');
else 
    set(handles.edit12, 'String', 'Fail')
    set(handles.edit12,'BackgroundColor','red');
    TestResult = 'Fail';
end

% Final Result
if TestResult == 'Pass'
    set(handles.edit7, 'String', 'Pass')
    set(handles.edit7,'BackgroundColor','green');
else
    set(handles.edit7, 'String', 'Fail')
    set(handles.edit7,'BackgroundColor','red');
end

set(handles.edit14, 'String', 2*VLSITol)
set(handles.edit13, 'String', max(Site2SiteDIFMat))
if max(Site2SiteDIFMat) <= 2*VLSITol
    set(handles.edit17, 'String', 'Pass')
    set(handles.edit17,'BackgroundColor','green');
else
        set(handles.edit17, 'String', 'Fail')
    set(handles.edit17,'BackgroundColor','red');
end
    

set(handles.figure1, 'pointer', 'arrow')
    

%end

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double




% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path]=uiputfile({'*.bmp','BMP'},'Save Image As');
f=getframe(gcf);
[x,map]=frame2im(f); 
imwrite(x,fullfile(path, file),'bmp');