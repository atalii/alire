package body Alr.Commands.Fetch is
   overriding
   procedure Execute (Cmd  : in out Command;
                      Args :        AAA.Strings.Vector)
   is begin
      Cmd.Root.Sync_Dependencies (False, False);
   end Execute;
end Alr.Commands.Fetch;
