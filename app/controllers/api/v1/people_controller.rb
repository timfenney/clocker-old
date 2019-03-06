class Api::V1::PeopleController < ApplicationController
  def index
    render json: Person.all
  end

  def create
    person = Person.create(fruit_params)
    render json: person
  end

  def destroy
    Person.destroy(params[:id])
  end

  def update
    person = Person.find(params[:id])
    person.update_attributes(person_params)
    render json: person
  end

  private

  def person_params
    params.require(:person).permit(:id, :name, :type)
  end
end
