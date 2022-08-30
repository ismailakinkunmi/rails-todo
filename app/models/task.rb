class Task < ApplicationRecord
  belongs_to :project

  STATUS_OPTIONS = ['not-started', 'in-progress', 'complete']
  validates :status, inclusion: {in: STATUS_OPTIONS}

  def badge_color
    case status
      when 'not-started'
        'secondary'
      when 'in-progress'
        'info'
      when 'complete'
        'success' 
    end       
  end

  def in_progress?
    status == 'in-progress'
  end
  def complete?
    status == 'complete'
  end
  def not_started?
    status == 'not-started'
  end
  
end
