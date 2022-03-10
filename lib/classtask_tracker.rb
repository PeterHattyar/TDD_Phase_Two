class ClasstaskTracker

  def initialize(task1, task2)
    @task_list = [task1, task2]
  end

  def add(chore)

    @task_list << chore
    return @task_list

  end

  def done(donechore)
    
      @task_list.each do |donetask|
        if donetask == donechore
          donetask.replace "*#{donetask}"
        end
      end

    return @task_list
  end

  def gone
    @task_list.reject! { |item| item.include?("*") }
    return @task_list
  end


end