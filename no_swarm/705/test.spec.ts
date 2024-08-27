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
    const array0 = new Float32Array([-0.75, -0.75, -1.0, -0.5, 0.75, 0.0, -1.0, -1.0, -1.0, -0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -0.75, 1.0, 1.0, 0.25, 0.0, 0.0, 1.0, 0.0, -0.75, 0.25, 1.0, -0.75, 1.0, -0.25, -0.75, 0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -0.25, 0.0, 0.75, -1.0, -0.25, 0.0, 0.5, -0.75, -0.25, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, 0.0, 1.0, 0.75, 0.25, 0.5, 1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -0.75, 0.5, 1.0, 0.0, -0.75, -1.0, 0.25, -1.0, 0.75, 1.0, 0.75, 0.0, -1.0, 0.5, 0.0, -0.25, -0.25, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 1.0, 0.75, -0.5, ]);
    const array1 = new Float32Array([0.25, 0.75, 0.0, -0.75, -0.75, -0.75, 0.75, 1.0, 0.0, 0.75, 1.0, 0.25, -1.0, -0.25, 0.0, -0.75, 0.0, -0.25, 0.75, 0.75, 0.25, -1.0, -1.0, -0.75, 0.5, -0.5, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, -0.75, -0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -1.0, 0.0, 1.0, 1.0, -0.75, -0.5, 0.0, 1.0, -1.0, 0.25, -0.25, -0.25, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.75, 0.5, 0.25, -0.25, 0.0, 1.0, -0.75, 0.5, 0.25, 0.5, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, -1.0, -1.0, -0.25, 0.0, 1.0, 0.25, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.75, -0.25, 0.25, 0.25, -0.25, -0.25, -0.75, 0.25, 0.25, 0.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    const array2 = new Float32Array([0.0, -0.5, -0.5, -1.0, -1.0, 0.5, 0.0, 0.25, 0.75, 1.0, -1.0, 0.25, 0.5, -1.0, 1.0, -0.75, -0.25, -0.5, -0.25, -1.0, 0.75, 1.0, 0.75, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, -0.5, -0.5, 0.5, -0.5, -0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.0, 0.5, -0.25, -0.25, 1.0, 0.25, 0.75, 0.75, 1.0, 0.0, 0.5, -0.25, 1.0, 0.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 0.5, 1.0, -1.0, -0.75, 0.75, -0.25, -0.5, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, -1.0, 1.0, 0.5, 0.25, -1.0, -0.5, 1.0, -1.0, -0.25, -0.75, 1.0, -0.5, -0.5, -0.5, 0.75, -0.75, -0.25, 0.5, -1.0, 0.5, -1.0, 0.75, -0.5, 1.0, ]);
    
    const array3 = new Float32Array([-0.25, -0.75, 0.0, -0.75, 0.0, 0.25, -0.25, 0.25, -0.75, 0.75, 0.5, -0.75, 0.0, 0.5, 0.75, -1.0, -0.5, 1.0, 0.0, 0.0, -1.0, -0.25, 0.75, -0.5, 1.0, -0.75, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, -0.75, 1.0, -0.5, -0.5, 1.0, -1.0, -1.0, -0.75, -0.5, -0.75, -1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.25, 0.75, 0.5, -0.25, -1.0, -0.25, -0.5, 0.75, -1.0, -1.0, -1.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.75, 0.0, 0.0, 0.0, 0.25, 0.5, -0.75, -0.75, -0.5, -0.5, 0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 0.0, -0.25, 0.25, -0.25, 0.75, -1.0, -0.25, -0.5, 0.75, -0.75, 1.0, -0.25, 0.5, 0.0, -1.0, -0.25, -0.75, -0.5, 0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-0.25, -0.25, 0.0, -1.0, -1.0, -0.25, -0.75, 0.25, 0.5, -0.5, 0.25, 0.5, 0.25, -0.5, 0.75, -0.5, 0.75, -1.0, 0.0, -1.0, 1.0, 0.5, -0.75, -0.75, 0.0, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, 1.0, -0.25, -1.0, 0.25, -0.75, -0.75, 0.0, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, 0.75, 0.5, 1.0, 0.75, 0.5, 0.5, 0.25, 0.0, -1.0, 1.0, -0.75, -0.25, -0.25, 0.25, -0.25, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, -0.75, -1.0, 0.5, -0.5, -0.5, 1.0, 0.75, -0.25, -1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, 0.0, 0.25, -1.0, -0.75, 0.75, 0.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 0.0, -0.25, 0.0, ]);
    
    
    const array5 = new Float32Array([0.75, 0.0, -0.5, 0.75, 0.75, 0.0, -0.25, -0.25, 0.0, 0.75, 1.0, -0.75, -0.5, 0.0, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.5, 0.0, 0.25, -1.0, 0.75, -0.75, 1.0, 1.0, 0.75, 0.25, 0.75, -0.25, 0.25, 1.0, -1.0, -0.25, 0.25, 0.25, 0.0, -0.75, 1.0, 0.5, 0.5, 0.75, 0.25, -1.0, 0.25, 1.0, -1.0, -0.5, -0.25, 0.25, -0.25, -1.0, -0.5, 0.0, -0.25, -0.5, 0.5, -1.0, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.0, -0.25, 0.0, 1.0, -0.25, 1.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.75, -0.5, -0.75, -1.0, 0.25, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, -0.5, 0.5, 1.0, -1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer200 = command_encoder200.finish();
    const array6 = new Float32Array([1.0, 0.25, -0.75, 0.0, 0.25, -0.25, -0.5, -0.75, 0.25, 0.5, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 1.0, 0.25, -0.75, -1.0, 1.0, 0.25, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, 0.0, 1.0, 0.5, -0.5, -0.75, -1.0, 0.5, -0.5, -0.25, -0.5, -1.0, -0.75, -0.5, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, 0.25, -0.25, 1.0, 1.0, 0.0, 0.5, -0.25, -0.5, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 0.75, -0.75, 0.5, -0.75, -0.5, -0.5, -0.5, 0.75, 1.0, -0.25, -0.5, -0.25, -0.75, 0.0, -1.0, -0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 0.75, 0.5, -1.0, -0.5, -0.75, -0.25, 1.0, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array7 = new Float32Array([-0.5, -0.5, 0.75, 0.0, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.25, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 0.5, 0.75, -0.5, 0.0, -0.75, 1.0, 0.75, 1.0, -0.5, 1.0, -0.25, 0.25, 0.75, 0.75, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.25, -0.5, 1.0, 0.0, 1.0, 1.0, -0.75, -0.5, -0.5, 0.0, 0.0, -0.25, 0.5, 1.0, 1.0, -0.75, -0.75, 0.75, 0.0, 0.0, 0.0, -0.75, -1.0, 0.5, -0.75, -0.25, 0.75, -0.75, -0.75, 0.25, -0.5, 0.25, -1.0, 1.0, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, -1.0, -1.0, 0.5, -0.25, -0.25, -0.75, 0.25, -0.75, 0.75, ]);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer200.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder400.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query200.destroy()
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    const array8 = new Float32Array([0.5, 1.0, -0.25, -0.25, -0.75, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 1.0, 0.5, -1.0, -1.0, -0.75, -0.75, -0.75, -0.75, 0.5, -0.25, -0.25, -0.75, 0.0, -0.5, -0.75, -0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -0.25, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -0.75, 0.25, 0.25, 0.0, -0.75, 0.75, -0.75, 0.75, 0.25, 1.0, 0.5, -0.5, 0.25, -0.75, 0.0, -0.25, 0.75, -0.25, -1.0, -0.25, 0.25, -0.75, 0.0, 0.75, -1.0, 0.5, 0.0, -0.5, 0.25, 0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.5, 0.0, -0.25, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, -0.75, -0.5, 0.5, 0.25, -1.0, 0.0, 0.75, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder201.popDebugGroup();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const array9 = new Float32Array([-0.25, 1.0, 1.0, 0.25, -1.0, 0.0, -0.5, 1.0, 0.75, 0.25, 0.75, 0.5, 1.0, 0.25, 0.25, -0.75, 0.25, 0.75, -1.0, 0.25, -0.75, -1.0, 0.75, -0.25, 0.75, 0.5, -0.5, 0.5, 0.25, -0.75, -1.0, -0.5, -0.5, 0.25, -0.25, 0.0, 1.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, -1.0, -0.25, -1.0, -0.5, -0.75, -1.0, 1.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.75, -0.5, -0.75, 0.5, -0.75, 0.25, 0.75, 0.75, 0.25, -0.5, -0.5, 0.5, -0.25, -0.5, 1.0, 1.0, 0.5, 0.5, 0.75, -0.25, 0.25, 0.5, 0.5, 0.75, -0.75, -1.0, 0.25, 0.5, 0.5, -0.25, -0.75, -0.25, -0.75, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, 1.0, -0.5, 0.0, 0.0, 1.0, 0.5, ]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const array10 = new Float32Array([-0.25, -0.25, 0.5, 1.0, 0.25, -0.75, -1.0, 0.5, 1.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.75, -0.5, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 0.75, 0.75, 0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.75, 0.0, 0.25, 0.75, 0.5, 0.0, -0.75, -0.5, -0.25, 0.75, 0.75, -1.0, 0.25, 1.0, 0.5, 0.25, 0.25, 0.0, -1.0, 0.5, -1.0, 0.5, 0.5, -0.5, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, -1.0, -1.0, -0.5, -0.5, -0.75, -0.25, 0.75, 0.75, 0.25, 1.0, 0.5, 0.5, 0.75, -0.5, -0.25, 0.75, 0.0, 0.25, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.25, 0.25, 1.0, ]);
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.pushErrorScope("out-of-memory");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const array11 = new Float32Array([0.5, 0.75, 0.25, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, -0.5, 0.5, 0.75, 0.0, 1.0, -1.0, -0.5, 1.0, 0.25, 0.5, 0.0, 0.25, 0.0, 0.5, -0.5, -1.0, 0.75, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, -1.0, 0.0, -0.25, -0.5, -0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.75, -1.0, -1.0, 0.25, 0.75, 0.75, 0.75, -0.75, 0.0, -0.25, 0.0, 0.75, 0.0, -0.5, 0.5, 0.75, -0.75, -0.5, 0.5, 0.25, 0.5, 0.25, 1.0, -0.25, 1.0, -0.5, -0.25, 0.25, 0.25, 0.5, 0.75, 0.0, 0.0, -0.5, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.5, 1.0, 0.5, 0.0, 0.0, -0.25, -0.75, -1.0, 0.5, ]);
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const array12 = new Float32Array([-0.75, 0.25, 0.25, 0.0, -0.5, 0.0, 0.5, 0.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, -1.0, 0.25, 0.25, 1.0, 0.25, 0.0, -1.0, 0.25, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -1.0, 0.0, -1.0, 0.5, -0.25, -1.0, -0.75, -0.5, -0.5, 1.0, -1.0, 0.0, 0.0, -1.0, -0.5, -1.0, 0.75, -0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.0, -0.75, -0.5, 1.0, -0.5, -0.75, -0.75, -0.75, -0.5, 0.75, -0.25, -0.5, 1.0, -0.75, 0.25, -1.0, -0.75, -0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, 0.25, 0.75, -0.25, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.75, -0.75, 0.25, -0.5, -0.75, -0.75, 0.75, ]);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    query400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.destroy();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const array13 = new Float32Array([0.25, 0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -0.25, 0.75, -0.5, -0.75, 0.5, 1.0, 1.0, 0.5, 1.0, 0.0, 0.75, 0.0, -0.5, 0.0, -1.0, 0.25, 0.5, 0.0, -0.75, -0.5, 0.0, 0.5, -0.25, 0.0, -0.25, -0.75, -1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 0.5, 1.0, 0.5, 1.0, -0.75, -0.25, -0.25, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, -0.25, 0.5, -0.25, -0.5, -0.75, -0.5, -0.75, -0.75, -0.5, 0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 1.0, 0.0, 1.0, -0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 1.0, 0.0, 0.25, 0.0, -0.5, -0.75, 0.75, -0.75, -1.0, -1.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.75, -0.25, 0.5, -1.0, ]);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    command_encoder401.pushDebugGroup("mygroupmarker")
    const command_buffer202 = command_encoder202.finish();
    buffer400.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    query201.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer403, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer403, 0);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    
    device40.queue.writeBuffer(buffer403, 0, array13, 0, array13.length);
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    command_encoder401.clearBuffer(buffer403);
    command_encoder201.insertDebugMarker("mymarker");
    
    device20.pushErrorScope("validation");
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    command_encoder401.popDebugGroup()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query400.destroy()
    buffer202.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
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
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    command_encoder201.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    query402.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array12, 0, array12.length);
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const command_buffer203 = command_encoder203.finish();
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array11, 0, array11.length);
    texture402.destroy();
    command_encoder401.insertDebugMarker("mymarker");
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
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    command_encoder401.clearBuffer(buffer403);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_buffer204 = command_encoder204.finish();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer205.destroy()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([-0.5, -0.5, 0.5, 0.0, -0.25, -0.5, -0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 0.0, 0.5, -0.75, 0.25, 1.0, -1.0, 0.0, 0.0, 0.25, 0.75, 0.75, -1.0, 0.5, -0.25, 1.0, 0.75, 0.75, 0.0, -0.25, 0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.25, -0.5, 0.0, -0.75, -1.0, -0.75, 0.25, -0.25, 0.0, -1.0, 1.0, 0.0, -0.75, -0.25, 0.5, 0.25, 0.25, 0.75, 0.25, -0.25, 0.25, -0.5, 0.75, -0.5, -0.75, -0.75, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, -1.0, 0.25, -0.25, -0.25, 0.5, 0.25, -0.25, -0.5, -1.0, 0.75, -0.25, -0.75, -1.0, -0.5, 0.25, -0.25, 0.25, -0.25, 0.75, 1.0, -0.25, 0.5, 0.25, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query402.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline202);
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
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
    
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
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
    texture401.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_pass_encoder4010.popDebugGroup();
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer500.destroy()
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_buffer500 = command_encoder500.finish();
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    
    compute_pass_encoder2050.setPipeline(compute_pipeline203);
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    query401.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query202.destroy()
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    compute_pass_encoder4000.popDebugGroup()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder4010.setStencilReference(1);
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    command_encoder501.insertDebugMarker("mymarker");
    device70.pushErrorScope("internal");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    buffer208.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const compute_pipeline4070 = device40.createComputePipeline({
        label: "compute_pipeline4070",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const array15 = new Float32Array([0.0, 0.75, -1.0, 0.0, 0.75, -0.75, 0.0, -1.0, 1.0, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.75, 0.25, 0.5, 1.0, 0.0, -0.25, -0.25, -0.5, -0.75, -0.25, -0.75, 1.0, -0.5, 0.0, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, -0.75, -0.75, 1.0, -0.75, -0.5, 1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.5, 0.0, -1.0, 1.0, 0.25, 0.75, -0.25, -0.75, 0.75, -0.25, 1.0, -0.5, 0.5, -0.75, 1.0, -0.25, 0.5, 0.25, -0.25, 0.5, 1.0, -0.75, 1.0, 0.75, -1.0, -0.25, 1.0, 0.5, 0.75, 0.5, 0.5, 0.5, 1.0, 0.5, 0.25, 0.5, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, 1.0, 1.0, 0.5, 1.0, 0.5, 0.5, 0.5, 0.0, 1.0, -0.75, -0.5, 1.0, ]);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4071 = device40.createComputePipeline({
        label: "compute_pipeline4071",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4072 = device40.createComputePipeline({
        label: "compute_pipeline4072",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline4073 = device40.createComputePipeline({
        label: "compute_pipeline4073",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder206.insertDebugMarker("mymarker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device30.destroy();
    const compute_pipeline4074 = device40.createComputePipeline({
        label: "compute_pipeline4074",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline4075 = device40.createComputePipeline({
        label: "compute_pipeline4075",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    render_bundle_encoder201.setVertexBuffer(0, buffer202);
    command_encoder206.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    const compute_pipeline4076 = device40.createComputePipeline({
        label: "compute_pipeline4076",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4077 = device40.createComputePipeline({
        label: "compute_pipeline4077",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.draw(3);
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    const compute_pipeline4078 = device40.createComputePipeline({
        label: "compute_pipeline4078",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4079 = device40.createComputePipeline({
        label: "compute_pipeline4079",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const compute_pipeline4080 = device40.createComputePipeline({
        label: "compute_pipeline4080",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4081 = device40.createComputePipeline({
        label: "compute_pipeline4081",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    command_encoder501.insertDebugMarker("mymarker");
    const compute_pipeline4082 = device40.createComputePipeline({
        label: "compute_pipeline4082",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const array16 = new Float32Array([1.0, 0.75, 0.75, -0.5, 0.75, 1.0, 0.5, 0.75, -1.0, 0.25, 0.5, -0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.0, 0.0, -0.25, 0.0, 0.0, 0.75, -1.0, 0.5, 0.5, -0.75, 0.5, -0.25, -0.25, -0.5, -0.75, 0.75, -1.0, 0.0, 0.25, -0.25, -1.0, -1.0, -0.25, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, 1.0, -0.25, 0.75, 0.5, 0.0, -0.5, -0.75, 0.5, 0.75, 0.25, -0.5, -0.25, -0.25, 0.0, 0.5, 0.25, 0.0, -0.5, -0.25, -0.25, 0.25, 1.0, -0.25, 0.75, -0.75, -1.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.25, -0.75, -0.25, -0.75, 0.25, -1.0, 0.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.5, 0.25, 0.0, 0.25, -0.5, 0.75, -1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4083 = device40.createComputePipeline({
        label: "compute_pipeline4083",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer207.destroy()
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const compute_pipeline4084 = device40.createComputePipeline({
        label: "compute_pipeline4084",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4085 = device40.createComputePipeline({
        label: "compute_pipeline4085",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder4010.setPipeline(render_pipeline401);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    const compute_pipeline4086 = device40.createComputePipeline({
        label: "compute_pipeline4086",
        layout: pipeline_layout407,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const compute_pipeline4087 = device40.createComputePipeline({
        label: "compute_pipeline4087",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4088 = device40.createComputePipeline({
        label: "compute_pipeline4088",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder206.insertDebugMarker("mymarker");
    const compute_pipeline4089 = device40.createComputePipeline({
        label: "compute_pipeline4089",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query204.destroy()
    const compute_pipeline4090 = device40.createComputePipeline({
        label: "compute_pipeline4090",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    query400.destroy()
    texture500.destroy();
    const compute_pipeline4091 = device40.createComputePipeline({
        label: "compute_pipeline4091",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    query203.destroy()
    
    
    const compute_pipeline4092 = device40.createComputePipeline({
        label: "compute_pipeline4092",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const compute_pipeline4093 = device40.createComputePipeline({
        label: "compute_pipeline4093",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    command_encoder206.insertDebugMarker("mymarker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, command_buffer204, ]);
    const command_buffer206 = command_encoder206.finish();
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group401);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group203);
    device20.queue.submit([command_buffer206, ]);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2012, 0);
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder2010.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2050.end();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    const command_buffer205 = command_encoder205.finish();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, command_buffer205, ]);
}