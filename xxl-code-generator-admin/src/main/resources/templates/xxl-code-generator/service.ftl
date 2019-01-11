import java.util.Map;
import java.util.List;
/**
* ${classInfo.classComment}
* Created  by Mr.kk
* DateTime on ${.now?string('yyyy-MM-dd HH:mm:ss')}
*/
public interface ${classInfo.className}Service {

    /**
    * 新增或修改
    */
    public int insertOrUpdate(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 新增
    */
    public int insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    public int delete(String id);

    /**
    * 更新
    */
    public int update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据Id查询
    */
    public ${classInfo.className} load(String id);

   /**
    * 全部查询
    */
    public List<${classInfo.className}> getAll(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize,${classInfo.className} ${classInfo.className?uncap_first});

}
