package com.slipper.service.file.service;

import com.slipper.service.file.entity.FileEntity;
import org.springframework.web.multipart.MultipartFile;

/**
 * 文件存储
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
public interface FileService {

    /**
     * 文件创建存储
     * @param file
     * @return
     */
    FileEntity create(MultipartFile file);

}

