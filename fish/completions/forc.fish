complete -c forc -n "__fish_use_subcommand" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_use_subcommand" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_use_subcommand" -s V -l version -d 'Print version information'
complete -c forc -n "__fish_use_subcommand" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_use_subcommand" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_use_subcommand" -f -a "addr2line" -d 'Show location and context of an opcode address in its source file'
complete -c forc -n "__fish_use_subcommand" -f -a "build" -d 'Compile the current or target project'
complete -c forc -n "__fish_use_subcommand" -f -a "check" -d 'Check the current or target project and all of its dependencies for errors'
complete -c forc -n "__fish_use_subcommand" -f -a "clean" -d 'Removes the default forc compiler output artifact directory, i.e. `<project-name>/out`'
complete -c forc -n "__fish_use_subcommand" -f -a "completions" -d 'Generate tab-completion scripts for your shell'
complete -c forc -n "__fish_use_subcommand" -f -a "new" -d 'Create a new Forc project at `<path>`'
complete -c forc -n "__fish_use_subcommand" -f -a "init" -d 'Create a new Forc project in an existing directory'
complete -c forc -n "__fish_use_subcommand" -f -a "parse-bytecode" -d 'Parse bytecode file into a debug format'
complete -c forc -n "__fish_use_subcommand" -f -a "test" -d 'Run the Sway unit tests for the current project'
complete -c forc -n "__fish_use_subcommand" -f -a "update" -d 'Update dependencies in the Forc dependencies directory'
complete -c forc -n "__fish_use_subcommand" -f -a "plugins" -d 'Find all forc plugins available via `PATH`'
complete -c forc -n "__fish_use_subcommand" -f -a "template" -d 'Create a new Forc project from a git template'
complete -c forc -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s S -l search-dir -d 'Where to search for the project root' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s g -l sourcemap-path -d 'Source file mapping in JSON format' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s c -l context -d 'How many lines of context to show' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s i -l opcode-index -d 'Opcode index' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from build" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l output-directory -d 'The directory in which the sway compiler output artifacts are placed' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l build-target -d 'Build target to use for code generation' -r -f -a "{fuel	,evm	}"
complete -c forc -n "__fish_seen_subcommand_from build" -l build-profile -d 'Name of the build profile to use. If it is not specified, forc will use debug build profile' -r
complete -c forc -n "__fish_seen_subcommand_from build" -s o -d 'If set, outputs a binary file representing the script bytes' -r
complete -c forc -n "__fish_seen_subcommand_from build" -s g -l debug-outfile -d 'If set, outputs source file mapping in JSON format' -r
complete -c forc -n "__fish_seen_subcommand_from build" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l print-ast -d 'Print the generated Sway AST (Abstract Syntax Tree)'
complete -c forc -n "__fish_seen_subcommand_from build" -l print-dca-graph -d 'Print the computed Sway DCA graph'
complete -c forc -n "__fish_seen_subcommand_from build" -l print-finalized-asm -d 'Print the finalized ASM'
complete -c forc -n "__fish_seen_subcommand_from build" -l print-intermediate-asm -d 'Print the generated ASM'
complete -c forc -n "__fish_seen_subcommand_from build" -l print-ir -d 'Print the generated Sway IR (Intermediate Representation)'
complete -c forc -n "__fish_seen_subcommand_from build" -l offline -d 'Offline mode, prevents Forc from using the network when managing dependencies. Meaning it will only try to use previously downloaded dependencies'
complete -c forc -n "__fish_seen_subcommand_from build" -s t -l terse -d 'Terse mode. Limited warning and error output'
complete -c forc -n "__fish_seen_subcommand_from build" -l minify-json-abi -d 'By default the JSON for ABIs is formatted for human readability. By using this option JSON output will be "minified", i.e. all on one line without whitespace'
complete -c forc -n "__fish_seen_subcommand_from build" -l minify-json-storage-slots -d 'By default the JSON for initial storage slots is formatted for human readability. By using this option JSON output will be "minified", i.e. all on one line without whitespace'
complete -c forc -n "__fish_seen_subcommand_from build" -l locked -d 'Requires that the Forc.lock file is up-to-date. If the lock file is missing, or it needs to be updated, Forc will exit with an error'
complete -c forc -n "__fish_seen_subcommand_from build" -l release -d 'Use release build plan. If a custom release plan is not specified, it is implicitly added to the manifest file'
complete -c forc -n "__fish_seen_subcommand_from build" -l time-phases -d 'Output the time elapsed over each part of the compilation process'
complete -c forc -n "__fish_seen_subcommand_from build" -l tests -d 'Also build all tests within the project'
complete -c forc -n "__fish_seen_subcommand_from build" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from build" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from build" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from check" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from check" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from check" -l offline -d 'Offline mode, prevents Forc from using the network when managing dependencies. Meaning it will only try to use previously downloaded dependencies'
complete -c forc -n "__fish_seen_subcommand_from check" -l locked -d 'Requires that the Forc.lock file is up-to-date. If the lock file is missing, or it needs to be updated, Forc will exit with an error'
complete -c forc -n "__fish_seen_subcommand_from check" -s t -l terse -d 'Terse mode. Limited warning and error output'
complete -c forc -n "__fish_seen_subcommand_from check" -l disable-tests -d 'Disable checking unit tests'
complete -c forc -n "__fish_seen_subcommand_from check" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from check" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from check" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from clean" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from clean" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from clean" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from clean" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from clean" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from completions" -s S -l shell -d 'Specify shell to enable tab-completion for' -r
complete -c forc -n "__fish_seen_subcommand_from completions" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from completions" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from completions" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from completions" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from new" -l name -d 'Set the package name. Defaults to the directory name' -r
complete -c forc -n "__fish_seen_subcommand_from new" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from new" -l contract -d 'The default program type. Excluding all flags or adding this flag creates a basic contract program'
complete -c forc -n "__fish_seen_subcommand_from new" -l script -d 'Adding this flag creates an empty script program'
complete -c forc -n "__fish_seen_subcommand_from new" -l predicate -d 'Adding this flag creates an empty predicate program'
complete -c forc -n "__fish_seen_subcommand_from new" -l library -d 'Adding this flag creates an empty library program'
complete -c forc -n "__fish_seen_subcommand_from new" -l workspace -d 'Adding this flag creates an empty workspace'
complete -c forc -n "__fish_seen_subcommand_from new" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from new" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from new" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from init" -l path -d 'The directory in which the forc project will be initialized' -r
complete -c forc -n "__fish_seen_subcommand_from init" -l name -d 'Set the package name. Defaults to the directory name' -r
complete -c forc -n "__fish_seen_subcommand_from init" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from init" -l contract -d 'The default program type, excluding all flags or adding this flag creates a basic contract program'
complete -c forc -n "__fish_seen_subcommand_from init" -l script -d 'Create a package with a script target (src/main.sw)'
complete -c forc -n "__fish_seen_subcommand_from init" -l predicate -d 'Create a package with a predicate target (src/predicate.rs)'
complete -c forc -n "__fish_seen_subcommand_from init" -l library -d 'Create a package with a library target (src/lib.sw)'
complete -c forc -n "__fish_seen_subcommand_from init" -l workspace -d 'Adding this flag creates an empty workspace'
complete -c forc -n "__fish_seen_subcommand_from init" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from init" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from init" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from test" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l output-directory -d 'The directory in which the sway compiler output artifacts are placed' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l build-target -d 'Build target to use for code generation' -r -f -a "{fuel	,evm	}"
complete -c forc -n "__fish_seen_subcommand_from test" -l build-profile -d 'Name of the build profile to use. If it is not specified, forc will use debug build profile' -r
complete -c forc -n "__fish_seen_subcommand_from test" -s o -d 'If set, outputs a binary file representing the script bytes' -r
complete -c forc -n "__fish_seen_subcommand_from test" -s g -l debug-outfile -d 'If set, outputs source file mapping in JSON format' -r
complete -c forc -n "__fish_seen_subcommand_from test" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l print-ast -d 'Print the generated Sway AST (Abstract Syntax Tree)'
complete -c forc -n "__fish_seen_subcommand_from test" -l print-dca-graph -d 'Print the computed Sway DCA graph'
complete -c forc -n "__fish_seen_subcommand_from test" -l print-finalized-asm -d 'Print the finalized ASM'
complete -c forc -n "__fish_seen_subcommand_from test" -l print-intermediate-asm -d 'Print the generated ASM'
complete -c forc -n "__fish_seen_subcommand_from test" -l print-ir -d 'Print the generated Sway IR (Intermediate Representation)'
complete -c forc -n "__fish_seen_subcommand_from test" -l offline -d 'Offline mode, prevents Forc from using the network when managing dependencies. Meaning it will only try to use previously downloaded dependencies'
complete -c forc -n "__fish_seen_subcommand_from test" -s t -l terse -d 'Terse mode. Limited warning and error output'
complete -c forc -n "__fish_seen_subcommand_from test" -l minify-json-abi -d 'By default the JSON for ABIs is formatted for human readability. By using this option JSON output will be "minified", i.e. all on one line without whitespace'
complete -c forc -n "__fish_seen_subcommand_from test" -l minify-json-storage-slots -d 'By default the JSON for initial storage slots is formatted for human readability. By using this option JSON output will be "minified", i.e. all on one line without whitespace'
complete -c forc -n "__fish_seen_subcommand_from test" -l locked -d 'Requires that the Forc.lock file is up-to-date. If the lock file is missing, or it needs to be updated, Forc will exit with an error'
complete -c forc -n "__fish_seen_subcommand_from test" -l release -d 'Use release build plan. If a custom release plan is not specified, it is implicitly added to the manifest file'
complete -c forc -n "__fish_seen_subcommand_from test" -l time-phases -d 'Output the time elapsed over each part of the compilation process'
complete -c forc -n "__fish_seen_subcommand_from test" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from test" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from test" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from update" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from update" -s d -d 'Dependency to be updated. If not set, all dependencies will be updated' -r
complete -c forc -n "__fish_seen_subcommand_from update" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from update" -s c -l check -d 'Checks if the dependencies have newer versions. Won\'t actually perform the update, will output which ones are up-to-date and outdated'
complete -c forc -n "__fish_seen_subcommand_from update" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from update" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from update" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from plugins" -s p -l paths -d 'Prints the absolute path to each discovered plugin'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s d -l describe -d 'Prints the long description associated with each listed plugin'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from template" -s u -l url -d 'The template url, should be a git repo' -r
complete -c forc -n "__fish_seen_subcommand_from template" -s t -l template-name -d 'The name of the template that needs to be fetched and used from git repo provided' -r
complete -c forc -n "__fish_seen_subcommand_from template" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from template" -s h -l help -d 'Print help information'
complete -c forc -n "__fish_seen_subcommand_from template" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from template" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from help" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from help" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from help" -s s -l silent -d 'Silence all output'
