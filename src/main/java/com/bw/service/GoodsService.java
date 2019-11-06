package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.entity.Brand;
import com.bw.entity.Goodkind;
import com.bw.entity.Goods;

public interface GoodsService {

	List<Goods> queryGoodsAll(Map<String, Object> map);

	List<Brand> queryBrand();

	List<Goodkind> queryGoodkind();

	boolean add(Goods good);

	List<Goods> queryGoodsAll(Integer gid);

	Integer update(Goods good);

}
