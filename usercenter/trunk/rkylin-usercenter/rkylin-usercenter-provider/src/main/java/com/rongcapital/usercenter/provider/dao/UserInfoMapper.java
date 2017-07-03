/**
 * <p>Title: ${file_name}</p>
 * <p>Description:${project_name} </p>
 * <p>Copyright:${date} </p>
 * <p>Company: rongshu</p>
 * <p>author: ${user}</p>
 * <p>package: ${package_name}</p>
 * @version v1.0.0
 */
package com.rongcapital.usercenter.provider.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rongcapital.usercenter.provider.po.UserInfo;

/**
 * Description:
 * 
 * @author: Administrator
 * @CreateDate: 2016-8-23
 * @version: V1.0
 */
public interface UserInfoMapper {

    int deleteByPrimaryKey(Long userId);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);

    UserInfo selectByLoginName(@Param(value="loginName") String loginName,@Param(value="orgCode")  String orgCode);
    List<UserInfo> selectByIdNumber(@Param(value="idCardNumber") String idCardNumber);
    UserInfo selectByUserId(@Param(value="userId") String userId,@Param(value="orgCode")  String orgCode);
}