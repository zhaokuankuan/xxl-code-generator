package com.xxl.codegenerator.admin.util;

import com.xxl.codegenerator.admin.core.CodeGeneratorTool;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;

/**
 * freemarker tool
 *
 * @author xuxueli 2018-05-02 19:56:00
 */
@Component
public class FreemarkerTool {
    private static final Logger logger = LoggerFactory.getLogger(CodeGeneratorTool.class);

    @Autowired
    private Configuration configuration;

    /**
     * process Template Into String
     *
     * @param template
     * @param model
     * @return
     * @throws IOException
     * @throws TemplateException
     */
    public String processTemplateIntoString(Template template, Object model)
            throws IOException, TemplateException {

        StringWriter result = new StringWriter();
        template.process(model, result);
        return result.toString();
    }

    /**
     * process String
     *
     * @param templateName
     * @param params
     * @return
     * @throws IOException
     * @throws TemplateException
     */
    public String processString(String templateName, Map<String, Object> params)
            throws IOException, TemplateException {
        //设置Classic Compatibile，字段值为空时，正常转换。
        //此模式也会有其他的bug
        //设置了全局的classic_compatible属性，而在某个页面上又不想遵守这个属性该怎么办呢？这样就可以在当前这个页面上采用以下的办法，让当前的页面不再支持传统模式：<#setting classic_compatible=false>
        configuration.setClassicCompatible(true);
        Template template = configuration.getTemplate(templateName);
        String htmlText = processTemplateIntoString(template, params);
        return htmlText;
    }


}
