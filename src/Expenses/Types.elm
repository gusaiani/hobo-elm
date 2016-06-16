module Expenses.Types exposing (..)

import Date exposing (Date)
import HttpBuilder exposing (Error, Response)

import Types exposing (..)
import Budgets.Types as Budgets

type alias ExpenseId = RecordId

type alias Expense = {
  id : ExpenseId,
  budgetId: RecordId,
  budgetName: String,
  createdByName: String,
  amount : Float,
  comment : String,
  createdAt : Date,
  clicked : Bool
}

type alias ExpenseList = List Expense

type alias Model = {
  buttons : Budgets.Model,
  expenses : ExpenseList,
  nextExpenseId : Int,
  weekNumber: Int, -- relative number of week, 0 (zero) means current

  -- form
  amount : String
}

type Msg
  = AmountInput String
  | BudgetList Budgets.Msg

  -- adding/removing expenses
  | RequestAdd
  | RequestRemove Expense
  | UpdateAdded (Result (Error Expense) (Response Expense))
  | UpdateRemoved (Result (Error Expense) (Response Expense))

  -- showing/editing expenses
  | Show Expense

  -- loading and displaying the list
  | RequestList
  | UpdateList (Result (Error ExpenseList) (Response ExpenseList) )

  -- navigating between weeks
  | LoadPreviousWeek
  | LoadNextWeek