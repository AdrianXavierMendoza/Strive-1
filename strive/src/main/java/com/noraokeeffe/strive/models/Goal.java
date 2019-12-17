package com.noraokeeffe.strive.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="goals")
public class Goal {
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	 private Long id;

	 @Size(min=1, message="Please enter a first name")
	 private String goalName;
	 
	 @NotNull(message="Please enter a date for an event")
	 @FutureOrPresent
	 @DateTimeFormat(pattern="yyyy-MM-dd")
	 private Date date;
	 
	 private Double goalAmt;
	 
	 private String goalResult;
	 
	 @Column(updatable=false)
     @DateTimeFormat(pattern="yyyy-MM-dd")
     private Date createdAt;
    
	 @DateTimeFormat(pattern="yyyy-MM-dd")
     private Date updatedAt;
	 
	 @ManyToOne(fetch=FetchType.LAZY)
	 @JoinColumn(name="user_id")
	 private User user;

	 public Goal() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getGoalName() {
		return goalName;
	}

	public void setGoalName(String goalName) {
		this.goalName = goalName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Double getGoalAmt() {
		return goalAmt;
	}

	public void setGoalAmt(Double goalAmt) {
		this.goalAmt = goalAmt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getGoalResult() {
		return goalResult;
	}

	public void setGoalResult(String goalResult) {
		this.goalResult = goalResult;
	}

	@PrePersist
	protected void onCreate(){
		this.createdAt = new Date();
	}
	
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	 
	 
	 
	 
}