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
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([0.5, -0.75, 0.0, 0.75, -0.25, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, -0.75, -0.5, 1.0, -0.25, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, 0.0, 1.0, 0.5, 0.5, 0.25, -0.75, -0.75, 1.0, 0.5, 0.75, -0.5, -0.75, -0.75, 0.25, -1.0, 1.0, 0.0, -0.75, -1.0, 0.0, -0.5, -0.25, -0.5, 0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.5, 0.25, -0.5, 0.75, -0.75, -1.0, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, -0.75, 0.25, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, 0.5, -0.5, 0.5, 0.0, 1.0, 0.5, -0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 0.0, 1.0, -0.75, -0.25, -0.5, -1.0, -0.25, 0.5, -0.75, -1.0, 0.5, 0.75, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([0.25, -1.0, -0.5, -0.75, 0.25, 0.5, -0.5, 0.5, 0.25, -0.75, 0.75, 1.0, -1.0, -0.25, -0.75, -0.5, 0.75, 1.0, -0.25, 0.0, -0.25, -0.25, 0.25, 0.0, -1.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.0, -1.0, -1.0, -0.75, -0.25, 0.0, -0.25, -0.25, -1.0, -1.0, -1.0, 0.5, 0.25, -0.5, -0.75, 0.25, 1.0, 0.5, 0.25, 0.25, 0.0, -1.0, -0.5, 1.0, -0.75, 0.75, 0.25, 0.75, -0.25, -0.5, 1.0, 0.75, 0.5, 0.75, 0.5, 1.0, 0.25, -1.0, 0.25, -0.75, 0.25, -0.25, 0.0, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.75, -1.0, -1.0, 1.0, -0.25, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, 0.5, -1.0, 0.5, 0.0, 0.25, 0.0, 0.25, 0.0, -0.25, -1.0, ]);
    
    const array2 = new Float32Array([1.0, -0.5, -1.0, -0.25, 0.5, -0.25, 0.0, 1.0, -0.75, -0.5, -0.75, -0.25, 0.5, -1.0, -0.5, 0.5, -0.5, -0.75, -0.25, -1.0, 1.0, 0.0, 0.25, 0.5, 0.75, 0.0, 0.75, 0.75, 0.75, -1.0, 0.5, 0.0, -0.5, 0.5, 0.5, -0.75, -0.25, 0.25, 1.0, -0.75, -0.75, 0.0, -0.5, -0.75, 0.75, 1.0, -0.75, 0.75, -0.25, 0.5, 0.5, -0.75, 0.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.25, 0.25, -0.5, -1.0, 0.75, 0.25, -0.25, 0.0, 0.0, 0.0, 0.0, -1.0, -1.0, -0.25, 1.0, 0.0, 0.75, 0.75, 0.75, 0.75, 0.25, 1.0, -0.25, 1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 0.0, 0.5, -0.75, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.25, -0.75, 0.25, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    command_encoder000.popDebugGroup()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("validation");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer000.destroy()
    render_bundle_encoder000.popDebugGroup();
    device00.queue.submit([]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0000.setStencilReference(1);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    buffer002.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
        occlusionQuerySet: query001
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query001.destroy()
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    buffer001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0010.executeBundles([render_bundle_encoder001, ])
    command_encoder001.clearBuffer(buffer003);
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    render_pass_encoder0001.insertDebugMarker("marker");
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
    render_pass_encoder0010.setPipeline(render_pipeline001);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.beginOcclusionQuery(0)
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer003.destroy()
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    render_pass_encoder0001.setStencilReference(1);
    
    const command_buffer001 = command_encoder001.finish();
    const array3 = new Float32Array([-0.25, -1.0, -0.5, 0.0, 0.5, 0.75, 1.0, 0.5, 0.0, -1.0, 0.0, 0.25, 1.0, -0.75, -1.0, -0.5, -0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 0.75, -0.75, 0.5, -0.25, -0.5, -1.0, 0.75, -0.75, 0.0, -0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -1.0, 0.0, -0.25, -1.0, -1.0, -1.0, -0.75, -0.25, 0.75, 0.0, 1.0, -0.25, 1.0, 0.5, 1.0, -0.25, -0.25, 0.0, -0.75, 1.0, -1.0, 0.5, 0.75, -0.75, -1.0, 0.0, -0.5, -0.25, 0.0, -0.5, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, 1.0, 1.0, -0.75, 1.0, -0.25, -0.25, 0.25, 0.0, -0.75, 1.0, 0.5, -0.75, 0.5, -1.0, 0.5, -1.0, 0.0, 0.5, 0.25, 0.0, 0.75, -0.5, -0.5, -0.5, -0.25, -0.25, ]);
    render_bundle_encoder001.setPipeline(render_pipeline001);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder0001.setPipeline(render_pipeline002);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
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
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder003.setPipeline(render_pipeline000);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    
    render_bundle_encoder001.popDebugGroup();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer008.destroy()
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture000.destroy();
    buffer006.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer002);
    
    
    buffer0010.destroy()
    
    buffer009.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder003.setBindGroup(0, bind_group003);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    buffer003.destroy()
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    query000.destroy()
    texture001.destroy();
    texture002.destroy();
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder003.setVertexBuffer(0, buffer003);
    
    render_bundle_encoder003.drawIndirect(buffer000, 0);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer001, ]);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0001.insertDebugMarker("marker");
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
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    
    
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer0011
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder002.setVertexBuffer(0, buffer002);
    
    render_pass_encoder0000.endOcclusionQuery()
    command_encoder002.clearBuffer(buffer002);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder004.pushDebugGroup("group_marker");
    command_encoder002.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    render_bundle_encoder004.setPipeline(render_pipeline003);
    command_encoder002.insertDebugMarker("mymarker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setPipeline(render_pipeline006);
    
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder004.setBindGroup(0, bind_group004);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer0014.destroy()
    buffer007.destroy()
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder004.setVertexBuffer(0, buffer0010);
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer0012.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder004.popDebugGroup();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder003.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    render_bundle_encoder003.popDebugGroup();
    render_bundle_encoder004.insertDebugMarker("marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder004.setIndexBuffer(buffer000, "uint16");
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer005
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const array4 = new Float32Array([0.0, 0.5, 0.0, 1.0, 0.75, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, -0.25, 0.25, -0.25, -0.75, 0.0, 0.25, 0.5, 1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.5, 0.75, -0.25, 1.0, -0.25, -0.25, 0.75, -0.5, 1.0, -0.75, -0.25, 1.0, -0.5, 0.75, 0.0, -0.75, 1.0, 1.0, 0.5, -0.5, -0.5, 0.5, 0.5, -1.0, -1.0, -0.75, -0.25, -0.25, 1.0, 0.5, 0.0, -0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 0.25, 1.0, 1.0, -0.75, -0.25, -1.0, -1.0, -0.5, -1.0, 0.25, -0.75, 0.5, 0.25, -1.0, -1.0, -0.5, 0.75, 0.5, -1.0, 0.25, 0.0, -0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.0, 1.0, -0.5, -1.0, 0.0, 0.25, -0.5, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0021.setPipeline(render_pipeline004);
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    const array5 = new Float32Array([0.5, 1.0, 0.75, -0.25, -0.5, 0.0, -1.0, 0.5, 0.25, 1.0, -0.5, 0.5, 0.0, 1.0, 0.0, -0.25, -0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 0.75, 0.5, 1.0, 0.75, 0.5, 0.25, -0.25, -0.75, 0.0, 0.5, 0.25, -1.0, -1.0, -0.25, -0.75, -1.0, -1.0, -0.75, -0.25, -0.25, 0.75, -0.5, -0.75, 0.0, 1.0, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, 1.0, 0.25, 0.0, 0.25, -1.0, 0.5, 0.5, -1.0, 0.0, -1.0, -1.0, 0.5, 0.75, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.5, -0.75, 0.5, -0.75, 1.0, 0.75, -0.5, 0.25, -0.75, -0.25, -0.75, 0.5, 0.75, -0.75, 1.0, -0.75, 0.5, 1.0, 1.0, ]);
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder004.insertDebugMarker("marker");
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0031.setPipeline(render_pipeline007);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setPipeline(render_pipeline001);
    render_bundle_encoder002.setIndexBuffer(buffer0013, "uint16");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    buffer0013.destroy()
    render_bundle_encoder002.drawIndirect(buffer000, 0);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
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
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder0020.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setPipeline(render_pipeline007);
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer0017,
        0
    )
    render_bundle_encoder001.drawIndirect(buffer0010, 0);
    
    render_bundle_encoder002.drawIndirect(buffer002, 0);
    command_encoder004.insertDebugMarker("mymarker");
    buffer0016.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0041.beginOcclusionQuery(0)
    device00.pushErrorScope("validation");
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder004.pushDebugGroup("group_marker");
    render_pass_encoder0020.end();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
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
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0040.beginOcclusionQuery(0)
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    render_bundle_encoder002.finish();
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    device10.pushErrorScope("out-of-memory");
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group007);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer0013,
        0
    )
    render_bundle_encoder004.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.setPipeline(render_pipeline0012);
    buffer0021.destroy()
    const command_buffer100 = command_encoder100.finish();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group008);
    render_pass_encoder0000.end();
    buffer0015.destroy()
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0020, 0, array5, 0, array5.length);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    buffer0019.destroy()
    render_pass_encoder0040.setStencilReference(1);
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0050.setPipeline(render_pipeline003);
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder005.copyBufferToBuffer(
        buffer003,
        0,
        buffer0019,
        0,
        400
    );
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder004.popDebugGroup();
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer002);
    render_pass_encoder0021.insertDebugMarker("marker");
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder002.finish();
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0041.setVertexBuffer(0, buffer007);
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query000
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    device10.destroy();
    render_pass_encoder0051.setPipeline(render_pipeline0011);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline0012.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    render_pass_encoder0021.popDebugGroup();
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0040.setVertexBuffer(0, buffer0017);
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer0023,
        0
    )
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.drawIndexed(3);
    device00.queue.writeBuffer(buffer0026, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0022, 0, array2, 0, array2.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    query003.destroy()
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    buffer0020.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.pushDebugGroup("group_marker");
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
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.draw(3);
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer004,
        0,
        400
    );
    
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
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setVertexBuffer(0, buffer002);
    
    buffer0027.destroy()
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group0011);
    
    render_bundle_encoder001.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0040.insertDebugMarker("marker");
    {
        await buffer0026.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0026.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0026.unmap();
        console.log(new Float32Array(data));
    }
    buffer0029.destroy()
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder003.setIndexBuffer(buffer0021, "uint16");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    buffer0011.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.setPipeline(compute_pipeline0016);
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    buffer0028.destroy()
    render_pass_encoder0051.setVertexBuffer(0, buffer007);
    render_bundle_encoder003.drawIndexedIndirect(buffer0029, 0);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0041.endOcclusionQuery()
    render_bundle_encoder002.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer0029);
    query003.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.draw(3);
    
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer0028,
        0,
        400
    );
    render_pass_encoder0030.draw(3);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0000.setStencilReference(1);
    
    const array6 = new Float32Array([-0.75, 0.75, -1.0, 0.5, 0.0, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 0.75, -1.0, 0.25, -1.0, -1.0, -0.25, 0.5, 1.0, -0.75, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, -0.75, -0.5, 0.5, -1.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.25, -0.75, -0.75, -0.5, 0.5, 0.25, 0.25, 0.25, 0.75, -0.5, 0.75, -0.25, 1.0, 0.25, 0.5, -0.5, 0.5, 0.25, 0.5, 0.0, -0.5, -1.0, 0.5, 0.5, 1.0, 0.5, 0.25, -1.0, 0.5, -1.0, 0.0, 1.0, 0.0, 1.0, 0.25, -1.0, 0.75, 0.25, -1.0, 0.25, 0.75, 1.0, 0.25, -0.25, 0.25, -1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 0.25, -0.25, 0.0, -0.5, 0.25, -0.5, -1.0, 0.25, 0.75, 0.5, 0.5, -0.5, 0.0, -1.0, ]);
    device10.destroy();
    
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    query001.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer0017.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group0012);
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.pushErrorScope("validation");
    buffer0025.destroy()
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    command_encoder006.copyBufferToBuffer(
        buffer0020,
        0,
        buffer0021,
        0,
        400
    );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group0013);
    render_pass_encoder0032.setPipeline(render_pipeline002);
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer0012,
        0
    )
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer0019,
        0
    )
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0018, 0, array2, 0, array2.length);
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query006
    });
    device00.queue.writeBuffer(buffer0031, 0, array2, 0, array2.length);
    render_pass_encoder0051.insertDebugMarker("marker");
    render_bundle_encoder002.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer005.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0033, 0, array3, 0, array3.length);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0060.setPipeline(render_pipeline009);
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0002.setPipeline(render_pipeline007);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group0014);
    render_pass_encoder0021.setVertexBuffer(0, buffer0035);
    render_pass_encoder0060.setVertexBuffer(0, buffer002);
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.end();
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0015);
    render_pass_encoder0051.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    render_pass_encoder0002.setBindGroup(0, bind_group0016);
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0002.setVertexBuffer(0, buffer0018);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setVertexBuffer(0, buffer004);
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0033, 0);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline0016.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0017);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group0018);
    render_pass_encoder0050.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0043, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0032.setVertexBuffer(0, buffer0037);
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0032.drawIndirect(buffer0011, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0002.drawIndirect(buffer000, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0015, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group0019);
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0035, 0);
    render_pass_encoder0001.setVertexBuffer(0, buffer0031);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0031.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline0016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.end();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0032.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0031.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    command_encoder003.popDebugGroup()
    render_pass_encoder0050.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer005, ]);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    command_encoder002.popDebugGroup()
    render_pass_encoder0002.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0048, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0051.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndirect(buffer0046, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0001.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0032.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0032.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0021.end();
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndirect(buffer0038, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.drawIndirect(buffer0038, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0002.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0051.drawIndirect(buffer004, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline0016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0021);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0002.drawIndirect(buffer0044, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0051.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0051.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0002.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0002.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndirect(buffer009, 0);
    render_pass_encoder0060.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
}