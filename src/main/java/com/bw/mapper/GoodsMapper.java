package com.bw.mapper;

import java.util.List;
import java.util.Map;

import com.bw.entity.Brand;
import com.bw.entity.Goodkind;
import com.bw.entity.Goods;

public interface GoodsMapper {

	List<Goods> queryGoodsAll(Map<String, Object> map);

	List<Brand> queryBrand();

	List<Goodkind> queryGoodkind();

	int add(Goods good);

	List<Goods> queryGoodsAll(Integer gid);

	Integer update(Goods good);

}
