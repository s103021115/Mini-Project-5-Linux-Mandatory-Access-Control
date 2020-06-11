# Mini-Project-5-Linux-Mandatory-Access-Control

要使用AppArmor要遵循以下步驟

皆為root模式

step 1 
安裝AppArmor
  apt-get install apparmor
  apt-get install apparmor-utils
  apt-get install apparmor-profiles
  
之後確認是否完成安裝
  aa-status
  出現apparmor module is loaded.表示安裝成功
  
step 2
建立profiles 
  aa-genprof (你想要的檔案或程式)
  會跳出選項選finish
  
step 3
更改profiles
  使用vim編輯
  這次作業的Program X需要/var/X/、/var/Y/的權限 所以將其新增進去
  //w為寫入、r為讀取、ux為可以執行(因為X要執行Y所以多加權限)
  /var/X mwr,
  /var/Y mwrux,  
  
  owner /usr/local/bin/px/X.sh rux, //在前面加上owner表示只有Program X的擁有者可以使用
  
  Program Y只需要/var/Y/所以只新增
  /var/Y mwr,
  
step 4
更新profiles
  使用 /etc/apparmor.d/profile.name | apparmor_parser -r做跟新
