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
    
    const array0 = new Float32Array([0.25, -0.75, -0.5, -1.0, 1.0, -0.75, 1.0, 0.75, 0.25, -0.75, -0.25, -0.75, 0.25, 0.0, -0.25, -0.25, -0.75, 0.0, -0.25, -0.5, 0.0, 0.5, -0.25, -0.5, -0.25, 0.75, -0.5, 0.25, 0.25, -0.25, -0.5, 0.75, 0.75, 0.0, 0.25, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.25, 1.0, -0.75, -0.75, -0.5, -0.25, 0.75, -0.25, 0.5, -0.75, 0.75, 1.0, -0.75, 0.75, -0.25, 0.75, -0.75, -0.25, -0.75, -0.75, -1.0, -0.5, 0.0, -0.25, -1.0, -0.25, 0.25, -1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.0, -0.5, 0.5, -0.5, 0.75, 0.5, -0.75, -0.5, -1.0, -0.5, 1.0, 0.75, 0.25, -0.25, -0.5, 0.25, -0.5, 0.5, -1.0, 0.5, -1.0, -0.75, -0.75, ]);
    const array1 = new Float32Array([0.0, -0.75, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, -1.0, 0.75, -0.75, -0.5, -0.5, 0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.25, -1.0, 0.75, 0.25, 0.5, 0.25, 0.5, 1.0, -0.25, 0.0, 0.5, 0.5, -0.75, 1.0, -0.25, 0.5, 0.75, -0.5, -0.25, 1.0, -1.0, 0.25, 1.0, -0.25, 0.0, -0.75, 1.0, -0.25, -0.25, 1.0, -0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.5, -1.0, 1.0, 0.5, -0.75, -0.25, -0.75, 1.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.25, -1.0, -1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array2 = new Float32Array([-0.25, 1.0, -1.0, 0.75, 0.75, 0.0, -1.0, 1.0, -0.25, 0.25, 0.75, -0.25, -0.5, 0.75, 0.5, -0.75, -0.5, 0.5, 0.0, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, -0.25, -0.75, -0.75, 0.0, 0.0, 0.25, -0.25, 0.0, -0.75, 0.5, 0.5, 1.0, 0.25, -0.25, -1.0, -1.0, 0.0, -1.0, 0.75, 0.5, 0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.25, 1.0, -0.75, 0.5, 0.75, -1.0, -1.0, -1.0, -1.0, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, 0.75, -0.25, -0.75, 1.0, 0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.5, 0.25, 1.0, -1.0, -0.75, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, 0.25, 0.75, 0.25, 1.0, 0.5, 0.75, 0.0, 0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array3 = new Float32Array([-0.75, -1.0, -0.75, -0.5, 0.0, 1.0, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, 0.75, 0.0, -0.5, -1.0, -0.5, 0.25, 0.5, 0.75, -0.25, -0.25, 0.75, -0.75, 0.25, -0.5, -0.25, -0.75, -0.25, -0.5, -0.5, -1.0, -1.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, 0.5, 0.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.25, 0.5, -0.75, 0.0, 1.0, 1.0, -0.75, -0.75, 0.5, -0.75, 0.75, -0.5, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, 1.0, -0.75, 0.5, 0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.25, -0.75, -0.25, 1.0, 0.75, 0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.5, -0.75, 0.0, -1.0, 0.0, 0.0, 1.0, 0.0, ]);
    
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const array4 = new Float32Array([-1.0, 0.5, -0.75, 1.0, 0.75, -0.75, -1.0, 1.0, -0.75, 0.75, -0.75, -0.25, 0.0, -0.75, -0.75, -1.0, 0.5, -0.5, -0.75, -0.5, 0.25, 0.25, -0.5, 0.5, -0.25, -0.5, 1.0, -0.5, 1.0, 0.0, 0.0, -0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 0.5, 0.75, -1.0, -0.75, -0.25, 0.75, -0.5, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, 1.0, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.5, 0.25, 0.0, -0.25, -0.75, -1.0, -0.75, 1.0, -1.0, 1.0, 0.5, -0.5, -0.5, -0.75, 0.75, 0.0, -1.0, -0.75, -1.0, -0.5, 0.5, -0.5, 0.75, -1.0, -0.75, -1.0, 0.0, -0.25, -0.25, -1.0, -0.25, 0.75, -0.75, -0.5, -0.25, 0.5, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, 0.25, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.pushErrorScope("out-of-memory");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0000.setPipeline(render_pipeline001);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0010.setPipeline(render_pipeline002);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder0010.setStencilReference(1);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, 0.75, -0.25, 0.5, -0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.5, 0.5, -0.75, 0.5, 0.25, -1.0, -0.25, 0.75, 0.0, -0.5, 0.0, -1.0, 0.75, 0.0, -1.0, 0.0, -1.0, 1.0, -1.0, -1.0, 0.25, -0.5, -0.5, 0.25, -0.75, 0.5, 0.25, -0.5, 0.0, -0.25, 0.25, -1.0, -0.75, -0.25, 0.75, -0.5, -0.5, -1.0, 0.25, 0.5, -0.75, -1.0, -0.5, -0.25, -0.75, -0.25, 0.75, 0.25, -0.25, 0.5, 0.25, -0.5, -0.75, 0.25, -0.75, -0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.25, 0.25, -0.25, -1.0, -0.75, -0.25, -0.25, 0.5, 0.25, 1.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.5, -0.5, -0.25, 0.5, -1.0, 0.25, -0.75, 0.5, 0.5, -0.5, 0.0, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0000.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group001);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const array6 = new Float32Array([0.25, 0.75, 0.0, 0.0, 1.0, -0.75, -0.75, -1.0, -1.0, 0.75, 0.5, -0.25, -0.75, 0.25, 1.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.5, -0.25, -0.75, -0.75, 0.75, -0.75, 0.25, 1.0, 0.5, 1.0, 0.25, -1.0, -1.0, 0.0, -1.0, 0.0, -1.0, -0.5, 0.5, 0.75, 1.0, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 0.5, 0.0, 1.0, -0.5, 0.0, 0.25, -1.0, 0.5, 0.5, -0.5, -1.0, -0.5, -0.75, -0.75, -0.75, -1.0, 0.5, 0.75, 0.0, -1.0, 0.5, -0.75, 0.0, -1.0, 0.75, -0.75, -1.0, -0.25, 1.0, -1.0, 0.0, 0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -1.0, 0.0, 0.0, -0.5, 0.5, -0.5, 0.75, 0.75, 0.75, 0.75, -0.5, 0.25, -0.5, -0.25, 0.5, -0.5, ]);
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.popDebugGroup();
    
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    render_bundle_encoder002.setPipeline(render_pipeline005);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    
    
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0010.setVertexBuffer(0, buffer001);
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder0010.draw(3);
    
    render_pass_encoder0010.end();
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("internal");
    
    const array7 = new Float32Array([0.0, 0.0, -1.0, -0.5, 0.5, -0.5, 0.5, -1.0, -0.25, 0.5, 0.5, -0.25, 0.25, 0.5, -1.0, 1.0, 0.5, -0.5, 0.5, 0.25, 0.0, 0.0, -0.5, 0.0, -1.0, -0.75, 1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, 1.0, 1.0, -0.75, -1.0, 1.0, 1.0, -0.75, 1.0, -0.75, -1.0, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 0.0, 1.0, -0.25, 1.0, -0.25, -0.5, -0.75, 1.0, -0.75, -1.0, -0.25, 1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 0.75, 0.75, 0.0, -1.0, -0.25, 0.5, 0.75, 1.0, -0.5, -0.75, 0.25, -0.5, -0.5, 0.0, -0.75, -0.5, 0.5, 1.0, 0.0, -0.5, 0.75, 1.0, -0.75, 0.75, -1.0, -0.5, 0.75, 0.25, -1.0, 0.0, ]);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0011.setPipeline(render_pipeline003);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    
    render_pass_encoder0020.setPipeline(render_pipeline0011);
    
    device40.destroy();
    render_pass_encoder0030.setPipeline(render_pipeline0011);
    
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder0000.draw(3);
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0011.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline0011.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
        occlusionQuerySet: undefined
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0011.insertDebugMarker("marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setPipeline(render_pipeline009);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const array8 = new Float32Array([0.5, 0.0, 0.5, 0.5, 0.75, -0.25, -1.0, 0.0, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, -0.25, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 1.0, 0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.75, -1.0, 0.25, 0.75, 1.0, 0.25, 0.0, 0.0, 0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.5, -1.0, -0.75, -0.25, -0.75, 0.25, 0.0, 0.75, 0.25, -1.0, 0.5, 1.0, 0.25, -1.0, 1.0, 0.75, 1.0, 0.75, -0.25, 0.5, 0.5, -1.0, 0.0, 0.0, 0.75, 0.5, -0.5, 0.25, -0.5, -0.5, -0.75, -0.5, -1.0, -0.5, 0.25, 1.0, -1.0, -0.25, 0.75, -0.25, -0.25, 0.0, 1.0, -1.0, 0.25, -0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 0.25, -0.25, 0.25, ]);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([-0.5, 1.0, -1.0, -0.25, -1.0, -1.0, 0.5, 1.0, 0.5, 0.75, 0.0, -0.5, -1.0, 0.25, -1.0, 0.0, 0.25, -0.75, 1.0, -0.25, -1.0, 0.0, -0.75, 0.25, 1.0, -1.0, 0.0, -0.25, -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, -1.0, 1.0, -1.0, -0.5, -0.25, 1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.25, -0.75, -1.0, 0.75, -0.5, -1.0, 0.0, 1.0, 0.5, -0.25, 0.5, 0.25, 0.5, -0.5, 0.25, 0.25, -1.0, 0.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.5, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, -1.0, 1.0, -0.5, 1.0, 0.5, 0.0, 1.0, 0.0, 0.75, 1.0, 0.75, -0.5, 0.25, 1.0, -0.25, -1.0, 0.5, 1.0, -0.75, 0.25, -0.25, ]);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0030.popDebugGroup();
    command_encoder202.popDebugGroup()
    command_encoder202.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0040.setVertexBuffer(0, buffer001);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.setStencilReference(1);
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2020.setStencilReference(1);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder202.setPipeline(render_pipeline202);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device30.destroy();
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    
    
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    
    device10.destroy();
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2020.setStencilReference(1);
    
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group005);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device80.pushErrorScope("internal");
    const array10 = new Float32Array([1.0, -1.0, 0.0, 1.0, -0.75, 0.25, -1.0, -0.75, 0.25, -0.5, -0.75, 1.0, 0.25, -1.0, 1.0, -0.5, 0.0, 0.75, -0.5, 0.0, 0.5, 0.0, 0.0, 1.0, -1.0, -0.5, 0.25, -0.5, 1.0, -0.25, -0.75, 0.75, 0.5, 1.0, -1.0, 0.0, 0.75, 0.0, 0.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.25, -0.75, 0.5, -0.5, 0.0, 0.5, 0.25, -1.0, -0.75, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -0.5, -0.75, -1.0, -0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.75, -0.5, 0.5, 0.75, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, -0.5, -0.25, -0.75, 0.75, 0.25, 0.75, -0.25, 0.5, 0.25, -0.5, 0.75, -1.0, 1.0, -0.75, 0.25, -0.5, 0.5, 0.25, 0.0, -0.5, ]);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder0020.end();
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    
    render_pass_encoder0021.setPipeline(render_pipeline006);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder700.clearBuffer(buffer700);
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    render_pass_encoder0011.popDebugGroup();
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    device00.queue.writeBuffer(buffer0014, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer0014, 0, array9, 0, array9.length);
    
    const array11 = new Float32Array([0.75, 0.25, -0.25, -1.0, 0.75, 1.0, 1.0, 0.5, 0.5, -0.75, 0.25, 1.0, 0.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, 0.75, -0.75, -0.75, 0.5, -0.75, -0.75, 0.75, 0.0, 0.25, -0.25, -0.75, 1.0, 0.0, -1.0, 0.75, -0.75, 0.25, -0.25, 0.75, 1.0, 0.75, -0.75, 0.5, 0.5, -0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, 0.75, 0.0, -1.0, -0.25, -1.0, 0.25, 0.75, 0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.75, 0.75, -0.25, -1.0, 0.25, -0.75, 0.5, 1.0, 0.75, -1.0, 0.25, -0.5, -0.25, -1.0, -0.75, 0.5, -0.5, 0.5, -0.75, 0.5, -1.0, 0.75, ]);
    render_pass_encoder2020.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    render_pass_encoder2020.popDebugGroup();
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group006);
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
    render_pass_encoder0011.setVertexBuffer(0, buffer001);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0000.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.end();
}