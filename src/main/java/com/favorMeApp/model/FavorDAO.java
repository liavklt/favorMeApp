package com.favorMeApp.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("favorDAO")
public class FavorDAO {
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Favor> getFavors() {
		return jdbc.query("select * from favor", new RowMapper<Favor>() {

			@Override
			public Favor mapRow(ResultSet rs, int rowNum) throws SQLException {
				Favor favor = new Favor();
				favor.setId(rs.getInt("id"));
				favor.setName(rs.getString("name"));

				favor.setText(rs.getString("text"));

				return favor;
			}

		});

	}

	public boolean create(Favor favor) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(favor);

		return jdbc.update("insert into favor (name,text) values (:name,:text)", params) == 1;

	}

	public Favor getFavor(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		return jdbc.queryForObject("select * from favor where id=:id", params, new RowMapper<Favor>() {

			public Favor mapRow(ResultSet rs, int rowNum) throws SQLException {
				Favor favor = new Favor();

				favor.setId(rs.getInt("id"));
				favor.setName(rs.getString("name"));

				favor.setText(rs.getString("text"));

				return favor;
			}

		});

	}

}
