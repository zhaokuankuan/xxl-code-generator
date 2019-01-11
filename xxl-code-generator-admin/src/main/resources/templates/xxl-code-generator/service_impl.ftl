import org.springframework.stereotype.Service;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* ${classInfo.classComment}
* Created  by Mr.kk
* DateTime on ${.now?string('yyyy-MM-dd HH:mm:ss')}
*/
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Autowired
	private ${classInfo.className}Dao ${classInfo.className?uncap_first}Dao;

	/**
    * 新增或修改
    */
	@Override
	public int insertOrUpdate(${classInfo.className} ${classInfo.className?uncap_first}) {
	  int result = 0;
	  if (${classInfo.className?uncap_first} == null) {
	     return result;
	  }
	  if(null != ${classInfo.className?uncap_first}.getId() && !"".equals(${classInfo.className?uncap_first}.getId())){
		//修改
       result =  update(${classInfo.className?uncap_first});
	  }else{ //新增
       result = insert(${classInfo.className?uncap_first});
	  }
	  return result;
	}

	/**
    * 新增
    */
	@Override
	public int insert(${classInfo.className} ${classInfo.className?uncap_first}) {
	  return ${classInfo.className?uncap_first}Dao.insert(${classInfo.className?uncap_first});
	}

	/**
	* 删除
	*/
	@Override
	public int delete(String id) {
	  return ${classInfo.className?uncap_first}Dao.delete(id);
	}

	/**
	* 修改
	*/
	@Override
	public int update(${classInfo.className} ${classInfo.className?uncap_first}) {
	  return ${classInfo.className?uncap_first}Dao.update(${classInfo.className?uncap_first});
	}

	/**
	* 根据Id查询
	*/
	@Override
	public ${classInfo.className} load(String id) {
	  return ${classInfo.className?uncap_first}Dao.load(id);
	}

 	/**
    * 全部查询
    */
    public List<${classInfo.className}> getAll(){
		List<${classInfo.className}> list = ${classInfo.className?uncap_first}Dao.getAll();
		return list;
	};

	/**
	* 分页查询
	*/
	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {
      Map<String, Object> map = new HashMap<String, Object>();
	  List<${classInfo.className}> pageList = ${classInfo.className?uncap_first}Dao.pageList(offset, pagesize);
	  int totalCount = ${classInfo.className?uncap_first}Dao.pageListCount(offset, pagesize);
	  // 分页查询的数据的返回
	  map.put("pageList", pageList);
	  map.put("totalCount", totalCount);
	  return map;
	}

}
