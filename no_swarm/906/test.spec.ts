export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const array0 = new Float32Array([0.75, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, -1.0, -0.5, -1.0, -0.5, -0.25, -1.0, 0.0, 1.0, 0.0, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -1.0, -1.0, 1.0, 1.0, -1.0, -0.5, 1.0, -0.75, -0.25, 0.75, -0.25, 0.25, -1.0, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 1.0, -0.75, -1.0, -0.5, -1.0, 0.75, 0.5, 1.0, 0.75, 0.0, -0.75, -0.25, 0.25, 0.0, -0.75, -1.0, 1.0, -1.0, 0.0, -0.75, 0.5, 0.25, 1.0, -0.5, 1.0, 0.75, 0.0, 0.75, 0.75, -0.5, -0.5, 0.25, -0.25, -1.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.0, -0.75, 0.25, -0.5, 0.75, 0.5, -0.5, -1.0, 0.75, 0.75, -0.75, 0.75, -1.0, ]);
    const array1 = new Float32Array([-0.25, -0.25, 0.0, -0.75, -0.75, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, -0.5, -0.5, -0.75, -0.5, 0.5, -0.25, -1.0, -0.5, 1.0, 0.75, -0.75, 0.25, 0.25, -0.25, 0.75, -1.0, 0.75, 0.25, -1.0, 0.25, 0.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.0, 0.75, 1.0, 0.5, 1.0, -0.75, 0.25, 0.0, -0.25, 0.0, -0.75, 1.0, -0.25, -1.0, -0.25, 1.0, 1.0, -1.0, -0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.25, 1.0, 0.25, -0.25, -0.75, -0.75, -1.0, 0.5, 0.5, 1.0, 0.0, 0.5, 1.0, -0.5, 0.0, -1.0, 0.5, 0.0, -1.0, -0.25, 1.0, 0.5, -0.25, 1.0, 0.5, 0.75, -0.5, -0.75, 0.0, 1.0, -1.0, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.5, 0.25, -0.75, -0.75, -1.0, -0.25, -0.5, 0.75, 1.0, -0.25, 0.0, 0.5, -0.75, -0.5, -0.75, 0.0, 0.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.75, 0.75, 1.0, 0.75, -0.5, 0.5, -0.25, 0.25, -0.5, -0.25, 0.25, -0.25, 0.25, -0.5, 0.75, 0.25, 0.75, -0.75, -1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.25, -0.75, 0.75, 0.5, -0.25, 1.0, 1.0, 0.25, 1.0, 0.5, -0.5, 0.5, 0.75, 0.25, 0.5, 0.75, 0.75, 0.0, 0.75, 1.0, 0.25, 1.0, 0.5, 0.5, 0.5, -1.0, 0.75, -1.0, -0.75, 1.0, 1.0, -0.25, 0.0, 0.75, 0.0, 0.25, -0.5, -0.75, -0.75, 0.5, -1.0, 0.25, 0.5, 1.0, -0.5, -0.5, -0.5, -0.75, ]);
    
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([-1.0, 0.25, -0.25, -0.25, -0.25, 0.25, -0.75, 0.25, 0.5, -0.75, -0.5, 0.25, -0.25, -0.25, 0.25, -0.75, -0.75, -0.5, -0.75, 1.0, 0.75, -1.0, -0.25, -0.75, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 1.0, -0.75, 0.75, 0.0, 0.75, -0.5, -0.75, -0.5, -0.5, 1.0, 0.5, 0.75, -0.75, 1.0, -0.5, 0.5, -0.5, -0.75, 0.25, 0.75, 0.5, 1.0, -0.25, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 0.5, 0.0, -0.75, 1.0, -0.5, 0.5, -0.5, 1.0, -0.25, 1.0, 0.5, 0.0, -0.75, -0.5, 0.25, -0.25, -0.75, -1.0, 0.25, 1.0, 0.25, 0.0, 1.0, -1.0, 0.0, 0.25, 1.0, 1.0, 0.25, 1.0, 0.5, -1.0, ]);
    
    
    const array4 = new Float32Array([-0.25, 0.25, 0.25, 0.0, -1.0, -0.5, -1.0, 0.25, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, 0.25, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, 0.25, 0.0, 0.25, 0.75, 0.25, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, 1.0, -0.25, 0.5, -0.5, -0.5, -1.0, 0.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.5, 0.75, -0.5, -0.25, -0.5, -0.5, 0.0, -0.5, 0.5, 0.5, -0.25, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, -0.25, 0.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.25, -1.0, 0.75, -0.5, -0.25, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, -1.0, 0.75, 1.0, 0.25, 0.75, -1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 0.0, 0.25, -0.25, -0.75, 1.0, ]);
    
    
    const array5 = new Float32Array([1.0, 0.0, -0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.75, -0.25, 0.75, -0.25, -0.25, -0.5, -0.75, 0.25, 0.0, 0.25, 0.0, -1.0, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, 1.0, 0.5, -0.5, -1.0, 0.75, -0.25, -0.5, 0.0, 1.0, 0.25, 0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, 0.75, 0.25, -1.0, -0.25, -0.25, -0.5, -1.0, 1.0, -0.75, 0.0, 0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 1.0, 0.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, 0.25, -0.75, -0.5, -0.5, -0.5, 1.0, -0.5, 0.25, 1.0, -0.5, 0.75, 0.25, -0.75, -0.5, 1.0, -1.0, -1.0, -0.5, ]);
    
    const array6 = new Float32Array([-0.25, -0.25, -1.0, 0.25, 0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 0.25, -1.0, 1.0, 0.25, 0.5, 0.25, -0.5, 0.5, 1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 1.0, -0.25, 0.25, -1.0, -1.0, -0.75, -0.5, -0.5, 0.75, -0.5, 0.25, 0.75, -1.0, -0.75, 0.25, -0.5, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, 1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, 0.0, 0.75, 1.0, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 0.25, -0.5, 0.25, -0.75, 1.0, -1.0, -0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, -0.25, -1.0, 0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 0.25, 0.5, -1.0, -1.0, 0.75, -0.75, 0.25, 0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array7 = new Float32Array([-0.5, -0.5, 0.75, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, 0.75, 0.75, -1.0, -0.75, 0.75, 0.75, -0.5, 0.75, 0.0, 0.5, 0.5, 0.5, -1.0, 1.0, -0.75, 0.25, -1.0, -0.5, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -0.25, 0.5, 0.75, 0.75, 0.0, -1.0, 0.25, 1.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.0, -1.0, -0.5, -0.5, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -1.0, 0.25, 0.5, -0.75, 0.5, 0.0, -1.0, -0.5, 0.25, -0.75, -0.75, -0.25, 0.0, -0.5, 0.75, 0.25, 1.0, -0.75, 0.75, 0.25, 0.75, 0.75, 1.0, -0.75, -0.25, 0.0, -1.0, -0.75, -0.75, 0.5, 1.0, 0.75, -1.0, -0.75, 1.0, -1.0, 0.75, -0.75, -0.5, 0.5, 0.25, 0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array8 = new Float32Array([-0.75, -0.5, 0.75, 0.0, -0.75, 1.0, 0.75, 0.75, 1.0, 0.75, -1.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.75, 1.0, -0.75, 0.5, 0.5, -1.0, -0.25, 1.0, -0.5, 0.0, 0.5, -0.75, 0.75, 0.0, 1.0, 0.25, -1.0, 1.0, 0.5, -0.75, 0.25, 0.25, -0.25, 0.5, 0.25, -0.25, -0.25, 1.0, -0.75, -0.75, 0.25, 0.25, -1.0, -0.5, -0.25, -0.5, -1.0, 1.0, -0.75, -0.5, 0.25, -0.5, 0.5, -0.5, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, 1.0, -0.75, -0.75, -0.25, -0.25, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, -0.25, 0.0, -0.5, -0.25, 1.0, -0.75, -0.25, 1.0, 0.5, 0.5, -0.25, -0.75, -1.0, 0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 0.5, -1.0, -1.0, -0.25, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.destroy();
    
    
    const array9 = new Float32Array([0.25, -0.25, 1.0, 1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 0.5, 0.25, 1.0, -0.25, 0.25, 0.75, -1.0, -0.25, 0.0, -1.0, -0.75, -0.25, -0.25, 0.75, 0.0, 0.5, -0.25, 0.75, 0.0, -0.75, -0.75, 0.75, 0.25, 1.0, 0.75, 0.5, 0.25, -0.25, 0.25, 0.5, 0.25, 0.5, 0.0, -0.75, 0.0, -1.0, -0.75, 0.25, -0.75, 0.75, -0.75, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, -1.0, 0.5, 0.0, -0.5, -0.25, -0.5, 0.25, 0.0, -0.75, -1.0, 0.25, -1.0, 0.25, -0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 1.0, 0.0, -1.0, 0.25, -1.0, -1.0, 1.0, -0.5, 0.0, 0.5, 0.0, 0.25, -0.5, 0.0, -0.25, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, -0.5, -0.25, 1.0, 0.0, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array10 = new Float32Array([-0.75, -0.25, -0.5, 0.5, -0.5, 1.0, 0.25, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, 0.5, 0.0, 0.25, -0.75, -0.75, -1.0, 1.0, -0.5, 0.75, 1.0, -0.75, 0.5, -0.5, -0.75, -1.0, -0.75, 0.75, -0.25, -1.0, -0.75, 1.0, -0.25, 0.5, 0.5, 0.5, 0.25, 0.75, -1.0, -0.75, -0.25, 0.75, 1.0, 0.5, 0.25, 0.25, 0.75, 0.5, -1.0, 0.0, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, -0.75, 1.0, 0.25, 0.25, 0.25, 0.25, 0.0, -1.0, 0.25, -0.5, 1.0, -0.5, 1.0, 0.0, 0.75, -0.5, 0.75, 0.0, -0.75, 1.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.5, -0.75, -0.75, -0.75, 1.0, -1.0, 0.5, 1.0, -0.5, -1.0, 1.0, 1.0, ]);
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([-1.0, -0.75, -1.0, -1.0, 1.0, 0.75, 0.25, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, -0.25, 0.0, 1.0, 1.0, -0.75, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, -1.0, -0.75, -0.5, 0.75, -0.25, -0.75, 1.0, -0.5, -0.5, -0.25, -0.5, 0.25, -0.25, 0.5, 0.0, -1.0, -0.25, 0.25, 0.25, 0.0, -0.75, 0.25, -0.75, 0.0, -0.75, 0.5, 1.0, -0.75, 0.25, 0.75, -0.5, -0.75, -0.5, 0.0, 0.5, 0.25, -0.75, -0.25, -1.0, 0.75, 0.5, -1.0, 0.75, 0.25, 0.0, 0.75, 0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -0.25, 0.5, -0.25, -0.5, -1.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.75, 0.0, -1.0, -0.25, -0.75, 0.5, 0.0, -0.5, 0.25, -1.0, -0.75, 0.5, 0.75, 0.0, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.pushErrorScope("out-of-memory");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_buffer400 = command_encoder400.finish();
    device50.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    buffer400.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    device50.destroy();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    render_bundle_encoder401.popDebugGroup();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture400.destroy();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder400.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer401.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module404,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query400.destroy()
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module401,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const array12 = new Float32Array([-1.0, 1.0, -1.0, 1.0, -0.75, 0.75, 1.0, 1.0, -0.75, -0.75, 0.75, 1.0, 0.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.5, -0.5, 0.5, -0.25, 0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.5, 0.75, 0.75, -0.5, -0.75, -0.25, 0.25, 0.75, -1.0, -1.0, 1.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.0, 0.75, -0.25, -0.25, -0.25, -0.75, 1.0, 0.75, -0.75, 0.75, 0.5, 0.5, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -1.0, -1.0, -1.0, -0.5, -0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 0.75, 0.75, 0.5, -0.25, -0.75, -0.5, -0.75, -0.5, 0.5, 0.5, -1.0, -0.25, -0.5, -0.75, -0.25, 1.0, 0.5, 0.75, -1.0, 0.75, -0.75, 0.75, -0.75, -0.5, -1.0, -0.5, 0.75, 1.0, ]);
    query401.destroy()
    query401.destroy()
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    const command_buffer402 = command_encoder402.finish();
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module404,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module404,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("internal");
    
    
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query403.destroy()
    
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query402.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    query401.destroy()
    render_bundle_encoder402.setPipeline(render_pipeline401);
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array13 = new Float32Array([-0.5, -0.25, 0.25, -1.0, 0.25, 1.0, 0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, 0.25, 0.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 0.75, 0.0, -0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 0.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.75, 1.0, 0.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.25, -1.0, 0.5, 0.5, -0.75, 0.5, -1.0, 0.75, 0.25, 0.5, -0.75, -0.75, 1.0, -1.0, 0.25, -1.0, -0.5, 0.75, -1.0, -0.5, -1.0, 0.0, -1.0, 0.75, 0.25, 1.0, 0.0, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, 0.75, -0.25, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    query403.destroy()
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer402.destroy()
    query401.destroy()
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout406,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.setPipeline(compute_pipeline403);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group402);
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module401,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module401,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.popDebugGroup()
    buffer404.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder404.pushDebugGroup("mygroupmarker")
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout401]
    });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4010, 0);
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array13, 0, array13.length);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module401,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module401,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device40.queue.writeBuffer(buffer4010, 0, array0, 0, array0.length);
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    command_encoder404.insertDebugMarker("mymarker");
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer4010, 0, array11, 0, array11.length);
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer407.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder4040.insertDebugMarker("marker")
    buffer403.destroy()
    render_bundle_encoder402.popDebugGroup();
    compute_pass_encoder4040.setPipeline(compute_pipeline4024);
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer402, ]);
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module404,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module404,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout409,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout402]
    });
    device40.queue.writeBuffer(buffer4010, 0, array8, 0, array8.length);
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4040.insertDebugMarker("marker")
    query401.destroy()
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query402.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    query405.destroy()
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4070 = device40.createComputePipeline({
        label: "compute_pipeline4070",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4071 = device40.createComputePipeline({
        label: "compute_pipeline4071",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4072 = device40.createComputePipeline({
        label: "compute_pipeline4072",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4073 = device40.createComputePipeline({
        label: "compute_pipeline4073",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const command_buffer405 = command_encoder405.finish();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4074 = device40.createComputePipeline({
        label: "compute_pipeline4074",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4075 = device40.createComputePipeline({
        label: "compute_pipeline4075",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer4010, 0, array11, 0, array11.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline4076 = device40.createComputePipeline({
        label: "compute_pipeline4076",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array1, 0, array1.length);
    const compute_pipeline4077 = device40.createComputePipeline({
        label: "compute_pipeline4077",
        layout: pipeline_layout407,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4078 = device40.createComputePipeline({
        label: "compute_pipeline4078",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4079 = device40.createComputePipeline({
        label: "compute_pipeline4079",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4080 = device40.createComputePipeline({
        label: "compute_pipeline4080",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4081 = device40.createComputePipeline({
        label: "compute_pipeline4081",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4082 = device40.createComputePipeline({
        label: "compute_pipeline4082",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4083 = device40.createComputePipeline({
        label: "compute_pipeline4083",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    query403.destroy()
    
    query400.destroy()
    
    const compute_pipeline4084 = device40.createComputePipeline({
        label: "compute_pipeline4084",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer4010, 0, array9, 0, array9.length);
    const compute_pipeline4085 = device40.createComputePipeline({
        label: "compute_pipeline4085",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4086 = device40.createComputePipeline({
        label: "compute_pipeline4086",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    const compute_pipeline4087 = device40.createComputePipeline({
        label: "compute_pipeline4087",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array4, 0, array4.length);
    const compute_pipeline4088 = device40.createComputePipeline({
        label: "compute_pipeline4088",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4089 = device40.createComputePipeline({
        label: "compute_pipeline4089",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline4090 = device40.createComputePipeline({
        label: "compute_pipeline4090",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array7, 0, array7.length);
    
    const compute_pipeline4091 = device40.createComputePipeline({
        label: "compute_pipeline4091",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.end();
    const compute_pipeline4092 = device40.createComputePipeline({
        label: "compute_pipeline4092",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4093 = device40.createComputePipeline({
        label: "compute_pipeline4093",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4094 = device40.createComputePipeline({
        label: "compute_pipeline4094",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4095 = device40.createComputePipeline({
        label: "compute_pipeline4095",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4096 = device40.createComputePipeline({
        label: "compute_pipeline4096",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array8, 0, array8.length);
    const compute_pipeline4097 = device40.createComputePipeline({
        label: "compute_pipeline4097",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline4098 = device40.createComputePipeline({
        label: "compute_pipeline4098",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4099 = device40.createComputePipeline({
        label: "compute_pipeline4099",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40100 = device40.createComputePipeline({
        label: "compute_pipeline40100",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40101 = device40.createComputePipeline({
        label: "compute_pipeline40101",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline40102 = device40.createComputePipeline({
        label: "compute_pipeline40102",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40103 = device40.createComputePipeline({
        label: "compute_pipeline40103",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer400, command_buffer405, ]);
    device40.queue.writeBuffer(buffer4010, 0, array10, 0, array10.length);
    const compute_pipeline40104 = device40.createComputePipeline({
        label: "compute_pipeline40104",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40105 = device40.createComputePipeline({
        label: "compute_pipeline40105",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40106 = device40.createComputePipeline({
        label: "compute_pipeline40106",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer4010, 0, array9, 0, array9.length);
    const compute_pipeline40107 = device40.createComputePipeline({
        label: "compute_pipeline40107",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40108 = device40.createComputePipeline({
        label: "compute_pipeline40108",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40109 = device40.createComputePipeline({
        label: "compute_pipeline40109",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40110 = device40.createComputePipeline({
        label: "compute_pipeline40110",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40111 = device40.createComputePipeline({
        label: "compute_pipeline40111",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40112 = device40.createComputePipeline({
        label: "compute_pipeline40112",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline40113 = device40.createComputePipeline({
        label: "compute_pipeline40113",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query404
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40114 = device40.createComputePipeline({
        label: "compute_pipeline40114",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40115 = device40.createComputePipeline({
        label: "compute_pipeline40115",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline40116 = device40.createComputePipeline({
        label: "compute_pipeline40116",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40117 = device40.createComputePipeline({
        label: "compute_pipeline40117",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setPipeline(render_pipeline405);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40118 = device40.createComputePipeline({
        label: "compute_pipeline40118",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline40119 = device40.createComputePipeline({
        label: "compute_pipeline40119",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline40120 = device40.createComputePipeline({
        label: "compute_pipeline40120",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline40121 = device40.createComputePipeline({
        label: "compute_pipeline40121",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline40122 = device40.createComputePipeline({
        label: "compute_pipeline40122",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder4030.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    
    
    const compute_pipeline40123 = device40.createComputePipeline({
        label: "compute_pipeline40123",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40124 = device40.createComputePipeline({
        label: "compute_pipeline40124",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4019 = device40.createPipelineLayout({ 
        label: "pipeline_layout4019",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline40125 = device40.createComputePipeline({
        label: "compute_pipeline40125",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40126 = device40.createComputePipeline({
        label: "compute_pipeline40126",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array5, 0, array5.length);
    render_pass_encoder4030.setStencilReference(1);
    const compute_pipeline40127 = device40.createComputePipeline({
        label: "compute_pipeline40127",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline40128 = device40.createComputePipeline({
        label: "compute_pipeline40128",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40129 = device40.createComputePipeline({
        label: "compute_pipeline40129",
        layout: pipeline_layout406,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4030.popDebugGroup();
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group404);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline4024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group405);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4016, 0);
    compute_pass_encoder4040.end();
    device40.queue.submit([command_buffer401, ]);
    command_encoder404.popDebugGroup()
    const command_buffer404 = command_encoder404.finish();
    device40.queue.submit([command_buffer404, ]);
}