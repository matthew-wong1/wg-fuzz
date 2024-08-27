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
    const array0 = new Float32Array([-1.0, 0.5, 0.75, 0.25, -1.0, 0.25, -1.0, -0.75, -0.5, 1.0, -0.75, 1.0, -0.75, -0.25, 0.0, -1.0, 0.25, 0.25, -0.25, 0.75, -0.25, 0.5, -0.5, -1.0, 0.25, -1.0, 1.0, -1.0, -0.25, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 0.5, -1.0, 0.25, -0.25, -0.5, 0.75, 0.0, -0.5, -0.25, 0.5, -0.75, 0.75, 0.25, 1.0, 0.5, 0.5, -0.5, 0.5, -0.75, 1.0, 0.5, 1.0, 0.25, -0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 0.0, 0.25, 0.25, -1.0, 0.0, 0.25, 0.75, 0.75, -1.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -0.25, -0.75, -0.5, -1.0, 1.0, 0.5, -0.25, ]);
    
    const array1 = new Float32Array([0.75, -0.25, 0.25, 0.75, 1.0, -0.5, 0.75, -0.5, -0.25, -1.0, -0.75, 0.75, 1.0, 0.75, -0.5, 0.25, -0.25, -0.25, 1.0, -1.0, 0.25, 0.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.75, 0.75, -0.25, 0.75, 0.25, 0.0, 0.25, -0.75, -0.5, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.5, -0.25, 0.75, 0.75, -1.0, 0.0, 0.25, -1.0, -0.25, -0.25, -0.25, 0.75, 0.0, 0.0, -0.5, 0.75, 0.5, 1.0, 0.5, -1.0, -1.0, 0.0, -1.0, -0.75, 0.25, 0.25, -0.25, -0.25, -1.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.0, 0.0, 1.0, -1.0, -0.75, 0.5, -1.0, 0.5, 0.5, 0.75, 0.0, -0.25, 0.5, -0.75, -0.5, -1.0, 0.0, 0.25, -0.25, -1.0, -0.5, 0.75, 0.25, -0.5, ]);
    
    const array2 = new Float32Array([-0.5, 1.0, 1.0, 1.0, -1.0, 0.0, 0.5, -0.5, 1.0, 0.25, -0.75, 1.0, -1.0, -1.0, 0.75, 0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.75, 0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 0.25, -0.25, 1.0, -0.5, -0.75, 0.75, -0.75, -0.75, 1.0, -0.75, 1.0, -0.5, 1.0, 0.75, -0.75, 0.5, -0.25, -1.0, -0.25, -1.0, -0.5, -1.0, 0.5, -1.0, -0.75, -0.5, -0.75, 0.25, -0.5, 0.25, -0.5, 0.75, -0.5, -0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.75, -0.5, -1.0, 0.0, 0.25, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, 0.25, 0.75, -1.0, -0.25, -0.75, 0.75, -1.0, -0.25, 0.25, 0.75, 0.75, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.25, 1.0, -0.75, 1.0, -0.5, -0.5, -0.5, 1.0, -1.0, -0.25, 1.0, 0.25, -1.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.25, -1.0, -0.75, -0.5, 0.25, 0.75, 1.0, 0.75, -0.75, -0.25, 0.5, -0.75, 0.25, -1.0, 0.5, 0.5, 0.5, 0.25, 0.0, -0.25, 0.75, -1.0, 1.0, 0.75, 0.5, -1.0, 0.75, -0.25, -0.5, -0.25, 0.75, -1.0, -0.25, -0.25, -1.0, 1.0, 1.0, 0.0, -0.25, -0.5, 0.25, 1.0, -0.5, 1.0, -0.5, 0.5, 0.5, 0.0, -0.5, 0.5, -0.75, 0.25, 0.5, -0.75, -1.0, 0.75, 0.75, 0.25, 0.75, 0.75, -0.75, -1.0, -1.0, 0.25, -0.25, -1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.5, 0.75, 0.0, 0.75, 1.0, 1.0, 1.0, 0.25, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([0.5, 0.0, 1.0, -1.0, -1.0, -0.5, -1.0, -0.5, 1.0, -1.0, -0.5, 0.75, 0.25, 0.0, -0.25, 0.0, 1.0, -0.25, 0.25, -0.25, -0.25, 0.0, -0.25, -0.75, 0.5, 0.0, 1.0, -1.0, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 0.25, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, 0.75, 0.25, -1.0, -0.25, -1.0, -0.5, 0.25, -0.25, -1.0, 0.25, -0.75, -0.75, 0.75, -0.5, 1.0, 0.0, 0.0, -0.25, 1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, -1.0, -0.25, 0.25, -1.0, 0.0, 0.25, 0.25, -0.75, 0.5, -0.25, 0.25, 0.5, -1.0, 0.5, -0.75, 0.5, 1.0, 0.75, 0.5, 0.75, -0.75, 0.5, 1.0, 0.5, -0.5, 0.5, -0.75, -1.0, -1.0, ]);
    
    const command_buffer000 = command_encoder000.finish();
    const array5 = new Float32Array([-0.25, -0.75, 0.25, -0.25, 0.0, 0.75, -0.75, -0.5, -0.5, -0.25, -0.25, -1.0, 1.0, 0.25, -0.5, 1.0, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -1.0, 0.5, 0.25, 0.0, -1.0, 0.0, 0.0, 0.75, 0.75, -0.5, -0.25, -0.75, 0.25, 0.25, -0.5, 0.5, 0.25, 0.75, 1.0, -0.5, 0.0, -0.75, 1.0, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, 0.0, -1.0, 0.0, 0.75, -0.5, 0.75, 0.25, 0.75, 0.75, -0.25, 0.0, 0.75, -0.5, 0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.0, -1.0, 0.0, 0.5, -0.5, 1.0, -0.5, 1.0, 0.0, 0.75, 1.0, -0.25, -0.25, -0.25, 0.25, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, 0.5, 0.0, -0.5, 0.75, 1.0, -0.5, -0.25, 0.25, 0.5, ]);
    
    buffer000.destroy()
    device00.queue.submit([command_buffer000, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array6 = new Float32Array([0.0, 0.75, 0.0, -0.25, -1.0, -1.0, 0.25, -0.75, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.75, 0.5, -1.0, 0.0, -0.25, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 1.0, -0.25, -1.0, 0.0, 0.25, -0.75, -0.25, 0.75, -0.75, 1.0, -0.5, 0.25, -1.0, -0.5, 0.75, 0.75, 0.25, -1.0, -1.0, -0.5, 0.5, 0.25, 0.75, -0.75, 1.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, 0.5, 1.0, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, 0.25, 0.5, -0.25, -0.25, -0.25, 0.5, -0.25, -1.0, 0.25, -0.25, -1.0, -0.25, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, -0.25, 0.0, 0.5, -0.75, 0.0, -0.75, ]);
    device00.pushErrorScope("internal");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer003.destroy()
    query000.destroy()
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    device00.pushErrorScope("internal");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer002.destroy()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
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
    const command_buffer002 = command_encoder002.finish();
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
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
    buffer004.destroy()
    const array7 = new Float32Array([-1.0, 0.0, 1.0, -0.5, 0.75, -1.0, 1.0, -0.75, 1.0, 1.0, -0.5, -0.25, -0.75, 1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.25, 1.0, -0.25, 0.5, 0.5, -0.75, 0.0, 0.75, -0.5, -0.5, 0.5, 0.75, -0.5, -0.75, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, 0.75, 0.5, 1.0, 0.25, 0.75, -0.25, -0.25, 0.0, 1.0, -0.5, 1.0, -0.75, -0.75, 1.0, -1.0, 0.25, 0.75, -0.75, -1.0, 0.25, 1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.25, 0.5, 0.0, -0.25, -0.5, 0.75, 0.5, 0.0, -0.5, 1.0, -0.25, 0.25, 0.75, -1.0, 0.5, 0.0, -1.0, 0.75, 0.0, 0.0, 0.25, 0.25, 0.75, -0.5, 0.0, -0.5, 0.75, -0.75, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer001.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.setPipeline(render_pipeline002);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    query000.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query001 = device00.createQuerySet({
        label: "query001",
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
    
    command_encoder001.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder002.setPipeline(render_pipeline002);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder001.popDebugGroup();
    command_encoder003.insertDebugMarker("mymarker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    buffer005.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    texture000.destroy();
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
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
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    buffer009.destroy()
    const array8 = new Float32Array([0.0, -1.0, 1.0, 0.25, 0.0, -1.0, -1.0, 0.0, 0.25, 0.25, -1.0, -0.75, -1.0, 1.0, 0.25, 0.5, 1.0, 0.25, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, -0.25, 0.75, -0.5, 0.25, 0.0, -0.25, -0.5, 1.0, -0.5, -0.25, -1.0, -1.0, 0.25, 0.25, 0.0, -0.25, -0.75, -1.0, -0.5, -0.5, 0.5, -0.75, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -1.0, -0.75, -0.25, -0.5, 0.25, -0.5, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.25, 0.75, -0.25, -0.75, -0.25, 1.0, 0.25, 1.0, -0.25, -0.75, -1.0, -0.5, 0.25, -1.0, 0.25, -0.75, -1.0, 0.75, 0.5, 1.0, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    
    
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    buffer008.destroy()
    const array9 = new Float32Array([-0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -0.75, 0.5, 0.5, 1.0, -0.5, 0.5, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -0.5, 1.0, 1.0, 0.0, 0.75, -0.25, 0.0, 0.5, 0.5, 0.5, 0.5, 1.0, -0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 0.75, -1.0, -0.5, 1.0, -1.0, 0.25, -0.75, 1.0, 0.0, 0.75, -1.0, 0.25, 1.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 1.0, 0.5, 0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 0.5, -0.25, 0.25, 0.0, 0.0, -1.0, -0.75, 1.0, 0.5, 0.5, 0.75, -1.0, -1.0, 1.0, 0.5, 0.0, -0.25, 0.5, 0.75, 0.0, 1.0, 1.0, 1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.75, -1.0, 1.0, 1.0, -1.0, ]);
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query001.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    
    
    device20.pushErrorScope("internal");
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    render_bundle_encoder002.popDebugGroup();
    query001.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    device00.queue.submit([command_buffer001, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_buffer200 = command_encoder200.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    query001.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    buffer007.destroy()
    
    
    
    query002.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    buffer006.destroy()
    
    command_encoder004.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer200, ]);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    compute_pass_encoder0040.insertDebugMarker("marker")
    buffer0010.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture203.destroy();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query000.destroy()
    texture202.destroy();
    query000.destroy()
    const array10 = new Float32Array([-0.5, -0.75, 0.5, 0.0, -1.0, 0.5, 1.0, -1.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.75, -1.0, -0.25, 0.5, 0.75, 0.75, 0.0, 0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 0.5, 1.0, 0.75, -0.75, -1.0, -0.75, -1.0, 0.0, -0.75, 0.5, 0.75, -0.75, 0.75, 1.0, 0.25, -0.25, -0.25, 1.0, 0.0, 0.75, 0.0, 0.75, 0.5, -0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 1.0, -0.25, -0.25, 1.0, -0.5, -0.75, -0.25, 1.0, 0.0, 0.75, 1.0, 1.0, -1.0, 0.75, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.25, 0.0, 0.5, -0.75, -0.25, -1.0, 1.0, 0.25, 0.25, -0.5, 0.25, 0.25, 0.5, -0.25, -0.25, 0.0, -0.75, 0.75, 0.5, -0.5, 1.0, -0.75, -0.75, 0.75, 0.5, ]);
    const command_buffer005 = command_encoder005.finish();
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    texture200.destroy();
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    query202.destroy()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    query001.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer201.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    texture201.destroy();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer0014.destroy()
    compute_pass_encoder0040.insertDebugMarker("marker")
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
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.pushErrorScope("validation");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    
    
    compute_pass_encoder0040.popDebugGroup()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.pushErrorScope("out-of-memory");
    texture001.destroy();
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0060.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.setVertexBuffer(0, buffer0015);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    
    buffer202.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    query000.destroy()
    texture301.destroy();
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    command_encoder007.pushDebugGroup("mygroupmarker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    buffer0011.destroy()
    
    const array11 = new Float32Array([-0.75, 1.0, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, 0.5, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -0.75, -1.0, -0.75, -0.5, -0.75, -0.5, 0.75, 0.5, -0.25, 1.0, 0.5, -0.75, 0.5, 0.0, -0.5, 0.5, 1.0, 1.0, 0.0, 0.75, -0.25, -0.5, -0.25, -0.5, 1.0, 0.5, 0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 1.0, -0.5, 0.5, -0.25, 1.0, -1.0, 1.0, 1.0, -0.25, 0.25, 0.75, 1.0, 0.5, -1.0, -0.25, 0.25, -1.0, -1.0, -0.5, 1.0, -0.25, -0.75, -0.5, -1.0, -0.5, 1.0, 1.0, 0.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.0, 0.75, 0.75, -0.75, 0.5, 0.25, 0.0, -1.0, -0.25, -0.25, ]);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    
    command_encoder007.insertDebugMarker("mymarker");
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer0012.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture204
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query000.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    buffer204.destroy()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder201.insertDebugMarker("mymarker");
    
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    buffer0015.destroy()
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer0015);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    
    device00.pushErrorScope("internal");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: query202
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    query202.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0060.setPipeline(compute_pipeline001);
    query001.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    render_pass_encoder3000.executeBundles([])
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    query001.destroy()
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder3000.insertDebugMarker("marker");
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
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    render_bundle_encoder001.drawIndirect(buffer0012, 0);
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    buffer207.destroy()
    
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.insertDebugMarker("marker")
    query005.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query202
    });
    render_bundle_encoder002.draw(3);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    query001.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    render_pass_encoder2010.setStencilReference(1);
    command_encoder007.insertDebugMarker("mymarker");
    query001.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    query202.destroy()
    compute_pass_encoder0060.popDebugGroup()
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2010.setPipeline(render_pipeline201);
    render_pass_encoder2020.setStencilReference(1);
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    compute_pass_encoder0030.popDebugGroup()
    command_encoder008.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    render_pass_encoder2020.executeBundles([])
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder2020.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    texture206.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer203, 0, array10, 0, array10.length);
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    query005.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    
    
    
    render_pass_encoder2020.setPipeline(render_pipeline201);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.popDebugGroup();
    
    device30.pushErrorScope("internal");
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    const texture_view2043 = texture204.createView({ label: "texture_view2043" });
    device20.queue.writeBuffer(buffer203, 0, array11, 0, array11.length);
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0080.setPipeline(compute_pipeline001);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    compute_pass_encoder0040.popDebugGroup()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.popDebugGroup();
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder3000.popDebugGroup();
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group004);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group005);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0022, 0);
    command_encoder007.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const command_buffer009 = command_encoder009.finish();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0023, 0);
    compute_pass_encoder0060.end();
    compute_pass_encoder0030.end();
    const command_buffer007 = command_encoder007.finish();
    command_encoder003.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0040.end();
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    command_encoder004.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group006);
    device00.queue.submit([command_buffer003, command_buffer009, ]);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer0026, 0);
    compute_pass_encoder0080.end();
    const command_buffer008 = command_encoder008.finish();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer008, ]);
}