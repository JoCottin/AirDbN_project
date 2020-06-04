class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    is_user_not_a_dj?
  end

  def is_user_not_a_dj?
    user.dj == false
  end

  def destroy?
    record.user == user
  end
end
