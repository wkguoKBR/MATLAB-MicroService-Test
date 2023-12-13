% Script to call mypag webservice
clear;clc;

url = 'http://localhost:9900/MYPAGTHE/MYPAGTHE';
data = struct('nargout', 1, 'rhs', [55, 45]);
json_data = jsonencode(data);

options = weboptions('RequestMethod', 'post', 'MediaType', 'application/json', 'CharacterEncoding', 'UTF-8');

response = webwrite(url, json_data, options);
% disp(response); % Display the response from the server

disp(response.lhs.mwdata)