# ControlSyncFuncs
helper function to control synchronized functions

# How To Use
```lua
  ControlSyncFunctions(
      function(Thread)
          print("Hellow")
          coroutine.resume(Thread[2])
      end, 
      function(Thread)
          coroutine.yield()
          print("World")
      end
)
