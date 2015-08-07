command: ""

refreshFrequency: 300000

render: ->"""
<li class="button" id="1">
  <img src="folder-launcher.widget/Icons/iCloud.png">
</li>
<br>
<li class="button" id="2">
  <img src="folder-launcher.widget/Icons/Computer.png">
</li>
<br>
<li class="button" id="3">
  <img src="folder-launcher.widget/Icons/Disk.png">
</li>
<br>
<li class="button" id="4">
  <img src="folder-launcher.widget/Icons/Home.png">
</li>
<br>
<li class="button" id="5">
  <img src="folder-launcher.widget/Icons/Library.png">
</li>
<br>
<li class="button" id="6">
  <img src="folder-launcher.widget/Icons/Documents.png">
</li>
<br>
<li class="button" id="7">
  <img src="folder-launcher.widget/Icons/Pictures.png">
</li>
<br>
<li class="button" id="8">
  <img src="folder-launcher.widget/Icons/Movies.png">
</li>
<br>
<li class="button" id="9">
  <img src="folder-launcher.widget/Icons/Music.png">
</li>
"""

afterRender: (domEl) ->
  $(domEl).on 'click', '#1', => @run "open '/Users/USER/Library/Mobile\ Documents/com~apple~CloudDocs'"
  $(domEl).on 'click', '#2', => @run "open '/System/Library/CoreServices/Finder.app'"
  $(domEl).on 'click', '#3', => @run "open '/'"
  $(domEl).on 'click', '#4', => @run "open ~"
  $(domEl).on 'click', '#5', => @run "open ~/Library"
  $(domEl).on 'click', '#6', => @run "open ~/Documents"
  $(domEl).on 'click', '#7', => @run "open ~/Pictures"
  $(domEl).on 'click', '#8', => @run "open ~/Movies"
  $(domEl).on 'click', '#9', => @run "open ~/Music"

style: """
  position: fixed
  top: 180px
  left: 0px

  img
    height: 35px

  .button
    display: inline
"""