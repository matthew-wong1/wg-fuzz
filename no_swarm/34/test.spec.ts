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
    const array0 = new Float32Array([0.5, -0.5, -0.5, -0.5, -1.0, -0.5, 0.75, -0.5, 0.5, 0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.0, -0.25, 0.0, 0.5, 0.0, -0.5, -0.75, 0.5, 1.0, 0.0, 0.25, -0.25, -1.0, 0.0, 0.5, 0.0, -0.25, 0.5, -1.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.25, -0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, 0.0, 0.25, -0.75, -0.25, 1.0, -0.75, -0.5, -0.25, -0.25, -0.25, 0.0, -0.5, 1.0, 0.25, -0.25, -0.75, 0.25, -0.5, 0.5, 0.25, -0.25, -0.5, 0.5, -0.5, 0.75, 0.25, 0.0, 0.75, -1.0, 1.0, -0.75, 0.5, 1.0, 0.0, 1.0, -0.75, -0.5, 0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.25, -0.25, ]);
    
    const array1 = new Float32Array([1.0, -0.25, -1.0, -0.25, 1.0, 0.0, -0.75, -1.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 0.0, 1.0, 0.0, 0.0, -1.0, -0.25, 0.5, 1.0, -1.0, 1.0, -0.5, -0.25, -1.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.0, 0.0, -0.75, 1.0, -0.25, 0.75, 1.0, 0.0, 1.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.25, 0.5, 1.0, -1.0, 0.25, 0.75, 1.0, 1.0, 1.0, 0.5, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, 0.5, 1.0, -0.5, 1.0, 0.25, 0.25, -1.0, 0.25, 0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 0.0, 0.25, -0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -0.5, 0.75, 0.75, -0.75, 0.75, 1.0, 0.75, -1.0, -0.25, 0.0, -1.0, 0.5, -0.5, ]);
    const array2 = new Float32Array([0.25, 0.5, -0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -0.5, 1.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.0, -0.75, -0.5, -0.25, 0.0, -1.0, 0.25, 0.0, 0.5, -0.75, 0.25, 0.25, 0.25, 1.0, 0.5, 0.5, 0.25, 0.25, 0.5, 0.0, 0.25, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.0, 1.0, 0.5, -0.75, -0.25, 0.75, 0.5, 0.25, 0.75, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, -0.75, 0.25, -0.75, -0.75, 1.0, -0.75, 0.75, 0.0, -1.0, -0.25, -0.75, -0.25, 0.0, 0.0, 0.0, 0.25, 0.0, -0.5, -0.25, 0.25, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, 0.25, 1.0, 1.0, 0.5, -0.5, 0.5, 0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 1.0, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array3 = new Float32Array([-0.5, -0.5, 0.0, 0.25, -0.75, 1.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.5, 0.5, 0.5, 0.5, 0.5, 0.25, 1.0, 0.0, -0.5, -0.75, 0.75, 0.5, -0.5, -0.25, -0.5, -0.25, -0.25, -1.0, -0.25, -0.75, 1.0, 0.75, -0.75, 0.5, 0.0, 1.0, 0.75, 0.75, -0.75, 0.5, -1.0, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, -0.5, 0.0, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 0.75, -0.75, 0.75, -1.0, 0.5, 0.5, 0.75, 0.0, -0.75, 0.5, 0.5, -1.0, 1.0, 0.5, 1.0, 1.0, -0.75, -0.25, 0.0, -0.5, -0.25, -0.5, -1.0, -0.5, 0.75, -0.5, 0.25, -1.0, 0.5, 1.0, 0.5, -0.25, 0.25, -0.75, 0.5, 0.25, -1.0, 0.5, -0.5, ]);
    
    const array4 = new Float32Array([-0.25, -0.5, -0.5, -0.5, 0.25, -0.25, 0.5, -0.25, 0.0, -0.75, 1.0, -0.75, 0.25, -0.5, -1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, 0.5, 0.75, 1.0, 0.25, 0.0, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, 1.0, -0.5, 0.75, -0.25, -0.25, 0.0, -1.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.25, -0.5, 1.0, 0.75, -0.5, 0.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.5, 0.0, -0.25, 0.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.5, -1.0, 0.0, -0.75, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, -0.5, 0.25, 1.0, 1.0, -1.0, -0.75, 0.25, -0.5, 0.5, 0.5, 0.25, 0.75, -0.25, 0.25, 0.25, 1.0, 1.0, 0.0, 1.0, -0.25, 0.0, 0.75, -0.25, -0.75, 0.5, ]);
    
    const array5 = new Float32Array([-0.5, 0.75, 0.75, 0.75, -0.25, -0.5, 0.0, 0.5, 0.5, 0.25, 0.5, 0.0, 1.0, -0.75, -0.25, 0.75, 0.25, -1.0, -0.25, -1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.25, 0.0, 0.5, -0.25, -1.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, -0.25, -0.5, 0.5, -0.25, 1.0, 0.5, 0.25, -0.75, 0.75, -1.0, -0.75, 0.25, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, -1.0, 0.0, 0.25, -1.0, -0.75, -0.25, -0.75, -1.0, 0.0, 0.25, 0.0, -0.25, -0.5, 0.5, 0.5, -0.5, -0.25, 0.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.5, -0.75, -0.25, -0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, -1.0, 0.25, 1.0, -0.75, 0.0, -0.25, 0.0, -1.0, -0.75, -0.25, -0.75, 0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([-0.5, 0.5, 0.0, -0.25, 0.75, 0.5, 0.25, -0.75, 0.0, -0.75, -0.25, -1.0, -0.75, -1.0, 0.5, -0.25, -0.5, -1.0, -0.25, -0.75, 0.25, 0.5, -0.25, 0.0, 0.0, -1.0, -0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.5, 1.0, -0.25, -0.75, -0.25, 0.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.75, 0.5, 1.0, -0.5, -1.0, -0.25, 0.0, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, 1.0, 0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 1.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.5, 0.0, 0.0, 0.5, 1.0, 0.0, -0.5, -0.25, -1.0, -0.5, 0.75, -1.0, 0.75, -0.75, -0.25, 0.75, -0.25, -0.5, -0.5, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.destroy();
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([0.25, -0.5, 0.25, -1.0, 0.75, -0.25, 0.5, -0.5, 0.0, 1.0, 0.25, 0.75, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, -0.5, -0.25, 0.75, 0.75, 0.75, -0.25, 0.5, 0.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.75, 0.75, -0.25, 0.75, 0.0, -0.25, -0.25, -1.0, 0.25, 0.5, 0.75, 0.75, -0.5, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, 0.0, -0.5, -0.25, 0.25, -0.5, -1.0, -0.5, 0.25, 0.5, 0.5, -1.0, 0.75, 0.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.25, -0.75, 0.75, 0.0, -0.75, -0.5, 0.75, -0.25, 0.5, 0.5, -0.5, -1.0, 0.0, 0.5, 1.0, 0.5, -0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, 0.75, ]);
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.destroy();
    
    
    
    
    
    
    const array8 = new Float32Array([0.0, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, 0.5, 0.0, -0.5, -1.0, -0.5, 0.75, -0.25, -1.0, 0.25, 1.0, 0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 0.5, 0.5, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, -0.5, -1.0, -1.0, 0.25, 0.5, 1.0, -0.75, 1.0, -0.25, -0.75, 1.0, 0.25, 1.0, 0.5, -0.25, -0.25, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, -0.75, -1.0, -1.0, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, -1.0, -0.75, -0.75, 0.25, -0.25, -0.5, -0.5, -0.75, 0.25, -1.0, 0.75, -1.0, 1.0, 0.25, 0.5, 0.5, -0.75, 1.0, 0.0, -0.5, -0.5, -0.25, 1.0, 0.5, 0.5, 1.0, -1.0, 0.0, 0.75, 0.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.75, 0.5, 1.0, ]);
    const array9 = new Float32Array([1.0, 0.0, 0.5, -0.5, -1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.5, 0.25, -0.75, 0.25, -0.75, -0.25, 1.0, 0.75, -0.75, -1.0, 0.5, -0.25, 0.75, -1.0, 0.0, 0.75, -0.25, 0.5, 0.25, 0.5, -0.5, 0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.75, 0.25, -1.0, -0.5, -0.5, -0.75, -1.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 1.0, -1.0, 0.5, 1.0, 1.0, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, -0.25, 0.0, -1.0, 0.0, 0.75, -0.5, 0.25, -0.25, -0.5, -0.25, -0.25, 0.0, 0.0, 0.5, -0.75, -1.0, -1.0, -0.75, 0.0, 0.75, -0.5, -0.25, -1.0, 0.75, 0.0, -1.0, 1.0, -1.0, -1.0, -0.5, 0.0, 0.75, 0.25, -0.5, 0.25, 0.5, 0.5, ]);
    
    
    const array10 = new Float32Array([1.0, -0.25, 0.25, 0.75, 0.25, 1.0, 0.0, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, -0.75, 0.0, 0.75, -0.75, -0.75, 1.0, 0.5, 1.0, 0.25, -1.0, 0.25, 0.75, 1.0, 0.75, -0.5, -0.75, -0.75, 0.0, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, -1.0, -0.25, -0.75, 0.25, -0.25, 0.25, 0.75, -0.25, -0.25, -0.25, -0.5, 0.75, -1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, 0.25, 1.0, 0.5, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.75, -0.75, -0.5, 0.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.75, -0.5, 0.75, 0.25, 1.0, 1.0, 1.0, 0.5, 0.5, 0.5, 0.25, 0.0, -0.5, -0.5, 1.0, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_buffer600 = command_encoder600.finish();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.5, -0.75, 0.0, -1.0, 0.5, 0.75, 0.5, 0.5, 1.0, 0.5, 0.5, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, 1.0, 0.0, 0.75, -1.0, 1.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, 1.0, -0.5, 0.75, 0.0, -0.25, -1.0, -1.0, -0.5, 1.0, 1.0, -0.75, -0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, 0.5, -0.75, -0.5, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, -0.75, 0.0, 1.0, 0.75, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, 0.0, -0.5, 1.0, -0.25, 0.25, -0.25, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.25, 0.5, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder600.popDebugGroup();
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.submit([command_buffer600, ]);
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device30.pushErrorScope("out-of-memory");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer300.destroy()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    buffer301.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.queue.writeTexture({ texture: texture601 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([0.75, 1.0, -0.75, 0.5, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, -1.0, 0.0, 1.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.25, 0.25, -0.5, -1.0, 0.25, 1.0, 0.25, 1.0, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, -0.75, 1.0, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, -1.0, -0.75, -0.25, 0.0, 0.75, -1.0, -0.25, 1.0, -1.0, 0.0, -0.75, 0.75, 0.0, 0.5, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, -0.5, -0.5, 0.0, 0.75, 0.75, 0.25, 0.0, 0.5, 0.75, -1.0, -0.5, 0.25, -1.0, -1.0, -0.5, -0.5, 0.25, 0.5, 0.25, -1.0, -1.0, 0.75, -1.0, -0.75, -1.0, 0.75, -0.75, 0.5, 0.0, 0.25, -0.75, -1.0, 0.5, -1.0, -0.75, 0.25, 1.0, 0.25, ]);
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_bundle_encoder600.popDebugGroup();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query300.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder601.insertDebugMarker("mymarker");
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("validation");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.queue.writeTexture({ texture: texture601 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    command_encoder601.insertDebugMarker("mymarker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query601.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    texture602.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    query701.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device70.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3010.executeBundles([])
    query301.destroy()
    
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    query601.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    query400.destroy()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    buffer600.destroy()
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query603
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6020.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_bundle_encoder601.setPipeline(render_pipeline601);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder6020.setPipeline(render_pipeline600);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query603.destroy()
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device80.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder6020.insertDebugMarker("marker");
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    query300.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    texture301.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    texture601.destroy();
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder602.setPipeline(render_pipeline600);
    
    
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    texture300.destroy();
    query601.destroy()
    
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    buffer604.destroy()
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder6020.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    buffer601.destroy()
    buffer602.destroy()
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout608,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout600]
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
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
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group602);
    
    
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer605.destroy()
    render_bundle_encoder602.popDebugGroup();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder602.insertDebugMarker("marker");
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder6020.pushDebugGroup("group_marker");
    
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer609.destroy()
    buffer608.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    query301.destroy()
    query301.destroy()
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const array13 = new Float32Array([0.75, 0.75, -1.0, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, 0.75, -0.5, 0.5, 0.75, 0.25, 0.5, -0.25, -0.5, -0.25, 0.5, 0.0, 1.0, 0.75, -0.25, -0.5, 0.5, -1.0, 0.5, 0.0, -0.5, -0.75, -0.25, 0.75, -0.5, -0.75, 0.0, 0.0, -0.75, -0.25, 1.0, -0.25, -0.75, 0.5, -0.75, -0.5, 0.0, -0.25, 1.0, -1.0, -1.0, -0.5, -0.25, 1.0, 1.0, 0.25, 0.5, 0.0, -1.0, 0.25, 0.0, -0.25, 0.0, 0.75, 0.0, -0.25, -0.25, -1.0, -0.5, -0.25, 0.75, 1.0, 0.0, -0.75, -0.75, -0.5, -0.75, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, 0.5, 0.25, 0.5, -1.0, 0.5, -0.5, 1.0, 0.75, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, 1.0, 1.0, 0.75, -0.5, 0.0, ]);
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    query600.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder3020.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    render_pass_encoder3010.executeBundles([])
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder400.popDebugGroup()
    
    device60.pushErrorScope("validation");
    query303.destroy()
    query300.destroy()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
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
    query602.destroy()
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout605,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.beginOcclusionQuery(0)
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    query303.destroy()
    query400.destroy()
    
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout606,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6020.insertDebugMarker("marker");
    
    
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query601.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3010.setStencilReference(1);
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.insertDebugMarker("marker");
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    query600.destroy()
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder601.setVertexBuffer(0, buffer601);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.popDebugGroup();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    query603.destroy()
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group603);
    render_pass_encoder3010.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder3020.setPipeline(render_pipeline300);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder6020.setVertexBuffer(0, buffer601);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3040.setPipeline(render_pipeline300);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group303);
    render_pass_encoder3040.setVertexBuffer(0, buffer300);
    render_pass_encoder3010.endOcclusionQuery()
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group304);
    render_pass_encoder6020.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder6020.drawIndexed(3);
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder3020.setVertexBuffer(0, buffer300);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder3010.end();
    render_pass_encoder6020.end();
    const command_buffer602 = command_encoder602.finish();
    const command_buffer400 = command_encoder400.finish();
    command_encoder301.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder6010.end();
    render_pass_encoder3040.draw(3);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    render_pass_encoder3040.end();
    const command_buffer304 = command_encoder304.finish();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder3020.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3030.setVertexBuffer(0, buffer300);
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3030.draw(3);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3030.end();
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const command_buffer303 = command_encoder303.finish();
    const command_buffer601 = command_encoder601.finish();
    device30.queue.submit([command_buffer303, ]);
}