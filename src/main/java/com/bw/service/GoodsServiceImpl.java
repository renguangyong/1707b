package com.bw.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.entity.Brand;
import com.bw.entity.Goodkind;
import com.bw.entity.Goods;
import com.bw.mapper.GoodsMapper;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Resource
	private GoodsMapper mapper;
	public List<Goods> queryGoodsAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return mapper.queryGoodsAll(map);
	}
	public List<Brand> queryBrand() {
		// TODO Auto-generated method stub
		return mapper.queryBrand();
	}
	public List<Goodkind> queryGoodkind() {
		// TODO Auto-generated method stub
		return mapper.queryGoodkind();
	}
	public boolean add(Goods good) {
		// TODO Auto-generated method stub
		return mapper.add(good)>0?true:false;
	}
	public List<Goods> queryGoodsAll(Integer gid) {
		// TODO Auto-generated method stub
		return mapper.queryGoodsAll(gid);
	}
	public Integer update(Goods good) {
		// TODO Auto-generated method stub
		return mapper.update(good);
	}
	

}
