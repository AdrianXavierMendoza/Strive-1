package com.noraokeeffe.strive.respositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.noraokeeffe.strive.models.Goal;

@Repository
public interface GoalRepo extends CrudRepository<Goal, Long> {

}