package com.BanNhacCu.DAO;

import java.util.ArrayList;

public interface ObjectDAO<T> {
	ArrayList<T> selectAll();
	T selectById(int id);
	int insert(T o);
	int delete(int id);
	int update(T o);
}
