

### 功能模块

- [x] 登录
- [x] 注册
- [x] 好友分组
- [x] 添加好友
- [x] 好友私聊
- [ ] 群聊

### 项目结构

```bash
vue3-src
├─api 接口模块
│
├─assets 静态资源模块
│  ├─icon svg图标
│  ├─images 图片
│  └─sass 样式
│ 
├─components 组件模块
│ 
├─router 动态
│ 
├─store vuex
│  ├─modules
│  │  ├─conversation 会话模块
│  │  ├─friend 好友模块
│  │  ├─message 消息模块
│  │  ├─status 侧边栏状态模块
│  │  ├─user 用户登录信息模块
│  │  └─websocket websocket模块
│  └─index 动态加载模块
│ 
├─types typescript接口
│ 
├─utils 工具模块
│  ├─constants 常量
│  ├─index 工具
│  ├─request axios二次封装
│  ├─storage 本地缓存工具
│  └─websocket websocket工具类
│
├─views 视图模块
│  ├─chat 聊天页
│  ├─login 登录页面

```

### 开发

```bash
# 克隆项目
git clone 

# 进入项目目录
cd im-vue

# 安装依赖
npm install

# 启动服务
npm run dev   # 开发环境
npm run prod  # 正式环境
npm run test  # 测试环境

# 发布
npm run build:dev   # 开发环境
npm run build:prod  # 正式环境
npm run build:test  # 测试环境
```


