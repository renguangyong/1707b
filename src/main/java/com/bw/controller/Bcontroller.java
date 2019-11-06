package com.bw.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bw.entity.Brand;
import com.bw.entity.Goodkind;
import com.bw.entity.Goods;
import com.bw.service.GoodsService;
import com.bw.utils.FileUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class Bcontroller {

	@Resource
	private GoodsService service;
	
	@RequestMapping("/queryGoodsAll")
	public String list(String gname,Integer bid,Integer gsid,Model m,@RequestParam(defaultValue="1")Integer pageNum){
		PageHelper.startPage(pageNum,2);
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("gname",gname);
		map.put("bid",bid);
		map.put("gsid",gsid);
		List<Goods> list=service.queryGoodsAll(map);
		PageInfo<Goods> page=new PageInfo<Goods>(list);
		m.addAttribute("page",page);
		return "list";
	}
	
	@RequestMapping("/img")
	public void img(String path,HttpServletRequest request,HttpServletResponse response){
		FileUtils.lookImg(path, request, response);
	}
	
	@RequestMapping("/querySelect")
	@ResponseBody
	public Map<String, Object> list(){
		Map<String,Object> map=new HashMap<String, Object>();
		List<Brand> brand=service.queryBrand();
		List<Goodkind> goodkind=service.queryGoodkind();
		
		map.put("brand", brand);
		map.put("goodkind", goodkind);
		return map;
	}
	
	@RequestMapping("/add")
	public String add(Goods good,MultipartFile file) throws Exception, IOException{
		String upload = FileUtils.upload(file);
		good.setImg(upload);
		boolean flag=service.add(good);
		if(flag){
			return "redirect:queryGoodsAll";
		}
		return "add";
	}
	
	@RequestMapping("/queryGoodsById")
	public String queryGoodsById(Integer gid,Model m){
	
		List<Goods> list=service.queryGoodsAll(gid);
		m.addAttribute("good",list);
		return "update";
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public Integer update(Goods good){
		Integer flag=service.update(good);
		return flag;
	}
}
