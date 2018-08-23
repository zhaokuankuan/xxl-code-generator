import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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

	@Resource
	private ${classInfo.className}Dao ${classInfo.className?uncap_first}Dao;

	/**
    * 新增或修改
    */
	@Override
	public ReturnModel insertOrUpdate(${classInfo.className} ${classInfo.className?uncap_first}) {
	  ReturnModel result = new ReturnModel();
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
	public ReturnModel insert(${classInfo.className} ${classInfo.className?uncap_first}) {
      ReturnModel result = new ReturnModel();
	  if (${classInfo.className?uncap_first} == null) {
	     result.addDefaultModel("404","必要参数缺失");
		 return result;
	  }
	  ${classInfo.className?uncap_first}Dao.insert(${classInfo.className?uncap_first});
	  result.setSuccess(true);
	  return result;
	}

	/**
	* 删除
	*/
	@Override
	public ReturnModel delete(String id) {
      ReturnModel result = new ReturnModel();
	  if(null == id || "".equals(id)){
 	 	result.setMsg("id不能为空！");
		return result;
	  }
	  int ret = ${classInfo.className?uncap_first}Dao.delete(id);
	  if(ret > 0){
		result.setSuccess(true);
		return  result;
	  }else{
		return  result;
	  }
	}

	/**
	* 修改
	*/
	@Override
	public ReturnModel update(${classInfo.className} ${classInfo.className?uncap_first}) {
      ReturnModel result = new ReturnModel();
	  int ret = ${classInfo.className?uncap_first}Dao.update(${classInfo.className?uncap_first});
	  if(ret > 0){
		result.setSuccess(true);
		return  result;
	  }else{
		return  result;
	  }
	}

	/**
	* 根据Id查询
	*/
	@Override
	public ReturnModel load(String id) {
 	  ReturnModel result = new ReturnModel();
 	  if(null == id || "".equals(id)){
 	 	result.setMsg("id不能为空！");
		return result;
	  }
	  ${classInfo.className} ${classInfo.className?uncap_first} = ${classInfo.className?uncap_first}Dao.load(id);
 	  result.addDefaultModel("value",${classInfo.className?uncap_first});
	  result.setSuccess(true);
	  return result;
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
	  List<${classInfo.className}> pageList = ${classInfo.className?uncap_first}Dao.pageList(offset, pagesize);
	  int totalCount = ${classInfo.className?uncap_first}Dao.pageListCount(offset, pagesize);
	  // 分页查询的数据的返回
	  Map<String, Object> result = new HashMap<String, Object>();
	  result.put("pageList", pageList);
	  result.put("totalCount", totalCount);
	  return result;
	}

}
