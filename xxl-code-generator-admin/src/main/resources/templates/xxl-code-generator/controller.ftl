import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
* ${classInfo.classComment}
* Created  by Mr.kk
* DateTime on ${.now?string('yyyy-MM-dd HH:mm:ss')}
*/
@Api(description = "${classInfo.classComment}")
@RestController
public class ${classInfo.className}Controller {

    @Autowired
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增或修改
    */
    @ApiOperation(value = "新增或修改",notes = "新增或修改")
    @PostMapping(value="/${classInfo.className?uncap_first}/insertOrUpdate")
    public ReturnModel insertOrUpdate(HttpServletRequest request,${classInfo.className} ${classInfo.className?uncap_first}){
      if(null == ${classInfo.className?uncap_first}){
        ${classInfo.className?uncap_first} = new ${classInfo.className}();
      }
      int result = ${classInfo.className?uncap_first}Service.insertOrUpdate(${classInfo.className?uncap_first});
      return result>0?new ReturnModel(ReturnModel.SUCCESS,"success",${classInfo.className?uncap_first}):new ReturnModel(ReturnModel.FAIL,"fail",${classInfo.className?uncap_first});
    }

    /**
    * 新增
    */
    @ApiOperation(value = "新增",notes = "新增")
    @PostMapping(value="/${classInfo.className?uncap_first}/insert")
    public ReturnModel insert(HttpServletRequest request,${classInfo.className} ${classInfo.className?uncap_first}){
      int result = ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first});
      return result>0?new ReturnModel(ReturnModel.SUCCESS,"success",${classInfo.className?uncap_first}):new ReturnModel(ReturnModel.FAIL,"fail",${classInfo.className?uncap_first});
    }

    /**
    * 删除
    */
    @ApiOperation(value = "删除",notes = "删除")
    @PostMapping(value="/${classInfo.className?uncap_first}/delete")
    public ReturnModel delete(HttpServletRequest request,String id){
      int result = ${classInfo.className?uncap_first}Service.delete(id);
      return result>0?new ReturnModel(ReturnModel.SUCCESS,"success",id):new ReturnModel(ReturnModel.FAIL,"fail",id);
    }

    /**
    * 修改
    */
    @ApiOperation(value = "修改",notes = "修改")
    @PostMapping(value="/${classInfo.className?uncap_first}/update")
    public ReturnModel update(HttpServletRequest request,${classInfo.className} ${classInfo.className?uncap_first}){
      int result = ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
      return result>0?new ReturnModel(ReturnModel.SUCCESS,"success",${classInfo.className?uncap_first}):new ReturnModel(ReturnModel.FAIL,"fail",${classInfo.className?uncap_first});
    }

    /**
    * 根据Id查询
    */
    @ApiOperation(value = "根据Id查询",notes = "根据Id查询")
    @GetMapping(value="/${classInfo.className?uncap_first}/getById")
    public ReturnModel load(HttpServletRequest request,String id){
      ReturnModel returnmodel = new ReturnModel();
      ${classInfo.className} ${classInfo.className?uncap_first} =  ${classInfo.className?uncap_first}Service.load(id);
      returnmodel.setData(${classInfo.className?uncap_first});
      return returnmodel;
    }

    /**
    * 全部查询
    */
    @ApiOperation(value = "全部查询",notes = "全部查询")
    @GetMapping(value="/${classInfo.className?uncap_first}/getAll")
    public ReturnModel getAll(HttpServletRequest request,${classInfo.className} ${classInfo.className?uncap_first}){
      List<${classInfo.className}> list =  ${classInfo.className?uncap_first}Service.getAll(${classInfo.className?uncap_first});
      if(null!=list && list.size()>0){
        return new ReturnModel(ReturnModel.SUCCESS,"success",list);
      }else{
        return new ReturnModel(ReturnModel.SUCCESS,"success",list);
      }
    }

    /**
    * 分页查询
    */
    @ApiOperation(value = "分页查询",notes = "分页查询")
    @GetMapping(value="/${classInfo.className?uncap_first}/getByPageList")
    public ReturnModel pageList(HttpServletRequest request,
                        ${classInfo.className} ${classInfo.className?uncap_first},
                        @RequestParam(required = false, defaultValue = "0") int offset,
                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
      Object obj =  ${classInfo.className?uncap_first}Service.pageList(offset, pagesize,${classInfo.className?uncap_first});
      if(null!=obj){
        return new ReturnModel(ReturnModel.SUCCESS,"success",obj);
      }else{
        return new ReturnModel(ReturnModel.SUCCESS,"数据为空",obj);
      }
    }

}
