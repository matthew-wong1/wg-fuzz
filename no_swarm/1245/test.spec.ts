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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const array0 = new Float32Array([0.0, -1.0, 1.0, -0.25, -0.5, -0.75, -0.5, 0.5, -0.75, -0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.75, 0.75, 0.25, -1.0, -0.5, 0.75, -0.5, -0.25, 0.25, -0.25, 0.5, 0.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.5, 0.0, 0.25, -1.0, 0.5, 1.0, -0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, 0.0, 1.0, -0.25, -1.0, 1.0, -1.0, 0.75, 0.25, -1.0, 0.5, -0.75, -0.25, 0.25, -0.75, -1.0, 0.75, 0.0, 0.25, 0.75, -0.5, 0.75, -0.25, 0.75, 0.75, -1.0, 0.75, 0.75, 0.75, -0.75, -0.5, -0.25, 0.25, -0.75, 0.25, -0.75, -1.0, -0.25, 0.0, -0.75, 0.0, 0.25, -1.0, 0.5, 0.5, 0.25, 0.0, -0.5, 0.75, 1.0, ]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    
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
    
    command_encoder000.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("internal");
    
    
    query000.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const array1 = new Float32Array([-1.0, 0.75, -0.25, 0.0, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -0.25, 0.25, -1.0, -0.25, -0.25, -0.75, -0.5, 0.75, 0.25, 0.5, -1.0, 0.5, -1.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.5, 0.0, -0.5, -0.25, 1.0, 0.5, -0.25, -1.0, 0.5, 0.25, 0.75, -1.0, 0.75, 0.25, 0.75, 0.0, 0.5, -0.5, 0.75, -0.25, 1.0, 0.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, -1.0, -1.0, -0.5, 0.0, 0.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, -0.75, -0.5, -1.0, -0.75, -0.25, 0.75, 0.25, -0.25, 0.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.75, 0.0, 1.0, -0.75, 0.75, 0.5, -0.5, 1.0, ]);
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.setPipeline(render_pipeline003);
    
    
    const array2 = new Float32Array([-0.5, 0.75, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, 0.0, 0.25, 1.0, -0.75, -0.25, 0.75, 0.75, 1.0, 1.0, -0.5, -1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -1.0, -0.75, 1.0, -1.0, 0.25, -0.75, 0.25, 1.0, -0.75, 0.25, -1.0, 0.25, -0.5, -1.0, -1.0, 0.0, -0.25, -1.0, 0.25, 0.25, -0.25, 0.5, 1.0, -0.75, -1.0, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, -0.25, 0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.0, -0.25, 1.0, 0.25, -1.0, -0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.75, 0.0, 0.0, -0.75, 1.0, 0.25, 0.5, -0.25, 1.0, 1.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    device30.queue.submit([]);
    texture200.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device30.pushErrorScope("internal");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.75, 0.75, -0.5, 0.75, 0.0, 0.0, 0.25, -0.5, -0.75, 0.0, 0.25, 1.0, 1.0, -0.25, 0.0, -0.25, -0.5, 0.75, -0.5, 0.5, -0.5, -0.5, 1.0, 0.5, 0.5, 0.25, 1.0, 0.5, -0.25, 0.0, -0.5, 0.5, 0.0, 1.0, -1.0, 0.0, -0.75, -0.5, 0.25, -1.0, 0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.75, -0.5, 0.75, -1.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.5, -0.5, -0.75, -1.0, -0.75, -1.0, -0.5, 0.75, -0.75, 0.75, -1.0, 1.0, -0.75, 0.5, 0.5, 1.0, -0.5, -0.5, -0.25, -0.25, -0.25, 0.5, 1.0, 0.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.75, -0.25, -0.5, 0.0, -0.5, 0.5, 0.25, -1.0, -1.0, -1.0, ]);
    
    texture000.destroy();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    buffer000.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder1000.setStencilReference(1);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline002);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer002.destroy()
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder1000.setStencilReference(1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.popDebugGroup()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device40.destroy();
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline002);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    device10.pushErrorScope("validation");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer001.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device00.pushErrorScope("validation");
    texture102.destroy();
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    query002.destroy()
    buffer004.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    buffer008.destroy()
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer006.destroy()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    texture101.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder100.popDebugGroup();
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.pushErrorScope("out-of-memory");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    render_pass_encoder1001.setStencilReference(1);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder3000.popDebugGroup()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    query301.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    compute_pass_encoder0000.end();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1000.executeBundles([render_bundle_encoder102, ])
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder000.clearBuffer(buffer006);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1001.beginOcclusionQuery(0)
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("out-of-memory");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query001.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer008,
        0
    )
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
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
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    query000.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    texture301.destroy();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.insertDebugMarker("marker");
    query302.destroy()
    
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    query002.destroy()
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder1000.popDebugGroup();
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_bundle_encoder000.setVertexBuffer(0, buffer008);
    render_bundle_encoder000.draw(3);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    command_encoder300.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    
    query001.destroy()
    
    
    render_bundle_encoder001.setVertexBuffer(0, buffer007);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1001.executeBundles([])
    command_encoder000.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    buffer105.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer104.destroy()
    
    render_pass_encoder1000.executeBundles([])
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    
    buffer103.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    
    query300.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.finish();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder101.popDebugGroup();
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.setPipeline(render_pipeline302);
    query004.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.setPipeline(compute_pipeline0013);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    query001.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pass_encoder6001 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6001" });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline103);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder1001.setPipeline(render_pipeline103);
    render_pass_encoder1010.setPipeline(render_pipeline102);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.setVertexBuffer(0, buffer009);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_pass_encoder0010.drawIndirect(buffer006, 0);
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group005);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    device00.queue.submit([]);
    compute_pass_encoder3000.end();
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group105);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1020.end();
    render_pass_encoder1000.setVertexBuffer(0, buffer1011);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    render_pass_encoder0000.draw(3);
    render_pass_encoder3000.setVertexBuffer(0, buffer305);
    device30.queue.submit([]);
    const command_buffer102 = command_encoder102.finish();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder1001.setVertexBuffer(0, buffer106);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1001.draw(3);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.end();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1001.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1001.end();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    command_encoder000.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0015, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1000.end();
    device60.queue.submit([]);
    render_pass_encoder3000.draw(3);
    device10.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    device70.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexed(3);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3000.end();
    device70.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    device10.queue.submit([]);
    device60.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0010.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder3000.end();
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0018, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    device30.queue.submit([]);
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1020.draw(3);
    device70.queue.submit([]);
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder0010.end();
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.end();
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3000.end();
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1000.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.end();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder6001.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder6001.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder3000.end();
    device10.queue.submit([command_buffer102, ]);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder3000.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    device70.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder3000.draw(3);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder3000.popDebugGroup();
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    render_pass_encoder1020.end();
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3015, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0033, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3016, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.draw(3);
    compute_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder0010.end();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder1001.end();
    compute_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.end();
    compute_pass_encoder3000.end();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0037, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0038, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder6001.popDebugGroup()
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0000.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder1000.drawIndexed(3);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1020.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexed(3);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0010.end();
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    device70.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0042, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3013);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3030, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer102, ]);
    device70.queue.submit([]);
    render_pass_encoder3000.drawIndirect(buffer3030, 0);
    device30.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    device70.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3032,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder0010.popDebugGroup();
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1020.popDebugGroup();
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3015);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3035, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder3000.end();
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3036, 0);
    device60.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.end();
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3016);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0000.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1010.end();
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer000, ]);
}