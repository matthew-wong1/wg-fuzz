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
    
    
    
    const array0 = new Float32Array([0.5, 0.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, 0.5, -0.5, -1.0, 0.0, 1.0, -0.25, 0.0, 0.75, -0.25, -0.5, 0.5, 0.0, -1.0, 1.0, -0.5, 0.5, -0.75, -1.0, 0.75, -0.75, 0.75, 0.0, 0.75, -0.75, 0.0, 0.0, 0.5, -0.5, -0.5, 0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -0.75, -1.0, -1.0, 0.25, 0.75, -0.75, 0.0, -0.25, 0.25, -1.0, 0.0, -1.0, -0.75, 0.75, -0.5, 1.0, 0.5, 0.75, 1.0, -0.5, 0.75, -0.75, 0.75, -0.75, 0.25, -1.0, 0.25, -0.75, -1.0, 1.0, 0.25, -0.25, -0.25, 0.75, 0.75, -0.25, -0.25, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -1.0, -0.75, 0.25, -1.0, -0.5, ]);
    
    
    
    
    
    
    
    const array1 = new Float32Array([-0.5, -0.75, -1.0, -1.0, -1.0, 0.25, -0.5, 0.75, -1.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.0, 0.5, 0.75, 0.5, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, 1.0, 0.0, 0.75, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, -0.25, 0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 1.0, -0.25, 0.0, 0.25, -0.5, 1.0, -0.25, -0.75, 0.25, 0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -0.75, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, 1.0, -0.75, -1.0, -1.0, -0.5, -0.75, 0.5, -0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.0, -0.25, 1.0, -0.25, -0.5, -0.5, 0.25, 1.0, -1.0, -0.25, -0.5, 0.0, -0.75, -1.0, 0.75, -0.25, -0.25, 0.0, 0.25, 0.5, -0.5, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array2 = new Float32Array([0.25, -0.25, 0.5, -0.5, 0.0, 0.0, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, 1.0, 0.0, 1.0, 0.5, 0.5, -1.0, -0.25, 0.75, 0.25, 0.5, -0.25, 0.0, -0.75, 0.5, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, -0.5, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -0.5, 1.0, 1.0, -0.25, -0.75, -0.75, 0.75, 0.0, -0.5, 1.0, -1.0, 0.75, 0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.25, 0.25, 0.5, -0.5, 1.0, 0.5, -0.75, -1.0, 0.5, -1.0, 1.0, 1.0, 0.0, 0.5, -0.25, 0.0, 1.0, -0.75, -0.25, -0.25, -1.0, 0.0, 1.0, 0.75, 1.0, 1.0, -1.0, 0.75, 0.75, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, 0.75, 0.0, 0.0, 0.0, -0.75, -0.5, -1.0, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer101.destroy()
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
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.0, 0.0, 0.5, 0.0, 0.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.75, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, 0.25, 1.0, 0.25, -0.75, -0.5, 0.75, -1.0, -0.5, -0.5, 0.75, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, -0.75, 1.0, -0.75, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, -0.5, 0.5, 0.25, 0.75, 0.25, 0.25, -0.25, -0.25, -0.75, -0.5, 0.25, 0.75, 0.5, -0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 0.75, 0.25, -1.0, -0.5, -0.75, -1.0, -1.0, 0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -0.75, 1.0, 0.5, -1.0, 0.5, -1.0, 0.5, -0.25, 0.0, -0.25, -0.5, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, ]);
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
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
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    
    device40.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.clearBuffer(buffer200);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    const array4 = new Float32Array([1.0, -1.0, 0.75, -0.75, 0.25, 0.75, 1.0, -0.25, 0.5, 0.75, -0.25, -0.5, 0.0, 1.0, 0.5, 0.25, 0.75, 0.5, -1.0, -0.5, 0.25, 1.0, -0.75, 0.0, 0.75, -1.0, 0.75, -1.0, 0.0, 0.5, 0.75, -1.0, 0.0, 0.25, -0.75, -0.75, -0.75, -0.25, -0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -0.75, 0.75, 0.5, 0.5, 0.25, 0.0, 0.25, 0.75, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, 1.0, 0.0, 0.75, 0.0, 1.0, 1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.5, 0.25, 1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 1.0, 0.0, 0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 0.0, 0.25, -0.75, 0.0, 0.75, 0.75, 0.5, -0.25, -0.25, ]);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device20.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder300.popDebugGroup()
    const array5 = new Float32Array([-1.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.75, 0.75, 0.75, 0.25, -1.0, 0.5, 0.0, -1.0, -1.0, 0.5, -0.5, 1.0, -0.5, -0.75, 0.0, -0.5, 0.75, 0.75, 0.75, 1.0, 0.5, 0.25, -1.0, 1.0, -1.0, 1.0, 1.0, -0.25, -0.5, 0.25, 0.5, -0.25, 0.25, -0.75, 1.0, 0.75, -0.5, 0.5, 0.25, -0.75, -0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.0, -1.0, 0.25, -0.75, 0.5, 1.0, 0.75, 0.75, 1.0, -1.0, 0.0, 0.0, 0.25, 1.0, 0.5, 0.75, -0.5, -1.0, -1.0, -1.0, -0.25, -0.25, 0.25, 1.0, 0.75, 0.5, 0.5, 1.0, -0.5, 0.25, 0.0, 0.0, 0.25, -0.5, 0.25, 1.0, -0.75, -0.5, -0.25, -0.5, 1.0, -0.5, 0.5, ]);
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
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    texture200.destroy();
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const array6 = new Float32Array([0.75, 0.75, 1.0, -0.25, 1.0, -0.5, 0.25, 0.25, -1.0, 0.5, 0.5, -0.5, 0.75, 0.25, -0.25, 1.0, 1.0, 1.0, 1.0, -0.75, -0.75, -1.0, -0.25, 0.0, -0.25, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, 0.5, -0.5, 0.0, 0.25, -0.25, 0.5, 0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, 0.75, 0.75, 0.25, -0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 1.0, -0.25, -0.75, -0.5, -0.25, -0.75, 0.25, 0.5, -0.5, 0.75, 0.75, -0.25, 1.0, -0.75, 0.0, -0.75, -0.75, -0.75, -1.0, 0.75, 0.25, 1.0, 0.25, 0.5, -0.75, -0.25, 0.5, ]);
    buffer200.destroy()
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer201.destroy()
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device20.pushErrorScope("internal");
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    buffer102.destroy()
    render_bundle_encoder101.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    
    
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    query200.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer300.destroy()
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    texture200.destroy();
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer202.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.popDebugGroup()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    command_encoder301.insertDebugMarker("mymarker");
    const array7 = new Float32Array([0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 0.5, -0.25, 0.75, 1.0, 0.25, 0.25, -0.25, 0.75, -0.25, 0.75, -0.5, 0.75, -1.0, -0.25, 0.0, 0.75, -1.0, -1.0, 0.5, -1.0, 0.25, 0.25, -0.5, 0.5, 0.0, 0.5, 0.25, 0.0, 0.75, 1.0, -0.5, -0.75, 0.25, 1.0, -1.0, 0.0, 0.0, -0.5, 0.75, 0.5, -0.75, 0.25, 0.0, -0.5, 0.75, 0.75, 0.25, -1.0, -0.25, -1.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.75, -0.75, 0.25, 0.25, 0.0, -0.25, 0.75, -0.75, -0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, -0.75, -1.0, -0.25, -1.0, 0.75, -0.5, -0.5, 0.25, 0.5, 0.75, -0.5, 0.25, -1.0, 0.5, -0.5, 0.5, 0.75, 0.25, 0.75, -0.75, -0.75, 0.25, 1.0, 0.25, ]);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder301.popDebugGroup()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query200.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline203);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_bundle_encoder300.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query201.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer301.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    buffer500.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline306);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    
    compute_pass_encoder2000.dispatchWorkgroups(100);
    
    query201.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer305.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder202.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    device30.destroy();
    buffer205.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture502.destroy();
    
    
    query201.destroy()
    
    texture203.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.pushErrorScope("internal");
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.executeBundles([])
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    device20.pushErrorScope("validation");
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
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder5000.insertDebugMarker("marker")
    buffer208.destroy()
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture202.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    
    buffer209.destroy()
    device40.pushErrorScope("validation");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    command_encoder500.clearBuffer(buffer501);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder202.insertDebugMarker("mymarker");
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2020.setPipeline(render_pipeline201);
    
    buffer100.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query200.destroy()
    query201.destroy()
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_pass_encoder2021.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    render_pass_encoder2001.setPipeline(render_pipeline201);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    render_pass_encoder2021.executeBundles([])
    
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.setPipeline(render_pipeline202);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2020.beginOcclusionQuery(0)
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    device20.pushErrorScope("internal");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    
    render_pass_encoder2021.setStencilReference(1);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    
    device20.queue.writeBuffer(buffer2010, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer2010, 0, array6, 0, array6.length);
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    texture503.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeBuffer(buffer2010, 0, array1, 0, array1.length);
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query501.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query205.destroy()
    buffer207.destroy()
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2002.setPipeline(render_pipeline202);
    render_pass_encoder2000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2002.setBindGroup(0, bind_group201);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer206);
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2002.setVertexBuffer(0, buffer206);
    render_pass_encoder2020.popDebugGroup();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group204);
    render_pass_encoder2002.drawIndirect(buffer207, 0);
    render_pass_encoder2021.setVertexBuffer(0, buffer206);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    const command_buffer400 = command_encoder400.finish();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder2001.end();
    render_pass_encoder2002.end();
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder2020.setVertexBuffer(0, buffer206);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2002.endOcclusionQuery()
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder2000.setVertexBuffer(0, buffer206);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2002.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.end();
    device00.queue.submit([]);
    compute_pass_encoder2000.end();
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2001.end();
    render_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2002.drawIndirect(buffer209, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer201, ]);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    command_encoder500.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2002.drawIndirect(buffer2020, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    device50.queue.submit([]);
    device50.queue.submit([]);
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
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.end();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndexed(3);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2014, 0);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
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
        layout: compute_pipeline306.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndexed(3);
    device30.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2002.end();
    render_pass_encoder2021.popDebugGroup();
    device50.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2002.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    const command_buffer100 = command_encoder100.finish();
    device50.queue.submit([]);
}