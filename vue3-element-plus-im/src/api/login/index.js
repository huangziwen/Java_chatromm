import service from '@/utils/request'

/**
 * @description: 登入
 * @param {*} params
 * @return {*}
 * @author:
 */
export function loginApi(params) {
  return service({
    url: '/im/login',
    method: 'post',
    data: params
  })
}

/**
 * @description: 注册
 * @param {*}
 * @return {*}
 * @author:
 */
export function registerApi(params) {
  return service({
    url: '/im/register',
    method: 'post',
    data: params
  })
}

/**
 * @description: 登出
 * @param {*}
 * @return {*}
 * @author:
 */
export function logoutApi() {
  return service({
    url: '/im/logout',
    method: 'post'
  })
}
