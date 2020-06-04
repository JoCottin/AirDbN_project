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
    user_not_a_dj?
  end

  def destroy?
    record.user == user
  end

  private

  def user_not_a_dj?
    user.dj == false
  end
end
