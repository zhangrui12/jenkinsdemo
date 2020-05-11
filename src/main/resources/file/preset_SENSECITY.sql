SET FOREIGN_KEY_CHECKS=0;

USE `uums`;

-- [system]

-- [module]

-- [module_type]

-- [resource]
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('1', '用户资源', '1', '0', '/uums/users', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('2', '修改用户资源', '1', '0', '/uums/users/[0-9]\\d{0,18}', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('3', '重置用户密码', '1', '0', '/uums/users/[0-9]\\d{0,18}/reset', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('4', '修改用户密码', '1', '0', '/uums/users/[0-9]\\d{0,18}/modifypwd', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('5', '启用/禁用用户', '1', '0', '/uums/users/[0-9]\\d{0,18}/changestate', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('6', '查询用户权限', '1', '0', '/uums/users/[0-9]\\d{0,18}/permissions', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('7', '用户默认密码', '1', '0', '/uums/users/defaultpassword', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('8', '用户数量', '1', '0', '/uums/users/cnts', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('9', '查询用户部门结构', '1', '0', '/uums/users/orgs', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('10', '部门资源', '1', '0', '/uums/orgs', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('11', '单个部门资源', '1', '0', '/uums/orgs/[0-9]\\d{0,18}', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('12', '部门资源', '1', '0', '/uums/orgs/tree', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('13', '用户资源', '1', '0', '/uums/users/self', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('14', '用户修改自身密码接口', '1', '0', '/uums/users/self/modifypwd', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('15', '部门用户资源', '1', '0', '/uums/orgs/users', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('51', '角色资源', '1', '0', '/uums/roles', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('52', '单个角色资源', '1', '0', '/uums/roles/[0-9]\\d{0,18}', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('53', '启用/禁用角色资源', '1', '0', '/uums/roles/[0-9]\\d{0,18}/changestate', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('54', '角色权限资源', '1', '0', '/uums/roles/[0-9]\\d{0,18}/permissions', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('55', '角色权限资源', '1', '0', '/uums/[a-zA-Z0-9]{0,64}/module/permissions', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('56', '角色权限资源', '1', '0', '/uums/[a-zA-Z0-9]{0,64}/v[0-9]\\d{0,18}/module/permissions', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('57', '单个角色资源', '1', '0', '/uums/[a-zA-Z0-9]{0,64}/v[0-9]\\d{0,18}/roles/[0-9]\\d{0,18}/permissions', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('59', '角色资源', '1', '0', '/uums/v[0-9]\\d{0,18}/roles', '1', '1');
INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('60', '单个角色资源', '1', '0', '/uums/v[0-9]\\d{0,18}/roles/[0-9]\\d{0,18}', '1', '1');

-- [permission]
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('1', '1', '查询用户', '01060001', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('2', '1', '新建用户,成功后返回userId', '01060002', '1', '0', '3', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('3', '1', '批量删除用户', '01060003', '1', '0', '4', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('4', '2', '查询用户个人信息', '01060004', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('5', '2', '修改用户', '01060005', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('6', '2', '删除用户', '01060006', '1', '0', '4', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('7', '3', '重置密码', '01060007', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('8', '4', '修改密码', '01060008', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('9', '5', '禁用用户', '01060009', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('10', '6', '查询用户权限', '01060010', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('11', '6', '修改用户角色权限', '01060011', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('12', '7', '获取用户默认密码', '01060012', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('13', '8', '获取全部用户数量', '01060013', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('14', '9', '查询用户部门结构', '01060014', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('15', '10', '查询部门', '01060015', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('16', '10', '新建部门', '01060016', '1', '0', '3', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('17', '11', '查询部门', '01060017', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('18', '11', '修改部门', '01060018', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('19', '11', '删除部门', '01060019', '1', '0', '4', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('20', '12', '查询部门树形结构', '01060020', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('21', '13', '用户查询自身个人信息', '01060021', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('22', '13', '修改个人信息', '01060022', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('23', '14', '修改密码', '01060023', '1', '0', '1', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('24', '15', '查询部门用户', '01060024', '1', '0', '2', '1', '1', '{SYSCODE}', '{USER_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('51', '51', '查询用户角色列表', '01070051', '1', '0', '2', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('52', '51', '添加角色', '01070052', '1', '0', '3', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('53', '52', '修改角色', '01070053', '1', '0', '1', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('54', '52', '删除角色', '01070054', '1', '0', '4', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('55', '53', '启用/禁用角色', '01070055', '1', '0', '1', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('56', '54', '查询角色对应权限列表', '01070056', '1', '0', '2', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('57', '55', '查询系统模块权限', '01070057', '1', '0', '2', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('58', '56', '查询系统模块权限', '01070058', '1', '0', '2', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('59', '57', '查询角色权限v3', '01070059', '1', '0', '2', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('60', '59', '添加角色v3', '01070060', '1', '0', '3', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`,`sys_code`, `module_code`) VALUES ('61', '60', '修改角色v3', '01070061', '1', '0', '1', '1', '1', '{SYSCODE}', '{ROLE_MODULE_CODE}');

-- [module_permission]
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('1', '1', '{USER_MODULE_ID}', '{TYPE_QUERY}') INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('2', '2', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('3', '3', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('4', '4', '{USER_MODULE_ID}', '{TYPE_QUERY}');;
INSERT
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('5', '5', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('6', '6', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('7', '7', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('8', '8', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('9', '9', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('10', '10', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('11', '11', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('12', '12', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('13', '13', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('14', '14', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('15', '15', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('16', '16', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('17', '17', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('18', '18', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('19', '19', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('20', '20', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('21', '21', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('22', '22', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('23', '23', '{USER_MODULE_ID}', '{TYPE_EDIT}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('24', '24', '{USER_MODULE_ID}', '{TYPE_QUERY}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('51', '51', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('52', '52', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('53', '53', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('54', '54', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('55', '55', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('56', '56', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('57', '57', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('58', '58', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('59', '59', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('60', '60', '{ROLE_MODULE_ID}', '{TYPE_USE}');
INSERT INTO `info_module_permission` (`id`, `permission_id`, `module_id`, `type_id`) VALUES ('61', '61', '{ROLE_MODULE_ID}', '{TYPE_USE}');

-- [role]
INSERT INTO `info_role` (`role_id`, `name`, `code`, `state`, `remark`, `user_defined`, `creator`, `create_time`, `update_user`, `update_time`, `user_num`, `sys_id`) VALUES ('1', '管理员', 'SC_ADMIN', '1', '管理员', NULL, '1', NOW(), '1', NOW(), '0', {SYS_ID});
INSERT INTO `info_role` (`role_id`, `name`, `code`, `state`, `remark`, `user_defined`, `creator`, `create_time`, `update_user`, `update_time`, `user_num`, `sys_id`) VALUES ('2', '厂家设置', 'SC_VENDOR', '1', '厂家设置', NULL, '1', NOW(), '1', NOW(), '0', {SYS_ID});

-- [role_permission]
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('1', '1', '1');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('2', '1', '2');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('3', '1', '3');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('4', '1', '4');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('5', '1', '5');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('6', '1', '6');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('7', '1', '7');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('8', '1', '8');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('9', '1', '9');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('10', '1', '10');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('11', '1', '11');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('12', '1', '12');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('13', '1', '13');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('14', '1', '14');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('15', '1', '15');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('16', '1', '16');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('17', '1', '17');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('18', '1', '18');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('19', '1', '19');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('20', '1', '20');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('21', '1', '21');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('22', '1', '22');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('23', '1', '23');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('24', '1', '24');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('51', '1', '51');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('52', '1', '52');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('53', '1', '53');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('54', '1', '54');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('55', '1', '55');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('56', '1', '56');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('57', '1', '57');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('58', '1', '58');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('59', '1', '59');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('60', '1', '60');
INSERT INTO `info_r_role_permission` (`id`, `role_id`, `permission_id`) VALUES ('61', '1', '61');

-- [user]
INSERT INTO `info_user` (`user_id`, `organ_id`, `serial`, `username`, `type`, `realname`, `password`, `state`, `create_by`, `load_ip_now`, `load_ip_last`, `remark`, `first`, `creator_path`) VALUES ('1', '1', NULL, 'admin', '0', '系统管理员', 'f9b08876cc2e6d9c0fd559511e5401ee', '1', '1', '127.0.0.1', '127.0.0.1', NULL, '1', '0-1');
INSERT INTO `info_user` (`user_id`, `organ_id`, `serial`, `username`, `type`, `realname`, `password`, `state`, `create_by`, `load_ip_now`, `load_ip_last`, `remark`, `first`, `creator_path`) VALUES ('2', '1', NULL, 'vendor', '0', '厂家', '3bdd6d6b5958d4b937dab90632cbf140', '1', '2', '127.0.0.1', '127.0.0.1', NULL, '1', '0-2');

-- [user_role]
INSERT INTO `info_r_user_role` (`user_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `info_r_user_role` (`user_id`, `role_id`) VALUES ('2', '1');
INSERT INTO `info_r_user_role` (`user_id`, `role_id`) VALUES ('2', '2');

-- [organization]
INSERT INTO `info_organization` (`organ_id`, `name`, `abbreviation`, `state`, `code`, `path`, `address`, `parent_id`, `remark`, `create_time`, `creator`, `update_time`, `update_user`, `total_num`, `created_num`, `parent_code`, `num`) VALUES ('1', '一级部门（可修改名称）', '', '1', 'O001', '0-1-', '', '0', '', NOW(), '1', NOW(), '1', '0', '0', '0', '0');

-- [info_uums_setting]
INSERT INTO `info_uums_setting` (`setting_item`, `setting_value`, `remark`) VALUES (1, 200, '用户上限数量');
INSERT INTO `info_uums_setting` (`setting_item`, `setting_value`, `remark`) VALUES (2, 1, '登录方式');

INSERT INTO `info_resource` (`resource_id`, `name`, `state`, `parent_resource`, `url_prefix`, `creator`, `update_user`) VALUES ('9999', '公共资源', '1', '0', '/', '1', '1');
INSERT INTO `info_permission` (`permission_id`, `resource_id`, `name`, `code`, `state`, `relation`, `action`, `creator`, `update_user`, `sys_code`, `module_code`) VALUES ('100', '9999', '公共资源', '01000000', '1', 0, '3', '1', '1', 'SENSECITY', 'SC0003');
INSERT INTO `info_r_role_permission` (`role_id`, `permission_id`) VALUES ('1', '100');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '104', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '110', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '119', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '120', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '122', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '137', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '138', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '139', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '140', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '141', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '142', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '143', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '144', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '145', '101');
INSERT INTO `info_module_permission` (`permission_id`, `module_id`, `type_id`) VALUES ('100', '146', '101');
