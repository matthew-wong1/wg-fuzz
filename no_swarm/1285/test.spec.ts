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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.destroy();
    
    const array0 = new Float32Array([1.0, 0.0, -0.75, 0.75, -0.25, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, -1.0, 0.5, -0.25, -0.25, -0.75, -1.0, -1.0, -0.75, 0.75, 0.75, 1.0, 0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.25, 0.5, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, 0.25, -0.5, 0.5, 0.5, 0.75, -0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 0.5, 0.5, 0.5, 0.75, 0.5, -0.5, 0.5, -0.5, 0.75, 0.0, -0.25, 0.0, 0.25, 1.0, 0.25, -0.75, 0.25, -0.75, 0.75, -0.5, -0.75, -0.25, 0.25, 0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 0.5, -1.0, 1.0, -0.75, -0.25, 0.75, 1.0, -0.5, -0.75, -0.5, 0.0, -0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array1 = new Float32Array([0.75, 0.5, -0.75, -1.0, 1.0, -0.75, -1.0, 0.5, -0.5, -0.25, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, -0.5, -0.25, 0.0, 1.0, -0.25, 0.5, 0.5, -0.25, 1.0, -0.25, -1.0, 1.0, 0.0, 1.0, 0.25, -0.5, -1.0, -0.5, -0.25, 1.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.5, 0.0, -0.25, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, 0.0, -0.25, -0.25, -1.0, 0.75, 0.5, -0.5, -0.75, -1.0, -0.25, 0.5, 0.0, 0.25, -1.0, -0.75, 1.0, 0.5, 0.0, 0.0, -0.75, 0.0, -1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.0, -0.25, 0.5, -0.5, 1.0, 1.0, -1.0, 0.0, -0.75, -0.5, 0.0, 0.5, -0.25, 0.75, -0.25, -0.25, 1.0, -0.25, 0.5, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array2 = new Float32Array([-0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.0, 0.25, 1.0, 0.5, -0.75, 0.25, -0.5, -0.25, -0.75, 0.0, 1.0, 0.75, 0.25, 1.0, 0.75, 0.5, 0.25, -0.5, 0.25, -1.0, -0.25, -0.75, -0.25, -1.0, 0.75, 0.25, -0.5, 0.5, 0.75, -0.75, -0.25, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, 1.0, -1.0, 0.5, -1.0, -0.5, 1.0, -1.0, 0.25, 0.0, 0.25, 0.0, -0.75, 0.0, -1.0, 0.75, 0.75, -0.25, 1.0, 0.25, -0.5, 0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, -0.25, -0.5, -0.5, 0.5, 0.75, -0.5, -0.75, -0.5, 0.0, 0.75, 0.25, 0.0, 1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.25, -0.5, 0.25, -0.5, 0.0, -1.0, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array3 = new Float32Array([0.0, -0.25, 0.0, 0.75, -0.75, 0.75, 1.0, 1.0, 1.0, 0.0, 1.0, -0.75, -0.75, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, 0.0, -0.25, -1.0, 0.5, -0.75, -0.75, 0.75, 0.5, 1.0, 0.0, -0.5, 0.0, 0.5, 0.0, -0.5, -0.25, 0.0, -1.0, 0.25, -0.75, -0.5, 0.75, 0.25, -0.75, -1.0, 1.0, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, -0.75, 0.25, 0.75, -1.0, 0.25, 0.0, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, -1.0, 0.75, 0.75, 0.75, 0.0, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 0.5, 0.25, -0.5, -0.75, -0.25, -0.25, 0.5, -0.25, -1.0, 1.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.25, 0.75, -0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture100.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    
    
    device30.destroy();
    
    
    
    
    
    const array4 = new Float32Array([-1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 0.25, -1.0, -1.0, 0.5, -0.25, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, -0.5, -1.0, 1.0, -0.5, 0.25, -1.0, -0.25, 0.5, -0.25, -0.5, -0.75, -0.25, -1.0, 0.25, -0.75, 0.5, -0.75, -0.75, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -0.75, -0.5, 1.0, 0.0, 0.75, -1.0, -0.75, 1.0, -0.25, -0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 1.0, 0.5, 0.75, -0.25, 0.75, 1.0, 0.5, -0.75, 1.0, 0.5, 0.0, 0.5, -0.25, -0.75, -0.75, 0.25, 0.5, -0.75, 1.0, -1.0, -0.5, -1.0, -0.25, 0.25, -0.25, -0.5, 0.5, -0.25, 0.5, -0.5, 0.75, 0.75, 0.0, -0.25, -1.0, 0.75, -0.25, 1.0, 0.25, -1.0, 0.75, -0.5, 0.75, ]);
    
    const array5 = new Float32Array([-1.0, 1.0, 0.0, 0.0, -0.25, 0.0, 0.75, 0.0, -0.5, 0.0, -0.75, 1.0, 0.25, -1.0, -0.75, -0.25, 0.75, 0.5, -0.75, 0.75, 0.0, 1.0, -0.75, -0.75, -0.75, -1.0, 1.0, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, -0.25, 0.0, -0.5, -0.5, -0.5, -0.5, 0.25, -0.75, 0.75, 0.5, 1.0, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, -1.0, 0.5, 0.5, -0.25, 0.25, -0.25, 1.0, 0.5, 0.75, 0.5, -0.75, -0.25, -1.0, -1.0, -0.5, 0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -0.5, 0.25, 0.75, 1.0, -0.75, -1.0, -0.25, -0.75, -0.25, -0.25, 0.0, 1.0, 1.0, 0.25, -0.25, -0.75, 1.0, -0.25, 0.75, -0.25, -0.5, -1.0, -0.5, ]);
    
    const array6 = new Float32Array([0.75, -1.0, -0.25, 1.0, -0.75, 0.5, -1.0, 0.75, 1.0, 0.75, -0.25, 0.5, -0.25, 0.0, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 0.5, -1.0, -0.25, 0.5, 0.25, 1.0, 0.5, 1.0, -0.5, -0.5, 0.0, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, 0.0, 1.0, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, 1.0, 0.5, 0.25, -0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 0.25, -0.5, 0.75, 0.25, 1.0, 0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.25, -0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 0.75, 0.25, 0.25, -0.5, -0.25, 0.25, 1.0, 1.0, 0.25, 1.0, -0.25, -0.25, 0.5, 0.75, 0.75, -0.5, 0.0, 1.0, -1.0, -0.5, 0.0, -0.75, -1.0, 0.25, -0.75, -0.5, 0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.pushErrorScope("validation");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device30.destroy();
    
    
    
    const array7 = new Float32Array([0.5, -1.0, -0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, -0.5, 0.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.75, 0.25, 0.0, 0.75, -0.5, -0.5, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, -0.25, 0.75, -0.75, 0.75, -0.5, 0.5, 1.0, 0.25, -0.5, -0.75, 0.75, -1.0, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.25, 0.75, 0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -0.75, -1.0, -0.5, -0.25, -0.75, -0.5, -0.5, -1.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.25, 0.0, -0.25, 0.25, 0.0, 1.0, 0.25, -0.25, 0.0, 1.0, -0.25, -0.5, 0.25, -0.5, -0.75, ]);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer200.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    query201.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const array8 = new Float32Array([-0.25, -1.0, -0.25, 1.0, 0.75, 0.5, 0.75, 0.5, -1.0, 0.5, 0.5, -0.75, 0.25, -1.0, 1.0, 0.75, 0.75, 0.5, -0.5, 0.75, 0.75, 0.5, 1.0, 0.5, 0.25, 1.0, 1.0, -0.75, -1.0, 0.5, 0.75, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, 1.0, -0.5, 0.5, 0.0, 1.0, -0.5, -0.75, 0.5, 0.0, -1.0, 0.5, -0.5, 0.75, 0.0, 0.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.75, 0.75, -0.5, 0.75, -1.0, -0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 0.25, -1.0, 1.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 1.0, -0.25, -0.5, -0.25, -0.25, 1.0, -0.25, 0.5, -1.0, 0.75, 0.0, -1.0, 0.75, -0.25, 0.75, 0.5, 0.0, -1.0, 0.25, -0.75, 0.75, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const array9 = new Float32Array([-1.0, 0.0, -0.25, -0.25, 0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 0.0, 0.5, 0.0, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, -0.75, -0.5, -0.75, 1.0, 0.0, -1.0, -0.5, 0.0, -0.5, -0.75, -0.75, 0.0, -1.0, 0.5, -0.25, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -0.75, -0.5, -0.5, -0.5, -1.0, 0.75, 0.0, 0.25, 0.25, 0.5, -1.0, 0.75, -1.0, -0.25, -0.25, -0.5, -1.0, -1.0, 0.0, -0.25, -0.5, 0.5, 1.0, 1.0, 0.25, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, 0.75, 0.0, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, 0.0, 0.0, 1.0, -0.75, -0.75, -0.75, 0.0, -0.25, -0.25, 0.0, 0.5, 0.5, 0.5, -0.25, -0.25, 0.0, -0.75, 0.25, -0.75, 0.75, 0.25, ]);
    
    render_bundle_encoder202.popDebugGroup();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query201.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query200.destroy()
    
    const array10 = new Float32Array([-0.5, 0.75, 0.0, -0.5, 0.0, 0.25, -0.75, -0.25, -0.25, 0.5, -0.25, 0.75, 1.0, 0.5, 0.75, -0.75, -0.75, -1.0, 0.5, 0.75, 0.5, 0.75, 0.0, -0.75, -0.5, 0.0, 1.0, -0.25, -0.75, -1.0, -0.5, 0.0, -0.75, -0.5, -1.0, -0.5, -1.0, 0.5, -0.25, 1.0, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, -0.25, 1.0, 1.0, 0.25, 0.5, -0.5, 0.25, 0.25, -1.0, 0.0, 0.75, 0.0, 1.0, 0.75, 0.0, -1.0, -0.75, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, 0.25, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, 1.0, 0.5, 0.0, 1.0, -0.5, 1.0, 1.0, -0.25, 1.0, -0.5, 0.25, 1.0, -1.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.5, -0.75, -0.75, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device50.destroy();
    device20.pushErrorScope("out-of-memory");
    device40.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    
    texture202.destroy();
    
    query201.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    query201.destroy()
    query400.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture200.destroy();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array11 = new Float32Array([-0.5, 1.0, 0.25, -0.75, 0.5, -0.25, -0.75, 0.0, -0.25, 0.25, 0.5, -0.75, -1.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, -0.75, -0.5, -0.5, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, -0.75, 0.75, -0.5, -0.5, -0.5, 0.0, -1.0, -0.5, 1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 1.0, -0.25, -1.0, 1.0, 1.0, 0.25, 0.75, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 0.75, 1.0, 1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 0.0, -0.25, 0.5, -0.75, 0.5, -0.5, -0.5, -0.5, -1.0, 0.0, -0.5, -0.75, 1.0, 0.0, -1.0, -1.0, 1.0, 1.0, -0.75, 1.0, 1.0, -0.25, 0.25, -1.0, 0.5, -0.5, 0.5, -1.0, -0.75, 0.5, 0.75, 0.0, 0.75, 0.5, ]);
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device50.destroy();
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3004,
            },
        ],
        occlusionQuerySet: query300
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query201.destroy()
    query000.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder200.clearBuffer(buffer202);
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.popDebugGroup();
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    command_encoder202.copyBufferToBuffer(
        buffer200,
        0,
        buffer202,
        0,
        400
    );
    
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    buffer202.destroy()
    buffer201.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    device10.destroy();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device10.queue.submit([]);
    render_pass_encoder2020.setStencilReference(1);
    
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer205, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer205, 0);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    device20.pushErrorScope("out-of-memory");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture201.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query200
    });
    texture203.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_pass_encoder2021.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder3000.beginOcclusionQuery(0)
    
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_pass_encoder2020.executeBundles([])
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    buffer204.destroy()
    
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    device10.pushErrorScope("internal");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    query202.destroy()
    render_bundle_encoder202.popDebugGroup();
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.executeBundles([render_bundle_encoder202, ])
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    buffer000.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2011.beginOcclusionQuery(0)
    render_pass_encoder2001.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline203);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device50.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder400.setPipeline(render_pipeline403);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    texture200.destroy();
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder2021.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query200.destroy()
    device40.destroy();
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer601.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2011.executeBundles([render_bundle_encoder200, ])
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    buffer202.destroy()
    render_pass_encoder2022.pushDebugGroup("group_marker");
    
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
    
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder2021.endOcclusionQuery()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    render_pass_encoder3000.executeBundles([])
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    render_pass_encoder2001.beginOcclusionQuery(0)
    query203.destroy()
    render_pass_encoder2020.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    render_pass_encoder2001.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2020.setStencilReference(1);
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    
    
    buffer205.destroy()
    render_pass_encoder2022.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2022.setStencilReference(1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query201
    });
    const array12 = new Float32Array([-0.5, -1.0, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.5, 0.0, 0.25, -0.75, 0.5, -0.75, 0.25, 0.75, 0.5, 0.5, 0.75, 0.25, -0.25, 0.25, 0.5, 0.5, 0.75, -0.75, -0.5, -0.5, -1.0, 0.75, -1.0, 0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.5, 1.0, -1.0, -0.5, 0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 1.0, -0.5, -0.5, 1.0, 0.0, -0.25, 0.25, -0.25, -0.25, -0.75, 0.75, 0.75, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.5, 1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 0.5, -0.75, -0.75, 0.5, 0.25, 0.0, 0.5, 0.5, 0.75, 0.25, 0.0, 0.5, 0.5, 0.25, 0.75, 1.0, 0.25, 0.75, 1.0, -0.75, 1.0, ]);
    render_pass_encoder2022.popDebugGroup();
    device20.queue.writeBuffer(buffer206, 0, array12, 0, array12.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device80.destroy();
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2020.executeBundles([])
    
    device20.queue.writeBuffer(buffer206, 0, array10, 0, array10.length);
    render_pass_encoder2022.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.popDebugGroup();
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder6000.setPipeline(render_pipeline600);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([]);
    const command_buffer202 = command_encoder202.finish();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer209, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder6000.setVertexBuffer(0, buffer602);
    render_pass_encoder2000.popDebugGroup();
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder6000.drawIndirect(buffer600, 0);
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder6000.end();
    const command_buffer000 = command_encoder000.finish();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2021.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2022.endOcclusionQuery()
    render_pass_encoder6000.drawIndirect(buffer603, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder6000.drawIndirect(buffer600, 0);
    compute_pass_encoder2020.popDebugGroup()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2012, 0);
    render_pass_encoder2001.popDebugGroup();
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder6000.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.endOcclusionQuery()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2015, 0);
    device20.queue.submit([]);
    device20.queue.submit([]);
}