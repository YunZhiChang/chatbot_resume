# README
### Resume


#架構是從AWS專題延伸出來，將題庫的部分移除，Redis有保留，可以日後要應用時使用

#專題連結 https://github.com/iii-cutting-edge-tech-lab/Chatbot_Project_cc103.git
#docker-compose.yml 可開啟chatbot_line、chatbot_redis、chatbot_ngrok、chatbot_aip、chatbot_db等5個docker container
 - #chatbot_line : 主要與line@官網溝通，設計的邏輯及樣板都是在此docker container 設計.
 - #chatbot_redis : 之前專題是用來儲存考題的 memoty storage. 
 - #chatbot_ngrok : 將line@傳送的https格式轉為 http 格式.
 - #chatbot_aip : 各 api 接口，主要是將 menu 及 user 的資訊做業務邏輯處理到資料庫.

#### step 0 : 更改基本資料
 - #將所有資料 Cinghong 改成自己的名稱 
    ex: mv Cinghong_Dev/    XXXX_Dev 

#### step 1 : 將環境up
```sh
$ cd Linechatbot_resume
$ docker-compose up -d
$ bash get_ngrok_url.sh  #抓取ngrok url
```
#### step 2 : 將檔案secret_key的內容填寫上去 
 - 先到 https://developers.line.me 創建新的 provider -> 填完相關資訊後，創建新channel -> Messaging API #產生的 url 填寫到 Line 官網的 Webhook URL 項 
 - 將 Channel secret 、 Channel access token 、Your user ID 、 ngrok的 url 填寫到 secret_key 檔案中
#### step 3 : 菜單相關
 - 建立 menu (菜單的圖檔可以自行設計) 
 - 執行 Cinghongli_Line/code/menu_id.ipynb      到第3個 cell 時，將產生的 rich-menuid               貼到secret_key 檔案中的相對應位置 
 - 再繼續執行Cinghong_Line/code/menu_id.ipynb 第4、5 cell 
 #### step 4 : 
 - 開啟 API Server(ip:8880) 
 - 執行 Cinghong_Dev/code/code.ipynb -->Run   All
 #### step 5 : 
 - 開啟 Line Server 
 - 執行 Cinghong_Line/code/app.ipynb -->     Run All
 


