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
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array0 = new Float32Array([0.25, 0.75, 0.75, 0.0, 0.0, 0.0, -0.5, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 1.0, 1.0, 0.5, -0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 0.0, -0.25, -1.0, 0.75, 1.0, -0.25, 1.0, 0.25, 0.25, -0.5, 0.0, 0.75, 1.0, -0.75, 0.0, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, -0.75, -0.5, -0.75, -0.25, 0.25, 0.25, -0.25, 0.75, 0.5, 0.5, -0.5, -1.0, 0.5, -0.75, 0.25, -0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, -1.0, 0.0, -0.75, -0.25, -0.5, 0.75, 0.25, 1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.25, 0.25, 1.0, -1.0, 0.25, -0.75, 0.75, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, -0.75, 0.5, -0.5, ]);
    
    
    
    const array1 = new Float32Array([1.0, 0.75, 0.75, 0.5, -0.75, -0.5, 0.5, -0.25, 0.5, -0.5, 1.0, 1.0, 0.5, 0.5, 0.5, -0.5, -0.5, -0.5, -0.25, 1.0, 0.5, 0.5, 1.0, 0.5, -1.0, 0.75, 0.25, 0.75, 0.5, -1.0, -0.5, -0.5, 0.25, 0.25, -0.75, 0.75, -0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 1.0, -0.25, 0.0, -0.5, -0.5, -0.75, -0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.25, -0.25, 0.0, -0.75, -0.25, 0.75, -0.75, 0.75, -1.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.25, -0.25, 0.75, 0.75, 0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 0.5, 0.75, 0.5, -0.25, 1.0, -0.5, -0.25, -0.25, 0.0, 0.75, -1.0, -0.25, 1.0, 1.0, 0.5, 0.0, -0.75, -0.5, 0.75, -1.0, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    
    
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture100.destroy();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    
    device30.queue.submit([]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder300.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array2 = new Float32Array([0.5, -0.75, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, 0.25, -0.75, 0.5, -0.5, -0.5, -0.75, -0.25, 1.0, 0.75, 0.25, 0.75, -1.0, -0.5, -0.5, 0.25, 0.75, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.75, -0.75, -0.75, 1.0, 1.0, -1.0, 1.0, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.75, -0.5, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, 0.75, 0.0, 0.5, -0.75, 0.5, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, -0.5, -1.0, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -0.75, 0.5, 0.75, -0.75, -0.75, -1.0, 0.5, -1.0, -0.75, -1.0, -0.25, -0.25, -1.0, 0.5, 0.75, 0.5, 1.0, -1.0, -1.0, -0.25, 0.25, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const array3 = new Float32Array([1.0, 0.25, 0.0, -0.75, 0.25, -1.0, 0.75, -0.5, -1.0, -0.5, 0.75, 1.0, -1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 1.0, 0.5, 0.25, -0.25, -0.25, 0.0, -0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -1.0, -0.5, 0.5, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, 1.0, 0.0, -0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 0.25, -1.0, 1.0, 0.0, -0.5, 0.5, -0.5, -0.5, -0.75, -0.25, -0.5, -1.0, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, -0.75, 0.75, 0.0, -0.25, 0.0, 0.0, 0.25, -0.5, -0.75, 0.75, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, -1.0, -0.5, -0.25, -0.75, 1.0, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, -0.5, 0.5, 0.25, -0.5, 0.75, -0.25, 0.0, 0.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
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
    
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder200.popDebugGroup();
    const array4 = new Float32Array([-0.75, -1.0, 0.5, 1.0, -0.5, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, -0.25, -0.25, -0.5, -0.5, -1.0, 0.75, 1.0, -1.0, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, -0.25, 1.0, -1.0, -0.25, -0.75, -0.25, -0.5, 0.25, -1.0, 0.75, 0.25, -1.0, -0.25, -0.75, 1.0, 1.0, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.75, -0.5, 0.5, 0.75, -0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 0.25, -0.5, 0.25, 0.5, 0.25, 0.25, -1.0, 0.25, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, -0.25, -0.5, 0.0, 0.25, -0.75, 0.75, 0.75, -0.25, 1.0, 1.0, -1.0, -0.25, 0.75, -1.0, -1.0, -0.25, -1.0, -0.25, 0.75, 0.0, 0.75, 1.0, 0.5, -0.5, 0.5, -1.0, ]);
    render_bundle_encoder200.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    buffer401.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array5 = new Float32Array([0.5, -1.0, 1.0, -0.75, -0.25, 0.5, -0.5, 0.5, -0.25, 0.0, -0.75, -0.75, 1.0, 1.0, -0.75, 1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 0.0, 0.25, 0.25, -0.5, 0.75, -0.25, 0.25, -0.5, 0.75, 0.25, -0.5, 1.0, -1.0, 1.0, 0.5, -0.75, 0.75, 0.5, -0.75, -0.25, 0.0, 0.5, -0.75, -1.0, 0.25, 0.5, -1.0, -0.25, 1.0, -0.5, 0.5, -0.75, -0.25, 0.25, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, 0.0, -0.25, -1.0, 0.75, 0.75, 0.75, 0.25, 0.5, 0.25, -0.5, -0.25, -0.5, -0.75, -0.25, -1.0, 0.75, -0.75, -0.75, -0.75, -0.25, 0.0, -0.75, -0.25, -1.0, 0.75, 0.75, 0.5, 1.0, -0.25, -1.0, 0.25, -1.0, -0.25, 0.0, 0.25, -0.5, 0.75, 1.0, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    query400.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    command_encoder301.insertDebugMarker("mymarker");
    const array6 = new Float32Array([-0.75, 0.75, 1.0, 0.0, 0.5, -0.25, 0.75, -1.0, 1.0, 1.0, 0.75, -0.25, 0.0, -0.75, 0.25, 0.5, 0.25, 0.0, 1.0, 0.25, -1.0, -0.5, -0.25, 0.75, -1.0, 0.25, -1.0, 0.25, 0.75, -0.75, -0.5, 0.75, -0.75, -0.75, -1.0, 0.0, -1.0, -1.0, 0.5, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, -0.5, 0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 0.75, 0.0, 0.5, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, 0.5, 0.5, 1.0, 0.75, -0.5, 0.5, 0.0, -0.75, 1.0, 0.0, 0.75, -0.25, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.5, -0.25, -1.0, 0.0, 0.25, 1.0, -0.75, -1.0, -1.0, 0.25, -0.5, -1.0, -0.75, 0.75, -1.0, 0.5, ]);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth32float",
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
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device40.destroy();
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array7 = new Float32Array([-1.0, -0.75, -0.75, 0.25, -0.75, 0.75, 1.0, -0.75, 1.0, -1.0, -0.5, 1.0, -0.75, -0.75, -0.75, 1.0, 0.0, -0.25, 1.0, 1.0, -0.5, -0.5, -0.25, -0.5, 1.0, 0.75, 0.25, 0.0, -0.5, -0.75, -0.75, 0.5, 0.75, 1.0, -0.5, 0.25, 0.25, 1.0, -1.0, -0.5, 0.75, 0.25, -0.25, 1.0, -0.5, 0.0, 0.25, 0.75, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, 0.25, -0.25, -0.75, -0.5, -1.0, -1.0, -1.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 0.25, -0.25, -1.0, -1.0, 0.0, 1.0, -1.0, -0.75, 0.75, -0.25, -0.25, 0.5, 0.0, -0.25, 1.0, 1.0, -0.5, -0.75, 1.0, -0.25, 0.0, -1.0, 0.0, -0.5, -0.75, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, ]);
    
    command_encoder301.insertDebugMarker("mymarker");
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    render_bundle_encoder600.popDebugGroup();
    
    device60.destroy();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    command_encoder501.pushDebugGroup("mygroupmarker")
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder501.insertDebugMarker("mymarker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture501
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    buffer500.destroy()
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture501.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const array8 = new Float32Array([-0.75, 0.5, 0.75, -0.5, 0.25, -1.0, -0.75, 1.0, -0.25, 0.25, 0.5, -0.75, -0.75, -1.0, 1.0, -1.0, 0.0, 0.75, 0.75, -1.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.0, -0.25, -0.75, 0.75, 0.5, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, -0.75, -1.0, 0.5, -0.75, -1.0, 0.75, 0.75, -0.5, 0.0, 0.0, 1.0, 0.75, 0.0, -0.5, 0.5, -0.5, -0.5, -1.0, 0.5, -0.75, 0.25, 0.75, 0.5, -0.25, 1.0, 0.25, 0.25, -0.5, -0.75, 0.0, -1.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.0, -0.25, 0.25, -1.0, -0.5, 0.5, 0.0, 0.5, -0.75, 0.25, -0.5, 0.25, 0.0, 0.25, 1.0, -0.5, -0.25, 0.0, 0.0, 0.25, 0.75, -0.75, ]);
    
    
    command_encoder501.insertDebugMarker("mymarker");
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5001.popDebugGroup()
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
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
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder5010.setStencilReference(1);
    render_bundle_encoder500.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.pushErrorScope("out-of-memory");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    
    const array9 = new Float32Array([0.5, -0.25, 0.5, 0.0, 0.25, 0.5, 1.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.25, -0.75, -1.0, -0.75, 0.25, 0.75, 1.0, 1.0, -0.5, 1.0, 0.5, -1.0, 0.0, 0.5, 0.75, -0.25, 1.0, 0.25, 0.25, 0.5, -1.0, -0.75, -0.5, -0.5, 0.5, 0.0, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, 0.25, -0.75, -0.5, 0.75, 0.75, -0.25, -0.75, 0.0, 0.75, -1.0, 0.5, 0.5, 0.5, -0.25, 1.0, 0.75, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, -0.75, 0.25, -0.5, 0.75, -0.75, 0.5, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, 0.75, 0.25, ]);
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder5010.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer800.destroy()
    buffer801.destroy()
    render_bundle_encoder500.popDebugGroup();
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    texture500.destroy();
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5020.beginOcclusionQuery(0)
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder5020.executeBundles([render_bundle_encoder500, ])
    render_pass_encoder5021.pushDebugGroup("group_marker");
    render_pass_encoder5030.popDebugGroup();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    compute_pass_encoder5030.insertDebugMarker("marker")
    buffer500.destroy()
    command_encoder800.pushDebugGroup("mygroupmarker")
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    compute_pass_encoder5030.popDebugGroup()
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    render_pass_encoder5040.executeBundles([])
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5040.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5040.executeBundles([])
    command_encoder800.popDebugGroup()
    render_pass_encoder5011.pushDebugGroup("group_marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    texture502.destroy();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder801.insertDebugMarker("mymarker");
    
    
    render_pass_encoder5030.setStencilReference(1);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder5040.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5021.setStencilReference(1);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_pass_encoder5040.beginOcclusionQuery(1)
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5040.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    buffer400.destroy()
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    device50.queue.writeTexture({ texture: texture504 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture505 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder802.insertDebugMarker("mymarker");
    compute_pass_encoder5030.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture505 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture505 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder801.clearBuffer(buffer800);
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder5001.insertDebugMarker("marker")
    render_pass_encoder5030.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture505 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5040.insertDebugMarker("marker");
    device80.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    render_pass_encoder5021.popDebugGroup();
    compute_pass_encoder5030.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
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
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture505.destroy();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5050.executeBundles([])
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder5040.executeBundles([render_bundle_encoder500, ])
    render_pass_encoder5050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.popDebugGroup();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    buffer503.destroy()
    render_pass_encoder5030.setStencilReference(1);
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    command_encoder801.insertDebugMarker("mymarker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5010.setPipeline(render_pipeline500);
    render_pass_encoder5031.setPipeline(render_pipeline500);
    
    command_encoder800.resolveQuerySet(
        query800,
        0,
        32,
        buffer801,
        0
    )
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5050.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    render_pass_encoder5021.executeBundles([])
    compute_pass_encoder5030.insertDebugMarker("marker")
    const render_pass_encoder5041 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder8020.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder500.clearBuffer(buffer500);
    render_pass_encoder5050.insertDebugMarker("marker");
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    render_pass_encoder5050.pushDebugGroup("group_marker");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5041.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5020.setPipeline(render_pipeline501);
    buffer500.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group500);
    render_pass_encoder5021.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    
    render_pass_encoder5050.executeBundles([])
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device70.pushErrorScope("out-of-memory");
    query800.destroy()
    command_encoder503.insertDebugMarker("mymarker");
    buffer501.destroy()
    render_pass_encoder5000.setPipeline(render_pipeline500);
    const texture_view5070 = texture507.createView({ label: "texture_view5070" });
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.popDebugGroup()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group501);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5011.setPipeline(render_pipeline501);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5050.setPipeline(render_pipeline500);
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder5030.setPipeline(render_pipeline501);
    render_pass_encoder5011.popDebugGroup();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group502);
    render_pass_encoder5041.setPipeline(render_pipeline500);
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group503);
    render_pass_encoder5021.setPipeline(render_pipeline500);
    const command_buffer801 = command_encoder801.finish();
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group504);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5030.setVertexBuffer(0, buffer501);
    render_pass_encoder5040.endOcclusionQuery()
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5011.setVertexBuffer(0, buffer505);
    render_pass_encoder5010.setVertexBuffer(0, buffer502);
    render_pass_encoder5011.drawIndirect(buffer5010, 0);
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group505);
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5040.setPipeline(render_pipeline501);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5041.setBindGroup(0, bind_group506);
    render_pass_encoder5030.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5010.drawIndirect(buffer5011, 0);
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    render_pass_encoder5021.setBindGroup(0, bind_group507);
    const command_buffer504 = command_encoder504.finish();
    render_pass_encoder5031.setVertexBuffer(0, buffer5013);
    render_pass_encoder5030.drawIndirect(buffer507, 0);
    render_pass_encoder5031.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5031.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5031.drawIndexed(3);
    render_pass_encoder5011.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5030.end();
    render_pass_encoder5040.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5011.end();
    render_pass_encoder5050.popDebugGroup();
    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5021,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group508);
    render_pass_encoder5021.setVertexBuffer(0, buffer507);
    render_pass_encoder5021.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5021.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5041.setVertexBuffer(0, buffer509);
    render_pass_encoder5021.setIndexBuffer(buffer507, "uint16");
    const command_buffer600 = command_encoder600.finish();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder5041.drawIndirect(buffer509, 0);
    render_pass_encoder5050.setVertexBuffer(0, buffer5011);
    render_pass_encoder5050.draw(3);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.setVertexBuffer(0, buffer5019);
    render_pass_encoder5031.end();
    render_pass_encoder5021.drawIndexed(3);
    render_pass_encoder5000.setVertexBuffer(0, buffer507);
    render_pass_encoder5000.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5011.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5021.end();
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5000.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder5041.end();
    compute_pass_encoder5001.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    compute_pass_encoder8020.popDebugGroup()
    command_encoder501.popDebugGroup()
    render_pass_encoder5050.end();
    const command_buffer505 = command_encoder505.finish();
    render_pass_encoder5000.drawIndirect(buffer5020, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5010.popDebugGroup();
    device80.queue.submit([command_buffer801, ]);
    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5023,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group509);
    render_pass_encoder5011.setIndexBuffer(buffer503, "uint16");
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5030.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5011.setIndexBuffer(buffer501, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder5040.setVertexBuffer(0, buffer5017);
    compute_pass_encoder5000.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder5050.drawIndirect(buffer5022, 0);
    render_pass_encoder5031.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder5000.popDebugGroup();
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    render_pass_encoder5030.draw(3);
    render_pass_encoder5020.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5040.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5030.end();
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5050.drawIndirect(buffer5018, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5040.popDebugGroup();
    compute_pass_encoder8020.popDebugGroup()
    device50.queue.submit([command_buffer504, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5011.drawIndexedIndirect(buffer5023, 0);
    device50.queue.submit([command_buffer504, ]);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder5011.end();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5041.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5040.end();
    render_pass_encoder5021.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5021.draw(3);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder5050.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5010.drawIndirect(buffer5015, 0);
    render_pass_encoder5040.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5021.setIndexBuffer(buffer503, "uint16");
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder5010.drawIndirect(buffer507, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5020.setIndexBuffer(buffer5011, "uint16");
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5023, 0);
    render_pass_encoder5031.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5031.end();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5031.draw(3);
    render_pass_encoder5021.drawIndexed(3);
    render_pass_encoder5031.drawIndirect(buffer5020, 0);
    render_pass_encoder5050.drawIndexed(3);
    render_pass_encoder5031.draw(3);
    render_pass_encoder5030.popDebugGroup();
    const command_buffer802 = command_encoder802.finish();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer303, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer303, 0);
    render_pass_encoder5050.draw(3);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5040.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer501, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5011.drawIndirect(buffer5020, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5050.end();
    render_pass_encoder5031.drawIndexedIndirect(buffer504, 0);
    device80.queue.submit([command_buffer802, ]);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5010.popDebugGroup();
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder5030.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5040.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5050.drawIndirect(buffer505, 0);
    render_pass_encoder5011.drawIndirect(buffer502, 0);
    render_pass_encoder5000.drawIndexed(3);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5040.drawIndirect(buffer509, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5022, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder5000.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5050.drawIndexed(3);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5021.drawIndirect(buffer505, 0);
    device50.queue.submit([command_buffer500, command_buffer504, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder5010.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer5012, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5000.drawIndexedIndirect(buffer5020, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5021.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5000.end();
    render_pass_encoder5020.drawIndirect(buffer5017, 0);
    render_pass_encoder5021.drawIndirect(buffer504, 0);
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5020.drawIndirect(buffer5010, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer509, 0);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder5031.end();
    render_pass_encoder5011.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer501, ]);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder5011.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5011.drawIndirect(buffer5020, 0);
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder5001.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder5050.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.drawIndirect(buffer5014, 0);
    render_pass_encoder5041.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5021.drawIndexed(3);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5040.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5050.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5010, "uint16");
    render_pass_encoder5000.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5011, "uint16");
    device50.queue.submit([command_buffer502, command_buffer503, command_buffer505, ]);
    render_pass_encoder5011.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5031.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5040.setIndexBuffer(buffer5011, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5031.drawIndirect(buffer5013, 0);
    device50.queue.submit([command_buffer502, command_buffer505, ]);
    render_pass_encoder5030.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5040.end();
    render_pass_encoder5021.setIndexBuffer(buffer5019, "uint16");
    render_pass_encoder5020.drawIndexed(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5040.drawIndirect(buffer509, 0);
    render_pass_encoder5021.popDebugGroup();
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    render_pass_encoder5011.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5050.end();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5021.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5011.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer504, 0);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer5014, 0);
    render_pass_encoder5040.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5040.end();
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder5050.drawIndirect(buffer501, 0);
    render_pass_encoder5011.setIndexBuffer(buffer503, "uint16");
    device70.queue.submit([]);
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer5022, 0);
    render_pass_encoder5020.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5031.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder5000.drawIndirect(buffer5010, 0);
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5021.drawIndexed(3);
    render_pass_encoder5041.end();
    render_pass_encoder5021.setIndexBuffer(buffer503, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5050.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5011.drawIndirect(buffer501, 0);
    render_pass_encoder5050.drawIndirect(buffer5015, 0);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder5041.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5030.drawIndexedIndirect(buffer5023, 0);
    device80.queue.submit([]);
    render_pass_encoder5021.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5020.end();
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5015, 0);
    render_pass_encoder5000.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer508, 0);
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5010.end();
    render_pass_encoder5050.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5030.drawIndirect(buffer506, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder5041.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5041.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5041.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5031.end();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5021.end();
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder5020.end();
    render_pass_encoder5031.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder5011.draw(3);
    render_pass_encoder5040.drawIndexed(3);
    render_pass_encoder5040.drawIndexedIndirect(buffer500, 0);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5031.drawIndirect(buffer505, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5021.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder5030.popDebugGroup();
    device80.queue.submit([command_buffer801, command_buffer802, ]);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5020.end();
    compute_pass_encoder8020.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder5041.drawIndexed(3);
    render_pass_encoder5040.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5022, 0);
    device70.queue.submit([]);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5041.setIndexBuffer(buffer5019, "uint16");
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5031.draw(3);
    render_pass_encoder5050.drawIndexedIndirect(buffer5013, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5041.setIndexBuffer(buffer5017, "uint16");
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.end();
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5021.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5020.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5023, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5050.drawIndexedIndirect(buffer509, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5021.drawIndirect(buffer5014, 0);
    render_pass_encoder5041.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5041.end();
    render_pass_encoder5040.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5000.draw(3);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5020.end();
    render_pass_encoder5040.end();
    render_pass_encoder5050.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder5020.end();
    render_pass_encoder5030.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5020, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5016, 0);
    render_pass_encoder5040.draw(3);
    render_pass_encoder5020.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5021.end();
    device80.queue.submit([]);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer509, 0);
    render_pass_encoder5021.setIndexBuffer(buffer501, "uint16");
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5020.drawIndirect(buffer5017, 0);
    render_pass_encoder5030.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5030.drawIndirect(buffer508, 0);
    render_pass_encoder5011.drawIndirect(buffer5020, 0);
    render_pass_encoder5021.drawIndirect(buffer509, 0);
    render_pass_encoder5030.drawIndexed(3);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5030.drawIndirect(buffer5020, 0);
    render_pass_encoder5041.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5016, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5000.drawIndirect(buffer5019, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5021.setIndexBuffer(buffer5016, "uint16");
    render_pass_encoder5040.drawIndirect(buffer503, 0);
    render_pass_encoder5031.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5050.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5041.drawIndirect(buffer5015, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5021.draw(3);
    render_pass_encoder5021.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    render_pass_encoder5030.end();
    render_pass_encoder5031.end();
    render_pass_encoder5030.setIndexBuffer(buffer5021, "uint16");
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5031.end();
    render_pass_encoder5041.end();
    compute_pass_encoder5030.popDebugGroup()
    device50.queue.submit([command_buffer504, command_buffer505, ]);
    render_pass_encoder5021.drawIndirect(buffer5020, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder5040.end();
    render_pass_encoder5031.drawIndirect(buffer504, 0);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder5041.end();
    render_pass_encoder5031.end();
    device70.queue.submit([]);
    render_pass_encoder5040.drawIndexedIndirect(buffer5012, 0);
    device00.queue.submit([]);
    render_pass_encoder5031.popDebugGroup();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    render_pass_encoder5020.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5011.draw(3);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder5011.popDebugGroup();
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5031.drawIndexedIndirect(buffer5015, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    device50.queue.submit([]);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder5031.end();
    render_pass_encoder5031.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5050.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer103, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer103, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5050.drawIndexedIndirect(buffer5018, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5040.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5020, 0);
}