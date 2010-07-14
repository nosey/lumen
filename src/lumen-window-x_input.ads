
-- Lumen.Window.X_Input -- Receive X windows input events
--
-- Chip Richards, NiEstu, Phoenix AZ, Spring 2010

-- This code is covered by the ISC License:
--
-- Copyright © 2010, NiEstu
--
-- Permission to use, copy, modify, and/or distribute this software for any
-- purpose with or without fee is hereby granted, provided that the above
-- copyright notice and this permission notice appear in all copies.
--
-- The software is provided "as is" and the author disclaims all warranties
-- with regard to this software including all implied warranties of
-- merchantability and fitness. In no event shall the author be liable for any
-- special, direct, indirect, or consequential damages or any damages
-- whatsoever resulting from loss of use, data or profits, whether in an
-- action of contract, negligence or other tortious action, arising out of or
-- in connection with the use or performance of this software.


private package Lumen.Window.X_Input is

   -- Register a new window with the X input event task
   procedure Add_Window (Win : in Handle);

   -- De-register a window with the X input event task
   procedure Drop_Window (Win : in Handle);

   -- Shut down the events task
   procedure Shutdown;

   -- The task that reads events from the X server
   task X_Input_Event_Task is
      entry Startup;
   end X_Input_Event_Task;

end Lumen.Window.X_Input;
