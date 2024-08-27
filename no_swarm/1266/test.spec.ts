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
    const array0 = new Float32Array([-1.0, -0.25, -0.75, -0.75, -1.0, 1.0, -0.75, -0.75, 0.75, -1.0, -0.5, -0.75, -0.5, 1.0, -0.75, 0.75, 0.0, 1.0, 0.75, -0.5, -0.5, -0.75, 0.0, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 0.75, -1.0, 0.5, 0.0, 0.0, 0.0, 0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.75, 0.0, 0.0, -0.25, 0.75, -0.25, -1.0, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, -0.5, 0.25, -0.75, -0.25, 0.75, 0.75, 0.0, 1.0, 0.25, 1.0, 0.5, 0.5, 0.5, -0.25, 0.25, 0.25, 1.0, -0.25, -0.25, -1.0, 0.0, 0.5, 0.75, 0.75, 0.5, -0.75, -1.0, 0.0, 0.25, -0.25, -0.25, -1.0, 1.0, 0.25, -0.75, 1.0, -1.0, 1.0, -0.25, 0.75, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.0, -0.25, 0.5, 0.75, 0.25, 0.5, 0.25, 0.0, 1.0, -0.5, 0.5, 0.75, -0.75, -0.5, 0.75, -1.0, -0.25, -0.25, 1.0, 0.25, 0.75, -1.0, -0.5, 0.0, 0.75, 1.0, -0.5, 0.75, 0.0, -0.75, -1.0, -0.75, 0.75, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, 0.5, -0.75, 0.25, 0.5, 0.25, 0.25, 1.0, -0.5, -0.25, 0.0, 0.75, 1.0, 0.25, -0.5, -0.25, 0.5, 0.0, -0.75, -0.5, 0.0, 0.0, 0.75, 0.0, 0.75, -1.0, -0.25, 1.0, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.25, -0.5, 0.5, -0.75, 0.5, 0.75, 0.0, 0.0, -1.0, 1.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.25, -1.0, -1.0, 0.75, 0.0, 1.0, 0.75, 0.25, 0.25, -1.0, 0.25, 0.0, 1.0, ]);
    
    
    
    
    
    
    
    const array2 = new Float32Array([0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 0.5, -1.0, 0.0, -0.25, 1.0, 0.75, 0.25, 0.25, -0.75, 1.0, -0.75, 1.0, -0.75, 0.75, -1.0, 0.25, 0.5, 0.0, 1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.5, -0.25, 1.0, 0.5, 0.0, -1.0, 0.25, -0.75, 0.75, 1.0, 1.0, -0.75, 0.25, -1.0, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 0.75, -1.0, -1.0, 0.0, 0.25, 1.0, 1.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.75, 0.25, 0.75, 0.0, 0.0, -0.25, 0.75, 1.0, -0.75, -0.75, -0.5, 0.5, 0.75, -0.5, -1.0, 0.5, 0.75, 1.0, -1.0, -0.5, 1.0, -0.5, 0.25, 0.25, 0.75, 1.0, -0.25, -0.5, -0.25, 1.0, 0.25, 0.5, 0.5, -0.5, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    const array3 = new Float32Array([0.5, -0.75, -1.0, 0.5, 1.0, -1.0, 0.0, -0.75, 0.0, 1.0, 0.0, -0.75, 0.5, 0.75, 1.0, 1.0, 1.0, 0.5, 0.25, 0.5, 0.0, -0.25, -0.25, 0.75, 0.25, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.25, 0.0, 0.25, 0.0, -0.5, -0.25, 0.25, 1.0, -0.5, -0.5, 0.75, 0.25, -0.5, -1.0, 0.5, 0.0, 0.0, 1.0, 0.5, 0.0, 1.0, -0.5, -0.75, -0.75, -0.75, 0.5, -0.25, 0.5, -1.0, -0.75, 0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 0.0, -0.75, 0.25, -0.25, 0.0, -0.75, 0.25, -0.25, -0.25, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 1.0, -0.25, 0.5, -1.0, 0.5, -1.0, 0.75, -0.25, -0.5, -0.75, -0.25, -0.25, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    buffer000.destroy()
    query001.destroy()
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
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture000.destroy();
    
    device00.destroy();
    
    
    
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
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
        layout: render_pipeline001.getBindGroupLayout(0),
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
    
    
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.25, 0.0, -0.5, -0.75, 0.5, 0.25, 1.0, 0.5, 1.0, 0.0, -0.5, 0.75, -0.75, 0.0, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, -0.75, 0.5, 0.0, 0.25, -1.0, -0.25, -0.75, 0.5, 0.75, 0.75, -0.5, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, -0.25, -1.0, 0.0, 1.0, -0.75, -1.0, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 0.75, 0.5, 0.25, 1.0, 0.75, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, -0.25, 1.0, 0.0, -0.75, 0.5, 1.0, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, 0.25, -0.5, -1.0, 0.75, -1.0, -0.5, -0.5, -0.5, -0.25, 0.25, 0.75, -0.25, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, -0.5, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, 0.5, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    
    command_encoder100.popDebugGroup()
    command_encoder100.insertDebugMarker("mymarker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 0.5, 0.75, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -0.25, 1.0, -0.25, -0.75, -0.25, -0.25, -0.5, -1.0, 0.25, -0.5, -0.75, -0.5, 0.25, 0.25, -0.75, -0.25, -0.5, 0.5, -0.5, 0.75, -0.5, 0.5, 1.0, -0.5, -0.25, -1.0, 0.5, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, 0.25, 0.0, -0.25, -0.75, 1.0, 0.75, -0.75, 0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.25, -0.75, 0.0, 0.0, 0.75, -0.5, -0.75, -1.0, -0.5, -0.5, 0.5, 0.0, -0.25, -1.0, 1.0, -1.0, -0.5, -0.75, 0.75, 1.0, 0.0, 0.25, 0.5, -0.75, 0.75, 0.0, -1.0, -0.75, 0.75, -1.0, -0.5, 0.75, -0.25, -0.75, -0.5, -0.25, 0.5, 0.5, -0.5, ]);
    
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    query102.destroy()
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device10.pushErrorScope("validation");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    texture100.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    query103.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
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
    command_encoder101.insertDebugMarker("mymarker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1000.setPipeline(render_pipeline101);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    
    buffer001.destroy()
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
    command_encoder100.clearBuffer(buffer100);
    render_pass_encoder1020.setPipeline(render_pipeline102);
    query100.destroy()
    query103.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query105.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture102.destroy();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder1010.executeBundles([])
    
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    texture200.destroy();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder000.insertDebugMarker("mymarker");
    device10.pushErrorScope("validation");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query106.destroy()
    device20.destroy();
    
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    query105.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query103.destroy()
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query104
    });
    query105.destroy()
    const array6 = new Float32Array([0.25, -0.25, 0.0, 0.5, -1.0, 0.0, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, 0.0, 0.5, -1.0, 0.75, 0.5, 0.75, 0.75, -0.5, -0.25, -0.5, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -0.75, 0.5, 0.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.25, 0.5, 0.25, -1.0, 0.5, 0.5, 0.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.75, 0.75, -0.75, -0.5, -1.0, -0.5, -1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, 0.0, 0.75, 0.75, 0.75, 0.25, -0.75, 0.0, 0.25, 0.5, -0.25, 1.0, 0.75, 0.0, 1.0, 0.5, -1.0, -1.0, -1.0, -0.75, -0.25, 0.25, 0.75, 0.75, ]);
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1011.setPipeline(render_pipeline101);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("validation");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    buffer103.destroy()
    render_pass_encoder1011.setStencilReference(1);
    
    buffer100.destroy()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    query100.destroy()
    render_pass_encoder1030.setPipeline(render_pipeline103);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query104
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    query103.destroy()
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    query103.destroy()
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    query101.destroy()
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1011.setBindGroup(0, bind_group102);
    render_pass_encoder1000.setStencilReference(1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1040.setPipeline(render_pipeline101);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1011.beginOcclusionQuery(0)
    query105.destroy()
    device10.queue.submit([]);
    render_pass_encoder1041.setPipeline(render_pipeline101);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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
    render_pass_encoder1011.popDebugGroup();
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    command_encoder102.copyTextureToTexture(
        {
            texture: texture102
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1031.setPipeline(render_pipeline101);
    render_pass_encoder1031.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder103.pushDebugGroup("mygroupmarker")
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    render_pass_encoder1020.endOcclusionQuery()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1000.setStencilReference(1);
    texture101.destroy();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    buffer105.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1040.setStencilReference(1);
    
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer104,
        0
    )
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    render_pass_encoder1032.setStencilReference(1);
    
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer107,
        0
    )
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder105.copyBufferToTexture(
        {
            buffer: buffer104
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    buffer100.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    render_pass_encoder1041.insertDebugMarker("marker");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
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
    render_pass_encoder1011.setVertexBuffer(0, buffer103);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    const render_pass_encoder1033 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer104.destroy()
    render_pass_encoder1020.draw(3);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    buffer106.destroy()
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1032.pushDebugGroup("group_marker");
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_pass_encoder1033.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1030.insertDebugMarker("marker");
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder1050.setPipeline(render_pipeline101);
    
    
    render_pass_encoder1033.setPipeline(render_pipeline101);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1032.setPipeline(render_pipeline103);
    render_pass_encoder1020.end();
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    
    
    command_encoder104.resolveQuerySet(
        query105,
        0,
        32,
        buffer109,
        0
    )
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1011.popDebugGroup();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1011.end();
    query103.destroy()
    
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1031.insertDebugMarker("marker");
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    render_pass_encoder1000.setVertexBuffer(0, buffer106);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder1033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer1011,
        0,
        400
    );
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    buffer108.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1032.setStencilReference(1);
    
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
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_pass_encoder1021.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer1011,
        0
    )
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    buffer300.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1040.setStencilReference(1);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1033.setBindGroup(0, bind_group107);
    query104.destroy()
    
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
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1032.setBindGroup(0, bind_group108);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: query107
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1033.setStencilReference(1);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    command_encoder104.insertDebugMarker("mymarker");
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    command_encoder101.pushDebugGroup("mygroupmarker")
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
    query107.destroy()
    
    render_bundle_encoder100.setVertexBuffer(0, buffer1016);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.popDebugGroup();
    query107.destroy()
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    buffer1014.destroy()
    render_pass_encoder1033.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1033.popDebugGroup();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    render_pass_encoder1021.setPipeline(render_pipeline106);
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.setPipeline(render_pipeline108);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    device30.queue.submit([]);
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
    
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer1010, 0, array5, 0, array5.length);
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1051.setPipeline(render_pipeline104);
    render_pass_encoder1033.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    query105.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder100.draw(3);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder105.resolveQuerySet(
        query107,
        0,
        32,
        buffer106,
        0
    )
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query103.destroy()
    
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder100.finish();
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1033.setVertexBuffer(0, buffer1016);
    render_pass_encoder1033.drawIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group109);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1010);
    render_pass_encoder1051.setVertexBuffer(0, buffer1014);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.setVertexBuffer(0, buffer102);
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1032.setVertexBuffer(0, buffer102);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1032.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1032.drawIndirect(buffer102, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1016);
    render_pass_encoder1030.setVertexBuffer(0, buffer107);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1032.end();
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder1033.end();
    command_encoder101.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1011);
    render_pass_encoder1041.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group1012);
    render_pass_encoder1030.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.setVertexBuffer(0, buffer101);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1001.setVertexBuffer(0, buffer1023);
    render_pass_encoder1030.drawIndexed(3);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1033.drawIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1021.end();
    command_encoder103.popDebugGroup()
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1013);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1041.setVertexBuffer(0, buffer1018);
    render_pass_encoder1021.draw(3);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1014);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1050.setVertexBuffer(0, buffer1013);
    render_pass_encoder1041.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1032.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1023, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1001.popDebugGroup();
    device40.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1041.end();
    render_pass_encoder1032.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1011.end();
    render_pass_encoder1041.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1033.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    device30.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1033.drawIndexed(3);
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1033.drawIndexed(3);
    render_pass_encoder1032.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1032.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1032.drawIndirect(buffer1013, 0);
    render_pass_encoder1032.setIndexBuffer(buffer1022, "uint16");
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1032.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1033.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1032.end();
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndexed(3);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1032.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1000.draw(3);
    device30.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1032.drawIndexedIndirect(buffer103, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1041.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1051.end();
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1031.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1032.drawIndirect(buffer1010, 0);
    device40.queue.submit([]);
    render_pass_encoder1033.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1025, 0);
    render_pass_encoder1033.draw(3);
    render_pass_encoder1033.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1033.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1033.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1011.end();
    device40.queue.submit([]);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1033.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1033.end();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1033.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1033.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1050.end();
    render_pass_encoder1010.end();
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1033.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer106, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1041.drawIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1032.end();
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1033.drawIndirect(buffer1027, 0);
    render_pass_encoder1051.drawIndirect(buffer108, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1032.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1033.drawIndexed(3);
    render_pass_encoder1032.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1033.drawIndirect(buffer1011, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1033.drawIndirect(buffer108, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1051.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1032.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device30.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1033.drawIndirect(buffer1027, 0);
    render_pass_encoder1032.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1000.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1010.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder1032.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1032.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1033.setIndexBuffer(buffer1026, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1032.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1032.drawIndexed(3);
    render_pass_encoder1011.draw(3);
    command_encoder000.popDebugGroup()
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1032.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1032.end();
    device40.queue.submit([]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1033.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1033.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1033.end();
    render_pass_encoder1032.end();
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1032.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1033.drawIndirect(buffer1028, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1033.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1032.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1041.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1032.end();
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder1033.end();
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1031.end();
    render_pass_encoder1051.drawIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1032.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1041.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1033.drawIndirect(buffer104, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1032.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1033.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1032.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1033.drawIndirect(buffer106, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1032.drawIndirect(buffer105, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1032.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1030.end();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1033.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1033.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1033.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1032.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1051.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1033.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1033.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1033.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1033.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1033.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1051.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1033.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1032.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1032.drawIndirect(buffer1026, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1032.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1041.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1032.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1026, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1033.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1032.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1032.drawIndirect(buffer1027, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    device30.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1032.end();
    render_pass_encoder1041.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1032.draw(3);
    render_pass_encoder1033.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1033.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1032.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.draw(3);
    device30.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1032.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1032.end();
    render_pass_encoder1033.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1032.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
}