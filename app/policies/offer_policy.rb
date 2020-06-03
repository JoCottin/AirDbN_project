class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user_is_dj?
  end

  def destroy?
    record.user == user
  end

  def update?
    record.user == user
  end

  private

  def user_is_dj?
    user.dj
  end
end
