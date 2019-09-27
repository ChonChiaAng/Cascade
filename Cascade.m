function varargout = Cascade(varargin)
% CASCADE MATLAB code for Cascade.fig
%      CASCADE, by itself, creates a new CASCADE or raises the existing
%      singleton*.
%
%      H = CASCADE returns the handle to a new CASCADE or the handle to
%      the existing singleton*.
%
%      CASCADE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CASCADE.M with the given input arguments.
%
%      CASCADE('Property','Value',...) creates a new CASCADE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cascade_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cascade_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cascade

% Last Modified by GUIDE v2.5 10-Jun-2019 12:34:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cascade_OpeningFcn, ...
                   'gui_OutputFcn',  @Cascade_OutputFcn, ...
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


% --- Executes just before Cascade is made visible.
function Cascade_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cascade (see VARARGIN)

% Choose default command line output for Cascade
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cascade wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cascade_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Press1.
function Press1_Callback(hObject, eventdata, handles)
% hObject    handle to Press1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)

PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P1 as Core
    P1=P1+1, P2=P2+1, P3=P3+1, P4=P4+1, P7=P7+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P1 as Core
    P1=P1-1, P2=P2-1, P3=P3-1, P4=P4-1, P7=P7-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P1 as Core
    P1=P1+1, P5=P5+1, P6=P6+1, P8=P8+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P1 as Core
    P1=P1-1, P5=P5-1, P6=P6-1, P8=P8-1, P9=P9-1,    
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Press2.
function Press2_Callback(hObject, eventdata, handles)
% hObject    handle to Press3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)

PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P2 as Core
    P1=P1+1, P2=P2+1, P3=P3+1, P5=P5+1, P8=P8+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P2 as Core
    P1=P1-1, P2=P2-1, P3=P3-1, P5=P5-1, P8=P8-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P2 as Core
    P2=P2+1, P4=P4+1, P6=P6+1, P7=P7+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P2 as Core
    P2=P2-1, P4=P4-1, P6=P6-1, P7=P7-1, P9=P9-1,    
    
end



 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),

if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Press3.
function Press3_Callback(hObject, eventdata, handles)
% hObject    handle to Press3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)

PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P3 as Core
    P1=P1+1, P2=P2+1, P3=P3+1, P6=P6+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P3 as Core
    P1=P1-1, P2=P2-1, P3=P3-1, P6=P6-1, P9=P9-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P3 as Core
    P3=P3+1, P5=P5+1, P4=P4+1,P7=P7+1, P8=P8+1, 
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P3 as Core
    P3=P3-1, P5=P5-1, P4=P4-1,P7=P7-1, P8=P8-1, 
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Press4.
function Press4_Callback(hObject, eventdata, handles)
% hObject    handle to Press4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)

PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P4 as Core
    P1=P1+1, P4=P4+1, P5=P5+1, P6=P6+1, P7=P7+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P4 as Core
    P1=P1-1, P4=P4-1, P5=P5-1, P6=P6-1, P7=P7-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P4 as Core
    P4=P4+1, P2=P2+1, P8=P8+1,P3=P3+1, P9=P9+1, 
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P4 as Core
    P4=P4-1, P2=P2-1, P8=P8-1,P3=P3-1, P9=P9-1,
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Press5.
function Press5_Callback(hObject, eventdata, handles)
% hObject    handle to Press5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)
PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P5 as Core
    P2=P2+1, P4=P4+1, P5=P5+1, P6=P6+1, P8=P8+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P5 as Core
    P2=P2-1, P4=P4-1, P5=P5-1, P6=P6-1, P8=P8-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P5 as Core
    P1=P1+1, P3=P3+1, P5=P5+1, P7=P7+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P5 as Core
    P1=P1-1, P3=P3-1, P5=P5-1, P7=P7-1, P9=P9-1,
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end

% --- Executes on button press in Press6.
function Press6_Callback(hObject, eventdata, handles)
% hObject    handle to Press6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)
PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P6 as Core
    P3=P3+1, P4=P4+1, P5=P5+1, P6=P6+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P6 as Core
    P3=P3-1, P4=P4-1, P5=P5-1, P6=P6-1, P9=P9-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P6 as Core
    P1=P1+1, P2=P2+1, P6=P6+1, P7=P7+1, P8=P8+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P6 as Core
    P1=P1-1, P2=P2-1, P6=P6-1, P7=P7-1, P8=P8-1,
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end

% --- Executes on button press in Press7.
function Press7_Callback(hObject, eventdata, handles)
% hObject    handle to Press7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)
PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P7 as Core
    P1=P1+1, P4=P4+1, P7=P7+1, P8=P8+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P7 as Core
    P1=P1-1, P4=P4-1, P7=P7-1, P8=P8-1, P9=P9-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P7 as Core
    P2=P2+1, P3=P3+1, P5=P5+1, P6=P6+1, P7=P7+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P7 as Core
    P2=P2-1, P3=P3-1, P5=P5-1, P6=P6-1, P7=P7-1,
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Press8.
function Press8_Callback(hObject, eventdata, handles)
% hObject    handle to Press8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)
PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P8 as Core
    P2=P2+1, P5=P5+1, P7=P7+1, P8=P8+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P8 as Core
    P2=P2-1, P5=P5-1, P7=P7-1, P8=P8-1, P9=P9-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P8 as Core
    P1=P1+1, P3=P3+1, P4=P4+1, P6=P6+1, P8=P8+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P8 as Core
    P1=P1-1, P3=P3-1, P4=P4-1, P6=P6-1, P8=P8-1,
    
end


 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Press9.
function Press9_Callback(hObject, eventdata, handles)
% hObject    handle to Press9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)
PlusMinus=get(handles.UpDownButton, 'Value')
PlusCross=get(handles.LinearDiagonal, 'Value')

 P1=get(handles.Press1, 'UserData')
 P2=get(handles.Press2, 'UserData')
 P3=get(handles.Press3, 'UserData')
 P4=get(handles.Press4, 'UserData')
 P5=get(handles.Press5, 'UserData')
 P6=get(handles.Press6, 'UserData')
 P7=get(handles.Press7, 'UserData')
 P8=get(handles.Press8, 'UserData')
 P9=get(handles.Press9, 'UserData')
 
if (PlusMinus==0)&&(PlusCross==0)   %Plus Addition with P9 as Core
    P3=P3+1, P6=P6+1, P7=P7+1, P8=P8+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==0) %Plus Deduction with P9 as Core
    P3=P3-1, P6=P6-1, P7=P7-1, P8=P8-1, P9=P9-1,
    
elseif (PlusMinus==0)&&(PlusCross==1) %Cross Addition with P9 as Core
    P1=P1+1, P2=P2+1, P4=P4+1, P5=P5+1, P9=P9+1,
    
elseif (PlusMinus==1)&&(PlusCross==1) %Cross Deduction with P9 as Core
    P1=P1-1, P2=P2-1, P4=P4-1, P5=P5-1, P9=P9-1,
    
end

 set(handles.Press1, 'UserData',P1), set(handles.Press1, 'String',num2str(P1)),
 set(handles.Press2, 'UserData',P2), set(handles.Press2, 'String',num2str(P2)),
 set(handles.Press3, 'UserData',P3), set(handles.Press3, 'String',num2str(P3)),
 set(handles.Press4, 'UserData',P4), set(handles.Press4, 'String',num2str(P4)),
 set(handles.Press5, 'UserData',P5), set(handles.Press5, 'String',num2str(P5)),
 set(handles.Press6, 'UserData',P6), set(handles.Press6, 'String',num2str(P6)),
 set(handles.Press7, 'UserData',P7), set(handles.Press7, 'String',num2str(P7)),
 set(handles.Press8, 'UserData',P8), set(handles.Press8, 'String',num2str(P8)),
 set(handles.Press9, 'UserData',P9), set(handles.Press9, 'String',num2str(P9)),
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press9, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

ScoreT="You have clicked  number of times.", Score=get(handles.ScoreText, 'UserData')+1, ScoreStr=insertAfter(ScoreT,'clicked ',num2str(Score) ), set(handles.ScoreText, 'String', ScoreStr), set(handles.ScoreText, 'UserData', Score)

 if (P1==9&&P2==9&&P3==9&&P4==9&&P5==9&&P6==9&&P7==9&&P8==9&&P9==9)
     msgbox('Congratulations, You have Won!!!')
 elseif (P1>9||P2>9||P3>9||P4>9||P5>9||P6>9||P7>9||P8>9||P9>9)||(P1<0||P2<0||P3<0||P4<0||P5<0||P6<0||P7<0||P8<0||P9<0)
     
     Fail=get(handles.FailText, 'UserData')+1
     set(handles.FailText, 'String', num2str(Fail))
     set(handles.FailText, 'UserData', Fail)
     
     set(handles.Press1, 'enable', 'off')
     set(handles.Press2, 'enable', 'off')
     set(handles.Press3, 'enable', 'off')
     set(handles.Press4, 'enable', 'off')
     set(handles.Press5, 'enable', 'off')
     set(handles.Press6, 'enable', 'off')
     set(handles.Press7, 'enable', 'off')
     set(handles.Press8, 'enable', 'off')
     set(handles.Press9, 'enable', 'off')
     
     set(handles.Reset, 'enable', 'on')
 end
 
% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     set(handles.Press1, 'enable', 'on')
     set(handles.Press2, 'enable', 'on')
     set(handles.Press3, 'enable', 'on')
     set(handles.Press4, 'enable', 'on')
     set(handles.Press5, 'enable', 'on')
     set(handles.Press6, 'enable', 'on')
     set(handles.Press7, 'enable', 'on')
     set(handles.Press8, 'enable', 'on')
     set(handles.Press9, 'enable', 'on')

P1=randi([0,9]), set(handles.Press1, 'String', num2str(P1)),set(handles.Press1, 'UserData', P1)
P2=randi([0,9]), set(handles.Press2, 'String', num2str(P2)),set(handles.Press2, 'UserData', P2)
P3=randi([0,9]), set(handles.Press3, 'String', num2str(P3)),set(handles.Press3, 'UserData', P3)
P4=randi([0,9]), set(handles.Press4, 'String', num2str(P4)),set(handles.Press4, 'UserData', P4)
P5=randi([0,9]), set(handles.Press5, 'String', num2str(P5)),set(handles.Press5, 'UserData', P5)
P6=randi([0,9]), set(handles.Press6, 'String', num2str(P6)),set(handles.Press6, 'UserData', P6)
P7=randi([0,9]), set(handles.Press7, 'String', num2str(P7)),set(handles.Press7, 'UserData', P7)
P8=randi([0,9]), set(handles.Press8, 'String', num2str(P8)),set(handles.Press8, 'UserData', P8)
P9=randi([0,9]), set(handles.Press9, 'String', num2str(P9)),set(handles.Press9, 'UserData', P9)

if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press98, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end

set(handles.ScoreText, 'String', 'You have clicked 0 number of times.')
set(handles.ScoreText, 'UserData', 0)

set(handles.UpDownButton, 'String', 'Add 1')
set(handles.UpDownButton, 'Value', 0)
set(handles.LinearDiagonal, 'String', 'Plus')
set(handles.LinearDiagonal, 'Value', 0)

set(hObject, 'enable', 'off')

% --- Executes on button press in HelpButton.
function HelpButton_Callback(hObject, eventdata, handles)
% hObject    handle to HelpButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)
uiwait(msgbox('The objective of this game is to get all the boxes to have a value of 9 by either increasing or decreasing numbers by 1 in a vertical or non-vertical formation.','Cascade Help','modal'));

msgbox('Click on the boxes to increase or decrease its value')
% --- Executes on button press in UpDownButton.
function UpDownButton_Callback(hObject, eventdata, handles)
% hObject    handle to UpDownButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of UpDownButton
get(hObject)

if get(hObject,'Value')==1
    set(hObject, 'String', 'Minus 1')
elseif get(hObject,'Value')==0
     set(hObject, 'String', 'Add 1')
end

% --- Executes on button press in LinearDiagonal.
function LinearDiagonal_Callback(hObject, eventdata, handles)
% hObject    handle to LinearDiagonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject)

if get(hObject,'Value')==1
    set(hObject, 'String', 'Cross')
elseif get(hObject,'Value')==0
     set(hObject, 'String', 'Plus')
end

% --- Executes on button press in StartButton.
function StartButton_Callback(hObject, eventdata, handles)
% hObject    handle to StartButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Press1, 'enable', 'on')
set(handles.Press2, 'enable', 'on')
set(handles.Press3, 'enable', 'on')
set(handles.Press4, 'enable', 'on')
set(handles.Press5, 'enable', 'on')
set(handles.Press6, 'enable', 'on')
set(handles.Press7, 'enable', 'on')
set(handles.Press8, 'enable', 'on')
set(handles.Press9, 'enable', 'on')

P1=randi([0,9]), set(handles.Press1, 'String', num2str(P1)),set(handles.Press1, 'UserData', P1)
P2=randi([0,9]), set(handles.Press2, 'String', num2str(P2)),set(handles.Press2, 'UserData', P2)
P3=randi([0,9]), set(handles.Press3, 'String', num2str(P3)),set(handles.Press3, 'UserData', P3)
P4=randi([0,9]), set(handles.Press4, 'String', num2str(P4)),set(handles.Press4, 'UserData', P4)
P5=randi([0,9]), set(handles.Press5, 'String', num2str(P5)),set(handles.Press5, 'UserData', P5)
P6=randi([0,9]), set(handles.Press6, 'String', num2str(P6)),set(handles.Press6, 'UserData', P6)
P7=randi([0,9]), set(handles.Press7, 'String', num2str(P7)),set(handles.Press7, 'UserData', P7)
P8=randi([0,9]), set(handles.Press8, 'String', num2str(P8)),set(handles.Press8, 'UserData', P8)
P9=randi([0,9]), set(handles.Press9, 'String', num2str(P9)),set(handles.Press9, 'UserData', P9)
 
if P1>1&&P1<5
   set(handles.Press1, 'BackgroundColor',[0.94 0.94 0.94])
elseif P1>=5&&P1<9
   set(handles.Press1, 'BackgroundColor',[0 0 1])
elseif P1==9||P1==0
   set(handles.Press1, 'BackgroundColor',[0 1 0]) 
elseif P1>9 || P1<0
   set(handles.Press1, 'BackgroundColor',[1 0 0]) 
end

if P2>1&&P2<5
   set(handles.Press2, 'BackgroundColor',[0.94 0.94 0.94])
elseif P2>=5&&P2<9
   set(handles.Press2, 'BackgroundColor',[0 0 1])
elseif P2==9||P2==0
   set(handles.Press2, 'BackgroundColor',[0 1 0]) 
elseif P2>9 || P2<0
   set(handles.Press2, 'BackgroundColor',[1 0 0]) 
end

if P3>1&&P3<5
   set(handles.Press3, 'BackgroundColor',[0.94 0.94 0.94])
elseif P3>=5&&P3<9
   set(handles.Press3, 'BackgroundColor',[0 0 1])
elseif P3==9||P3==0
   set(handles.Press3, 'BackgroundColor',[0 1 0]) 
elseif P3>9 || P3<0
   set(handles.Press3, 'BackgroundColor',[1 0 0]) 
end

if P4>1&&P4<5
   set(handles.Press4, 'BackgroundColor',[0.94 0.94 0.94])
elseif P4>=5&&P4<9
   set(handles.Press4, 'BackgroundColor',[0 0 1])
elseif P4==9||P4==0
   set(handles.Press4, 'BackgroundColor',[0 1 0]) 
elseif P4>9 || P4<0
   set(handles.Press4, 'BackgroundColor',[1 0 0]) 
end

if P5>1&&P5<5
   set(handles.Press5, 'BackgroundColor',[0.94 0.94 0.94])
elseif P5>=5&&P5<9
   set(handles.Press5, 'BackgroundColor',[0 0 1])
elseif P5==9||P5==0
   set(handles.Press5, 'BackgroundColor',[0 1 0]) 
elseif P5>9 || P5<0
   set(handles.Press5, 'BackgroundColor',[1 0 0]) 
end

if P6>1&&P6<5
   set(handles.Press6, 'BackgroundColor',[0.94 0.94 0.94])
elseif P6>=5&&P6<9
   set(handles.Press6, 'BackgroundColor',[0 0 1])
elseif P6==9||P6==0
   set(handles.Press6, 'BackgroundColor',[0 1 0]) 
elseif P6>9 || P6<0
   set(handles.Press6, 'BackgroundColor',[1 0 0]) 
end

if P7>1&&P7<5
   set(handles.Press7, 'BackgroundColor',[0.94 0.94 0.94])
elseif P7>=5&&P7<9
   set(handles.Press7, 'BackgroundColor',[0 0 1])
elseif P7==9||P7==0
   set(handles.Press7, 'BackgroundColor',[0 1 0]) 
elseif P7>9 || P7<0
   set(handles.Press7, 'BackgroundColor',[1 0 0]) 
end

if P8>1&&P8<5
   set(handles.Press8, 'BackgroundColor',[0.94 0.94 0.94])
elseif P8>=5&&P8<9
   set(handles.Press8, 'BackgroundColor',[0 0 1])
elseif P8==9||P8==0
   set(handles.Press8, 'BackgroundColor',[0 1 0]) 
elseif P8>9 || P8<0
   set(handles.Press8, 'BackgroundColor',[1 0 0]) 
end

if P9>1&&P9<5
   set(handles.Press98, 'BackgroundColor',[0.94 0.94 0.94])
elseif P9>=5&&P9<9
   set(handles.Press9, 'BackgroundColor',[0 0 1])
elseif P9==9||P9==0
   set(handles.Press9, 'BackgroundColor',[0 1 0]) 
elseif P9>9 || P9<0
   set(handles.Press9, 'BackgroundColor',[1 0 0]) 
end


set(hObject, 'enable', 'off')
