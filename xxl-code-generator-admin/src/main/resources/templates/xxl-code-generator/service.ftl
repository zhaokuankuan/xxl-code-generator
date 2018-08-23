import java.util.Map;

/**
* ${classInfo.classComment}
* Created  by Mr.kk
* DateTime on ${.now?string('yyyy-MM-dd HH:mm:ss')}
*/
public interface ${classInfo.className}Service {

    /**
    * 新增或修改
    */
    public ReturnModel insertOrUpdate(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 新增
    */
    public ReturnModel insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    public ReturnModel delete(String id);

    /**
    * 更新
    */
    public ReturnModel update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据Id查询
    */
    public ReturnModel load(String id);

   /**
    * 全部查询
    */
    public List<${classInfo.className}> getAll();

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize);

}
