use crate::*;
mod kill_non_terminating;
use kill_non_terminating::kill_non_terminating;
mod add_primitives;
use add_primitives::*;
mod encoder;
use encoder::*;
mod add_pipelines;
use add_pipelines::*;
use encoder::bundle::*;
mod fuzzy_condition;
pub use fuzzy_condition::*;

pub fn available_api_calls(resources: &ProgramResources, terminate: bool) -> Vec<APICall> {
    let mut available_api_calls: Vec<APICall> = Vec::new();
    let mut rng = rand::thread_rng();
    available_api_calls.extend([CreateAdapter(), CreateArray(), PrintWGSLLanguageFeatures(), PrintPreferredCanvasFormat()]);

    for adapter in &resources.adapters {
        available_api_calls.extend([CreateDevice(adapter.clone()), PrintAdapterInfo(adapter.clone())]);

        for device in &adapter.devices {
            if !device.destroyed || fuzzy(&mut rng) {
                available_api_calls.extend([CreateRandomBuffer(device.clone()), CreateRandomTexture(device.clone()), PrintDeviceInfo(device.clone()), WaitSubmittedWork(device.clone()), 
                            /*AddUncapturedErrorListener(device.clone()),*/ CreateShaderModuleCompute(device.clone()), CreateShaderModuleRender(device.clone()),
                            CreateCommandEncoder(device.clone()), CreateSampler(device.clone()), CreateComputeBindGroupLayout(device.clone())]);

                // limit how many bundles each device can make so it doesnt get out of hand
                if device.render_bundle_encoders.len() < 3 || fuzzy(&mut rng) {
                    available_api_calls.extend([CreateRenderBundleEncoder(device.clone())])
                }
                    
                if !device.error_scope_active || fuzzy(&mut rng) {
                    available_api_calls.extend([PushRandomErrorScope(device.clone())])
                } else if device.error_scope_active || fuzzy(&mut rng){
                    available_api_calls.extend([PopErrorScope(device.clone())])
                }

                for bind_group_layout in &device.bind_group_layouts {
                    available_api_calls.extend([CreateComputePipelineLayout(device.clone(), bind_group_layout.clone())])
                }

                add_manipulate_buffers(&mut available_api_calls, &mut rng, resources, device);

                add_manipulate_textures(&mut available_api_calls, &mut rng, resources, device);

                add_create_pipelines(&mut available_api_calls, &mut rng, device);

                add_manipulate_bundles(&mut available_api_calls, &mut rng, device);

                let all_command_encoders_submitted = add_manipulate_command_encoders(&mut available_api_calls, &mut rng, device);

                if !device.error_scope_active && all_command_encoders_submitted || fuzzy(&mut rng) {
                    available_api_calls.extend([DestroyDevice(device.clone())]);
                }
            }
        }
    }

    if terminate {
        kill_non_terminating(&mut available_api_calls)
    }

    available_api_calls
}