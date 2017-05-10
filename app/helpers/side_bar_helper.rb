module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Поиск пилотов',
      :icon => 'search',
      :controller => :racers,
      :action => :search
    }
    result << {
      :name => 'Календарь чемпионата',
      :icon => 'calendar',
      :controller => :calendar_of_the_championships,
      :action => :index2
    }
    result << {
      :name => 'Составы команд',
      :controller => :teams, :action => :index2,
      :icon => 'users'
    }
    result << {
      :name => 'Пилоты',
     :controller => :racers, :action => :index2,
     :icon => 'drivers-license'
    }



    result << {
      :name => 'Администрирование',
      :icon => 'users',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'users',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :users, :action => :new,
       :icon => 'user-plus',
       :class => 'long'},
      {:name => 'Роли',
       :controller => :roles, :action => :index,
       :icon => 'align-center',
       :class => 'long'},
    ]}
    result << {
      :name => 'Редактирование',
      :icon => 'pencil',
      :children => [
      {:name => 'Календарь чемпионата',
       :icon => 'calendar',
       :controller => :calendar_of_the_championships,
       :action => :index,
       :class => 'long'},
      {:name => 'Составы команд',
       :controller => :teams, :action => :index,
       :icon => 'users',
       :class => 'long'},
    ]}

    result
  end

  def is_open?(ctr, act)
    case ctr.to_s
    when 'users', 'roles'
      ctr.to_s == controller_name.to_s
    else
      false
    end
  end
end
