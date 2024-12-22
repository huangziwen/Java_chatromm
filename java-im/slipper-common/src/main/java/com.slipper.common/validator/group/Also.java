package com.slipper.common.validator.group;

import javax.validation.GroupSequence;

/**
 * 校验顺序 并且关系
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
@GroupSequence({Create.class, Update.class})
public interface Also {
}
