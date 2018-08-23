import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
* ${classInfo.classComment}
* Created  by Mr.kk
* DateTime on ${.now?string('yyyy-MM-dd HH:mm:ss')}
*/
@Api(value = "${classInfo.className}",tags = {"${classInfo.classComment}"})
@RestController
public class ${classInfo.className}Controller {

    @Resource
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增或修改
    */
    @ApiOperation(value = "insertOrUpdate",notes = "新增或修改")
    @RequestMapping(value="/${classInfo.className?uncap_first}/insertOrUpdate",method = {RequestMethod.GET,RequestMethod.POST})
    public ReturnModel insertOrUpdate(${classInfo.className} ${classInfo.className?uncap_first}){
      if(null == ${classInfo.className?uncap_first}){
        ${classInfo.className?uncap_first} = new ${classInfo.className}();
      }
      return ${classInfo.className?uncap_first}Service.insertOrUpdate(${classInfo.className?uncap_first});
    }

    /**
    * 新增
    */
    @ApiOperation(value = "insert",notes = "新增")
    @RequestMapping(value="/${classInfo.className?uncap_first}/insert",method = {RequestMethod.GET,RequestMethod.POST})
    public ReturnModel insert(${classInfo.className} ${classInfo.className?uncap_first}){
      return ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first});
    }

    /**
    * 删除
    */
    @ApiOperation(value = "delete",notes = "删除")
    @RequestMapping(value="/${classInfo.className?uncap_first}/delete",method = {RequestMethod.GET,RequestMethod.POST})
    public ReturnModel delete(String id){
      return ${classInfo.className?uncap_first}Service.delete(id);
    }

    /**
    * 修改
    */
    @ApiOperation(value = "update",notes = "修改")
    @RequestMapping(value="/${classInfo.className?uncap_first}/update",method = {RequestMethod.GET,RequestMethod.POST})
    public ReturnModel update(${classInfo.className} ${classInfo.className?uncap_first}){
      return ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
    }

    /**
    * 根据Id查询
    */
    @ApiOperation(value = "getById",notes = "根据Id查询")
    @RequestMapping(value="/${classInfo.className?uncap_first}/getById",method = {RequestMethod.GET,RequestMethod.POST})
    public ReturnModel load(String id){
      return ${classInfo.className?uncap_first}Service.load(id);
    }

    /**
    * 全部查询
    */
    @ApiOperation(value = "getAll",notes = "全部查询")
    @RequestMapping(value="/${classInfo.className?uncap_first}/getAll",method = {RequestMethod.GET,RequestMethod.POST})
    public List<${classInfo.className}> getAll(){
      return ${classInfo.className?uncap_first}Service.getAll();
    }

    /**
    * 分页查询
    */
    @ApiOperation(value = "getByPageList",notes = "分页查询")
    @RequestMapping(value="/${classInfo.className?uncap_first}/getByPageList",method = {RequestMethod.GET,RequestMethod.POST})
    public Map<String, Object> pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
      return ${classInfo.className?uncap_first}Service.pageList(offset, pagesize);
    }

}
