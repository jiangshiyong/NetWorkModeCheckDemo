# NetWorkModeCheckDemo
###ios check networkmode 检测网络模式



### 根据检测苹果iOS设备状态栏来判断网络模式，目前有这几种模式判断，但不保证是否通过苹果审核。



		if (n == 0) {
            
            netType = NETWORK_TYPE_NONE;
        }else if (n==1){
            
            netType = NETWORK_TYPE_2G;
        }else if (n==2){
            
            netType = NETWORK_TYPE_3G;
        }else if (n==3){
            
            netType = NETWORK_TYPE_4G;
        }else if (n==4){
            
            netType = NETWORK_TYPE_LTE;
        }else if (n==5){
            
            netType = NETWORK_TYPE_WIFI;//5
        }