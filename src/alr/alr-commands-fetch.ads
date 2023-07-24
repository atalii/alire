with AAA.Strings;

package Alr.Commands.Fetch is

   type Command is new Commands.Command with private;

   overriding
   function Name (Cmd : Command) return CLIC.Subcommand.Identifier
   is ("fetch");

   overriding
   procedure Execute (Cmd  : in out Command;
                      Args :        AAA.Strings.Vector);

   overriding
   function Short_Description (Cmd : Command) return String
   is ("Fetch dependencies for a crate without compiling");

   overriding
   function Long_Description (Cmd : Command)
                             return AAA.Strings.Vector
   is (AAA.Strings.Empty_Vector
      .Append ("TODO"));

   overriding
   function Usage_Custom_Parameters (Cmd : Command) return String
   is ("");
private
   type Command is new Commands.Command with record
      null;
   end record;
end Alr.Commands.Fetch;
