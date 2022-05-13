package com.skilldistillery.pokemon.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pokemon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String type;
	private String weakness;
	@Column(name="evolved_name")
	private String evolvedName;
	
	
	public Pokemon() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getWeakness() {
		return weakness;
	}


	public void setWeakness(String weakness) {
		this.weakness = weakness;
	}


	public String getEvolvedName() {
		return evolvedName;
	}


	public void setEvolvedName(String evolvedName) {
		this.evolvedName = evolvedName;
	}


	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", name=" + name + ", type=" + type + ", weakness=" + weakness + ", evolvedName="
				+ evolvedName + "]";
	}
	
	
	
}
