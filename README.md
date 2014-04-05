netselect Cookbook
==================

Select fastest apt mirror.

Requirements
------------

#### packages
- `apt`

Attributes
----------

#### netselect
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['netselect']['distribution']</tt></td>
    <td>String</td>
    <td>Specify which distribution to use</td>
    <td><tt>stable</tt></td>
  </tr>
  <tr>
    <td><tt>['netselect']['arch']</tt></td>
    <td>Boolean</td>
    <td>Use mirrors containing ARCH</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['netselect']['sources']</tt></td>
    <td>Boolean</td>
    <td>Include sources mirrors</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['netselect']['nonfree']</tt></td>
    <td>Boolean</td>
    <td>Include also non-free section</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['netselect']['ftp']</tt></td>
    <td>Boolean</td>
    <td>Use FTP mirrors instead of HTTP</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['netselect']['country']</tt></td>
    <td>String</td>
    <td>Only test the sites found under the country specified</td>
    <td><tt>empty</tt></td>
  </tr>
</table>

Usage
-----
#### netselect

Select the fastest apt mirror.
