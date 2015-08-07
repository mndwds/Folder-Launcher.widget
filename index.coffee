command: ""

refreshFrequency: 300000

render: ->"""
<li class="button" id="iCloud">
  <img src="launchers.widgets/folder-launcher.widget/iCloud.png">
</li>
<br>
<li class="button" id="Computer">
  <img src="launchers.widgets/folder-launcher.widget/Computer.png">
</li>
<br>
<li class="button" id=Disk>
  <img src="launchers.widgets/folder-launcher.widget/Disk.png">
</li>
<br>
<li class="button" id="Home">
  <img src="launchers.widgets/folder-launcher.widget/Home.png">
</li>
<br>
<li class="button" id="Library">
  <img src="launchers.widgets/folder-launcher.widget/Library.png">
</li>
<br>
<li class="button" id="Documents">
  <img src="launchers.widgets/folder-launcher.widget/Documents.png">
</li>
<br>
<li class="button" id="Pictures">
  <img src="launchers.widgets/folder-launcher.widget/Pictures.png">
</li>
<br>
<li class="button" id="Movies">
  <img src="launchers.widgets/folder-launcher.widget/Movies.png">
</li>
<br>
<li class="button" id="Music">
  <img src="launchers.widgets/folder-launcher.widget/Music.png">
</li>
"""

afterRender: (domEl) ->
  $(domEl).on 'click', '#iCloud', => @run "open '/Users/Travis/Library/Mobile\ Documents/com~apple~CloudDocs'"
  $(domEl).on 'click', '#Computer', => @run "cd ~/Library/Application\\ Support/Übersicht/widgets/launchers.widgets/folder-launcher.widget/ && ./script.sh"
  $(domEl).on 'click', '#Disk', => @run "open '/'"
  $(domEl).on 'click', '#Home', => @run "open ~"
  $(domEl).on 'click', '#Library', => @run "open ~/Library"
  $(domEl).on 'click', '#Documents', => @run "open ~/Documents"
  $(domEl).on 'click', '#Pictures', => @run "open ~/Pictures"
  $(domEl).on 'click', '#Movies', => @run "open ~/Movies"
  $(domEl).on 'click', '#Music', => @run "open ~/Music"

style: """
  position: fixed
  top: 180px
  left: 0px

  img
    height: 35px

  .button
    display: inline
"""