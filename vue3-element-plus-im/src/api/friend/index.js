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
export function listApi(params) {
  return service({
    url: '/im/friend/list',
    method: 'get',
    params: params
  })
}

/**
 * @description: 添加好友
 * @param {*} params
 * @return {*}
 * @author:
 */
export function addApi(params) {
  return service({
    url: '/im/friend/create',
    method: 'post',
    data: params
  })
}

/**
 * @description: 接受好友请求
 * @param {*} params
 * @return {*}
 * @author:
 */
export function acceptApi(params) {
  return service({
    url: '/im/friend/accept',
    method: 'post',
    data: params
  })
}

/**
 * @description: 拒绝好友请求
 * @param {*} params
 * @return {*}
 * @author:
 */
export function refuseApi(params) {
  return service({
    url: '/im/friend/refuse',
    method: 'post',
    data: params
  })
}

/**
 * @description: 重新申请好友请求
 * @param {*} params
 * @return {*}
 * @author:
 */
export function againApi(params) {
  return service({
    url: '/im/friend/again',
    method: 'post',
    data: params
  })
}

/**
 * @description: 移动好友到分组
 * @param {*} params
 * @return {*}
 * @author:
 */
export function moveApi(params) {
  return service({
    url: '/im/friend/move',
    method: 'post',
    data: params
  })
}

/**
 * @description: 删除好友
 * @param {*} params
 * @return {*}
 * @author:
 */
export function deleteApi(params) {
  return service({
    url: '/im/friend/delete',
    method: 'post',
    data: params
  })
}

/**
 * @description: 获取好友申请列表
 * @param {*}
 * @return {*}
 * @author:
 */
export function applyListApi(params) {
  return service({
    url: '/im/friend/apply/list',
    method: 'get',
    params: params
  })
}

/**
 * @description: 获取好友聊天记录
 * @param {*}
 * @return {*}
 * @author:
 */
export function messagePageApi(params) {
  return service({
    url: '/im/private/message/page',
    method: 'get',
    params: params
  })
}

/**
 * @description: 设置聊天记录已读
 * @param {*}
 * @return {*}
 * @author:
 */
export function messageStatusApi(params) {
  return service({
    url: '/im/private/message/status',
    method: 'post',
    data: params
  })
}

