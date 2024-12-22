/*
 * @Description:
 * @Author:
 * @Email:
 * @Date:
 * @LastEditors:
 * @LastEditTime:
 */
import service from '@/utils/request'

/**
 * @description: 获取分组好友
 * @param {*}
 * @return {*}
 * @author:
 */
export function listApi() {
  return service({
    url: '/im/conversation/list',
    method: 'get'
  })
}

/**
 * @description: 添加聊天会话
 * @param {*} params
 * @return {*}
 * @author:
 */
export function createApi(params) {
  return service({
    url: '/im/conversation/create',
    method: 'post',
    data: params
  })
}

/**
 * @description: 删除聊天会话
 * @param {*} params
 * @return {*}
 * @author:
 */
export function deleteApi(params) {
  return service({
    url: '/im/conversation/delete',
    method: 'post',
    data: params
  })
}
