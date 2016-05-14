class Bug < ActiveRecord::Base
  belongs_to :user

  has_many :bugs_assignees
  has_many :assignees, through: :bugs_assignees, source: :user


  LABELS = ['new', 'assigned', 'resolved', 're-open', 'verified', 'closed']

  validates :title, :status, :user_id, presence: true

  validates :status, inclusion: {in: LABELS,
                         message: "{{value}} must be in #{LABELS.join ','}"}


end
