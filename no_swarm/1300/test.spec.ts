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
    const array0 = new Float32Array([0.75, 0.5, 0.75, -0.25, 0.25, -0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, 0.25, 1.0, -0.5, -0.5, 0.25, 0.25, -1.0, 0.0, -0.5, -0.5, 0.5, 0.25, -0.75, -1.0, 0.75, -0.25, 0.25, 0.75, -0.75, 0.5, 1.0, 0.5, -0.25, 0.25, -0.5, 0.75, -1.0, 0.0, -0.75, -0.25, -0.5, 0.0, 1.0, 1.0, 0.0, 0.75, 0.0, -0.75, 0.75, 0.5, -0.5, -0.75, 0.25, -0.5, 1.0, -0.75, -1.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.5, -0.25, -0.25, 1.0, -0.75, -0.25, -0.75, 0.5, -0.75, 0.0, -1.0, -0.75, 0.0, -0.5, 0.25, 0.75, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, 0.0, 0.0, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-1.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.25, -0.75, -0.5, -0.25, -0.25, -0.25, -1.0, 0.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.5, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, -1.0, 0.0, -0.5, 0.0, -0.25, 0.0, 0.0, 0.75, 1.0, -0.25, 0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 0.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.75, 0.5, 0.75, 0.25, 0.0, 0.0, 0.5, 0.0, 0.25, 0.25, 1.0, 0.5, -0.25, -0.25, -0.25, 0.25, -0.75, -1.0, -0.5, -0.75, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.75, 0.5, -0.75, 0.75, 1.0, -0.5, 0.75, -0.25, 1.0, -0.25, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, -1.0, -0.5, 0.25, 1.0, -0.25, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    query001.destroy()
    
    const array2 = new Float32Array([0.5, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.25, 1.0, -0.5, -0.5, 0.75, 0.75, -0.25, 1.0, 0.25, 0.5, -0.25, 0.75, -1.0, 0.5, 0.75, -0.25, 0.5, -1.0, 0.0, -0.25, -0.5, 0.25, -0.5, -1.0, -1.0, -0.25, 0.25, 1.0, 0.75, -0.75, 1.0, -0.75, -1.0, -0.25, 1.0, -0.5, -0.25, -0.5, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -0.25, 0.5, -0.25, -0.25, 0.75, -0.5, 1.0, -1.0, -0.25, 0.0, 1.0, 0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 0.75, 0.0, -0.75, 1.0, 0.5, 1.0, 0.75, -0.75, -0.75, 0.0, 0.75, -0.5, 0.0, -0.75, -1.0, 0.25, 0.5, 0.5, 0.0, -0.75, -0.25, -0.75, -0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 0.25, -0.75, ]);
    query002.destroy()
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    
    buffer000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer001.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.pushErrorScope("internal");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    query000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([]);
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
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
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
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    render_bundle_encoder000.drawIndirect(buffer001, 0);
    
    
    buffer002.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    
    device10.pushErrorScope("internal");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.popDebugGroup();
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query006.destroy()
    buffer002.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query003.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
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
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    query005.destroy()
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder101.popDebugGroup();
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    command_encoder100.popDebugGroup()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    render_pass_encoder0010.setPipeline(render_pipeline003);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setStencilReference(1);
    query006.destroy()
    query004.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    texture000.destroy();
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    query004.destroy()
    
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer000.destroy()
    query003.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
        occlusionQuerySet: query100
    });
    compute_pass_encoder0000.popDebugGroup()
    
    device00.pushErrorScope("internal");
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder000.finish();
    compute_pass_encoder0001.insertDebugMarker("marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    render_pass_encoder1000.beginOcclusionQuery(0)
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0001.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder1000.setPipeline(render_pipeline102);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const array3 = new Float32Array([-0.75, -0.75, 1.0, 0.0, -0.5, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, 0.5, 0.25, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, -0.75, -0.5, 1.0, 0.75, 0.5, -0.5, -0.25, -0.5, 0.75, -1.0, 0.5, 0.25, -0.25, -0.25, -0.5, -0.75, -0.25, -0.75, 1.0, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.25, 1.0, 0.25, -0.5, 0.25, 0.0, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, -0.5, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, -0.75, ]);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0020.endOcclusionQuery()
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer005);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([0.0, 0.75, 0.25, 1.0, 1.0, -0.5, -0.5, 0.75, 0.25, 1.0, -0.5, -0.5, 0.0, -0.25, 0.0, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, 0.0, -0.5, 0.0, -0.25, 1.0, -0.25, 0.25, -1.0, 0.0, 0.25, -0.25, -0.5, -1.0, -0.75, -0.5, 0.0, -0.25, -0.25, -0.75, 0.75, 1.0, -1.0, -0.75, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 0.75, 0.25, -1.0, 0.25, -0.25, 0.25, 0.75, 0.75, 0.5, -1.0, -0.75, 0.5, 0.25, 0.0, -0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 0.75, 1.0, -0.75, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, 0.75, 0.75, 0.25, -0.5, 0.25, -1.0, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, ]);
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0021.insertDebugMarker("marker");
    
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0010.popDebugGroup();
    buffer004.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query100.destroy()
    texture100.destroy();
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder0021.setStencilReference(1);
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer003.destroy()
    render_bundle_encoder001.drawIndirect(buffer005, 0);
    buffer101.destroy()
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1000.setStencilReference(1);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query006
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer200.destroy()
    device10.pushErrorScope("internal");
    texture001.destroy();
    render_bundle_encoder001.drawIndirect(buffer006, 0);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.destroy();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0001.setStencilReference(1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query001.destroy()
    device20.destroy();
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query002.destroy()
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    query001.destroy()
    
    render_pass_encoder0001.setPipeline(render_pipeline003);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group003);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    buffer005.destroy()
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query005
    });
    
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer008.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0011.setPipeline(render_pipeline005);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0001.insertDebugMarker("marker")
    render_pass_encoder0021.popDebugGroup();
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group004);
    
    render_pass_encoder0021.insertDebugMarker("marker");
    
    
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    query000.destroy()
    
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    command_encoder101.pushDebugGroup("mygroupmarker")
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query005.destroy()
    buffer0011.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query005.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query101.destroy()
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
    render_pass_encoder0011.setVertexBuffer(0, buffer0012);
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group007);
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query007
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    query005.destroy()
    compute_pass_encoder0001.insertDebugMarker("marker")
    query004.destroy()
    
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setPipeline(render_pipeline004);
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    buffer0014.destroy()
    
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    query005.destroy()
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query005
    });
    
    query004.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_bundle_encoder001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.setPipeline(render_pipeline006);
    buffer008.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([command_buffer003, ]);
    command_encoder000.copyBufferToBuffer(
        buffer006,
        0,
        buffer005,
        0,
        400
    );
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0040.beginOcclusionQuery(0)
    
    buffer0013.destroy()
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    query001.destroy()
    render_pass_encoder0020.popDebugGroup();
    buffer006.destroy()
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.setPipeline(render_pipeline002);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    buffer0010.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    buffer007.destroy()
    render_pass_encoder0011.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.setVertexBuffer(0, buffer0013);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer200.destroy()
    
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer100.destroy()
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    
    render_pass_encoder0011.insertDebugMarker("marker");
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query005
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query004.destroy()
    render_pass_encoder0012.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0012.setStencilReference(1);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    render_bundle_encoder002.setPipeline(render_pipeline009);
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder001.resolveQuerySet(
        query007,
        0,
        32,
        buffer0017,
        0
    )
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0051.setPipeline(render_pipeline0012);
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer0016,
        0
    )
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    const array5 = new Float32Array([0.75, 1.0, -0.25, 1.0, 1.0, 0.0, 1.0, 0.5, 1.0, 0.25, 0.5, 0.25, 0.5, -1.0, -0.5, 0.75, 0.0, 0.0, 0.0, 0.25, -0.75, 1.0, -1.0, -0.5, -0.5, -0.5, 1.0, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, 0.5, 0.0, 0.0, -1.0, 0.0, 0.0, 1.0, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, -0.75, -0.5, -0.75, 0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 0.5, -1.0, 0.5, 1.0, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -0.5, 1.0, 0.0, 0.25, -0.5, 0.25, 0.0, 0.0, 0.25, -0.25, 0.0, -0.25, 0.5, -0.75, -0.25, 0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.5, 0.0, -0.5, -0.5, -0.5, 0.75, ]);
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0001.end();
    buffer0015.destroy()
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    render_pass_encoder0021.setStencilReference(1);
    
    render_pass_encoder0000.setStencilReference(1);
    
    
    query000.destroy()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0010.destroy()
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0012.setPipeline(render_pipeline0011);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer0016.destroy()
    buffer0017.destroy()
    render_pass_encoder0051.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer005.destroy()
    render_pass_encoder0010.end();
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.end();
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setVertexBuffer(0, buffer001);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline0012.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group009);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.setVertexBuffer(0, buffer0011);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0010);
    render_pass_encoder0041.setVertexBuffer(0, buffer0018);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline0011.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group0011);
    render_pass_encoder0001.end();
    render_pass_encoder0012.setVertexBuffer(0, buffer0019);
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0021.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    command_encoder101.popDebugGroup()
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0012.draw(3);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0012.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0012.end();
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0012);
    render_pass_encoder0050.setVertexBuffer(0, buffer000);
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0021.end();
    render_pass_encoder0050.end();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0051.end();
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    const command_buffer101 = command_encoder101.finish();
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0013, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0001.draw(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0012.end();
    render_pass_encoder0011.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0012.end();
    device10.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.end();
}