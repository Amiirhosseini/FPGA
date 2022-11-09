module OneCounter(input[9:0] Data_In,output[2:0] Data_Out);
assign Data_Out=Data_In[9]+Data_In[8]+Data_In[7]+Data_In[6]+Data_In[5]+Data_In[4]+Data_In[3]+Data_In[2]+Data_In[1]+Data_In[0];
endmodule    
