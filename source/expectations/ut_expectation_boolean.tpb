create or replace type body ut_expectation_boolean as
  /*
  utPLSQL - Version X.X.X.X
  Copyright 2016 - 2017 utPLSQL Project

  Licensed under the Apache License, Version 2.0 (the "License"):
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  */
  overriding member procedure to_equal(self in ut_expectation_boolean, a_expected boolean, a_nulls_are_equal boolean := null) is
  begin
    ut_utils.debug_log('ut_expectation_boolean.to_equal(self in ut_expectation_boolean, a_expected boolean, a_nulls_are_equal boolean := null)');
    self.to_( ut_equal(a_expected, a_nulls_are_equal) );
  end;

  member procedure to_be_true(self in ut_expectation_boolean) is
  begin
    ut_utils.debug_log('ut_expectation_boolean.to_be_true(self in ut_expectation_boolean)');
    self.to_( ut_be_true() );
  end;

  member procedure to_be_false(self in ut_expectation_boolean) is
  begin
    ut_utils.debug_log('ut_expectation_boolean.to_be_false(self in ut_expectation_boolean)');
    self.to_( ut_be_false() );
  end;
  
  overriding member procedure not_to_equal(self in ut_expectation_boolean, a_expected boolean, a_nulls_are_equal boolean := null) is
  begin
    ut_utils.debug_log('ut_expectation_boolean.not_to_equal(self in ut_expectation_boolean, a_expected boolean, a_nulls_are_equal boolean := null)');
    self.not_to( ut_equal(a_expected, a_nulls_are_equal) );
  end;
  
  member procedure not_to_be_true(self in ut_expectation_boolean) is
  begin
    ut_utils.debug_log('ut_expectation_boolean.not_to_be_true(self in ut_expectation_boolean)');
    self.not_to( ut_be_true() );
  end;

  member procedure not_to_be_false(self in ut_expectation_boolean) is
  begin
    ut_utils.debug_log('ut_expectation_boolean.not_to_be_false(self in ut_expectation_boolean)');
    self.not_to( ut_be_false() );
  end;

end;
/
