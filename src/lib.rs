use zed_extension_api::{self as zed, LanguageServerId, Result};
use zed_extension_api::settings::LspSettings;

struct Macaulay2Extension;

impl zed::Extension for Macaulay2Extension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let settings = LspSettings::for_worktree("m2-language-server", worktree)
            .ok()
            .and_then(|s| s.binary);

        if let Some(binary) = settings {
            if let Some(path) = binary.path {
                return Ok(zed::Command {
                    command: path,
                    args: binary.arguments.unwrap_or_default(),
                    env: Default::default(),
                });
            }
        }

        let path = worktree.which("M2-language-server").ok_or(
            "M2-language-server not found on PATH. \
            Install Macaulay2; the M2-language-server script ships in M2's bindir \
            alongside the M2 executable. You can also set a custom path via \
            {\"lsp\": {\"m2-language-server\": {\"binary\": {\"path\": \"...\"}}}}\
            in your Zed settings.",
        )?;

        Ok(zed::Command {
            command: path,
            args: vec![],
            env: Default::default(),
        })
    }
}

zed::register_extension!(Macaulay2Extension);
