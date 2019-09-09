package com.fsh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fsh.Utils.StringUtils;

/**
 * @作者：Mr.冯
 * @日期：2019年9月9日
 */
@Controller
public class Controllers {

	
	@RequestMapping(value="/toadd")
	public String textto(){
		
		return "add";
	}
	@RequestMapping(value="/add")
	@ResponseBody
	public int text(String str){
		//通过hasText()工具方法验证前端提交的值不能空，而且空白字符串也不行
		if(StringUtils.isBlank(str)){
			//通过toHtml()工具方法将字符串转换成html文本
//			，并向控制台输出处理结果，结果必须是经过处理后的html文本
			String replaceStr = com.fsh.text.StringUtils.replaceStr(str);
			System.out.println(replaceStr);
			return 1;
		}
		return 0;
	}
}
