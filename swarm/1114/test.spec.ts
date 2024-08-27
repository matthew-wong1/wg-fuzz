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
    const array0 = new Float32Array([1.0, 0.75, 0.5, -0.25, 0.25, 0.5, -1.0, -0.25, 0.75, -1.0, -0.25, -0.5, 1.0, 0.5, -0.75, 0.25, -0.75, -0.75, 1.0, -0.75, -0.5, 0.5, -1.0, -0.25, 1.0, 0.25, -0.75, -0.75, 0.5, 0.25, -0.25, -1.0, 0.0, -0.75, 1.0, 0.25, -0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.25, 0.25, 0.0, -1.0, 0.0, 1.0, 0.75, 1.0, -0.75, 0.0, 1.0, -0.25, -0.5, -0.5, 0.25, -0.5, -0.25, 0.75, -1.0, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, 1.0, -1.0, -0.25, 0.25, -1.0, -0.25, 0.75, 0.25, 0.25, 0.25, -0.75, -0.75, -0.25, -0.5, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.5, -0.5, 0.25, 0.25, 1.0, 0.25, -0.5, -0.75, 0.75, 0.25, ]);
    const array1 = new Float32Array([-0.25, 0.25, 0.0, -0.25, -0.5, 0.75, 0.5, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, -0.75, 0.75, -1.0, 0.75, -0.5, 1.0, 0.25, -1.0, 1.0, 0.25, 0.25, -0.5, 0.75, 0.0, 0.75, -1.0, 0.25, -1.0, 0.75, -0.25, 0.0, -0.25, -1.0, 1.0, -0.75, 0.5, 0.75, -0.5, -0.25, -0.75, 1.0, -0.5, 0.25, 0.25, 0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, -1.0, 0.5, -0.75, -0.75, -0.25, 0.75, 0.25, -0.5, 0.0, 1.0, -0.5, 0.25, 0.75, 1.0, 0.0, -0.75, 0.5, -0.25, 0.75, 0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, -1.0, -0.25, -0.25, 1.0, -0.5, 0.5, 0.5, -0.5, -0.5, -0.75, 0.0, 0.75, 0.75, 0.75, 0.75, ]);
    const array2 = new Float32Array([-0.75, 0.75, 0.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, -0.5, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, 1.0, 0.75, 0.5, 0.5, -0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 0.25, -0.25, 0.0, -0.25, -0.25, -0.25, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, 0.25, 1.0, 0.5, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.25, 0.25, -1.0, 0.5, -0.5, -0.75, 0.25, 0.5, -1.0, -0.5, 0.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.5, 0.75, 1.0, -0.5, 1.0, 1.0, 0.5, 0.75, 0.5, 0.25, 0.25, -1.0, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, -0.5, -0.5, -0.25, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array3 = new Float32Array([1.0, 0.25, 0.25, 0.0, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, -0.5, 0.25, 0.5, -0.5, -0.25, -0.5, -0.75, -0.25, -1.0, 0.5, 1.0, -0.75, 0.75, -0.5, -1.0, -0.25, 1.0, 0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -0.5, 0.0, 0.75, -0.5, -0.5, 1.0, 0.5, 0.75, 0.25, 1.0, 0.5, -0.75, 0.5, -0.5, 0.5, 0.25, 0.5, -0.75, -1.0, 0.5, 0.5, 0.0, -1.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.25, 0.75, -1.0, 1.0, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.5, -1.0, -1.0, -0.5, 0.0, -0.5, -0.5, -0.75, 1.0, 0.75, -0.5, 0.0, -1.0, 0.25, -1.0, -0.75, 0.75, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, 0.25, ]);
    
    
    device00.pushErrorScope("internal");
    const array4 = new Float32Array([0.75, 0.75, -0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -0.25, 1.0, 0.0, -0.75, 0.25, 0.25, 0.25, 0.75, -1.0, -0.75, -0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.0, 0.75, 0.25, -0.75, -0.75, 1.0, 0.75, 0.25, -1.0, 0.75, -0.75, 0.0, -1.0, -1.0, -0.25, 1.0, -0.25, -1.0, 1.0, 0.5, 1.0, -1.0, 0.75, -0.75, 0.75, -0.5, 0.75, 0.75, -1.0, 0.75, 0.5, 0.75, -0.25, -0.5, 0.0, 0.75, 0.0, 0.5, -0.5, -0.25, 1.0, 1.0, 0.5, 1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, -1.0, 0.75, -0.25, -0.5, 1.0, 0.75, 0.5, -0.25, 0.5, 0.5, -0.5, 0.5, 0.25, 1.0, -0.75, -0.75, 0.25, 0.75, 0.5, 0.75, -1.0, 1.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer002 = command_encoder002.finish();
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    device00.pushErrorScope("validation");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture003.destroy();
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_bundle_encoder001.insertDebugMarker("marker");
    texture002.destroy();
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
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
        occlusionQuerySet: query000
    });
    texture004.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder003.insertDebugMarker("mymarker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0030.beginOcclusionQuery(0)
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    query000.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    texture003.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, render_bundle_encoder001, ])
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
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    texture005.destroy();
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    render_pass_encoder0030.insertDebugMarker("marker");
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    texture004.destroy();
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    query000.destroy()
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.75, 0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.25, -0.75, 0.75, 0.75, 0.25, -1.0, 0.75, 0.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.0, -0.25, -0.5, -0.5, -0.5, -0.5, -0.75, 1.0, -1.0, -1.0, -0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.75, -0.75, 0.0, -1.0, -0.75, -0.5, 0.25, 0.0, -0.5, -0.25, -0.5, -0.25, 0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.75, -0.5, -0.75, -0.5, 0.25, -0.5, 0.5, -1.0, 0.25, 0.25, -0.5, 0.75, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, 1.0, 0.0, -0.75, 0.75, 0.5, -1.0, -0.75, 1.0, -0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.25, -0.25, -1.0, 1.0, 0.25, 0.0, 0.75, 0.5, ]);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0031.executeBundles([])
    texture006.destroy();
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setStencilReference(1);
    
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0011.executeBundles([render_bundle_encoder001, ])
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    buffer0010.destroy()
    
    
    
    const array6 = new Float32Array([-0.25, 1.0, -0.25, -1.0, 0.5, 0.25, -1.0, 1.0, -0.75, -0.25, 0.0, 1.0, 1.0, -0.5, 0.5, -0.25, -0.5, -0.5, 0.0, -0.5, -1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.0, 0.25, 0.75, 0.25, -0.5, 0.0, -1.0, 0.75, -0.5, 0.5, -1.0, 0.0, -0.75, 0.75, -0.75, 1.0, 0.0, 0.75, -1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.25, 0.0, -0.25, -0.5, 0.0, -0.75, 0.5, 0.5, 0.5, 0.5, -1.0, -0.75, 0.25, -0.25, -0.5, 0.0, -0.75, 0.5, 0.5, 0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 0.0, 0.75, 0.0, -0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -0.5, -0.5, 0.0, 0.0, -0.75, -0.5, 0.75, -0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -0.75, 0.0, 0.0, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    render_pass_encoder0031.setPipeline(render_pipeline001);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.setVertexBuffer(0, buffer009);
    buffer005.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer009.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    buffer006.destroy()
    render_bundle_encoder001.setVertexBuffer(0, buffer008);
    buffer000.destroy()
    
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_bundle_encoder002.drawIndirect(buffer0010, 0);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group005);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer0012,
        0
    )
    query000.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0031.setVertexBuffer(0, buffer008);
    render_bundle_encoder000.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    buffer007.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer001, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer009);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query005
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0010.setVertexBuffer(0, buffer007);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer002.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.submit([]);
    render_pass_encoder0030.end();
    query003.destroy()
    query005.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    buffer002.destroy()
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0040.executeBundles([])
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer005.destroy()
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
    
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    
    query000.destroy()
    render_pass_encoder0031.setStencilReference(1);
    device00.pushErrorScope("out-of-memory");
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

    render_pass_encoder0011.setBindGroup(0, bind_group006);
    buffer007.destroy()
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0031.insertDebugMarker("marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setVertexBuffer(0, buffer009);
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer0012.destroy()
    query000.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0016.destroy()
    
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer0014.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer008,
        0
    )
    buffer004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device10.pushErrorScope("internal");
    render_pass_encoder0031.insertDebugMarker("marker");
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0010.draw(3);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder003.setPipeline(render_pipeline001);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder004.setPipeline(render_pipeline000);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_bundle_encoder004.setBindGroup(0, bind_group007);
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0051,
            },
        ],
        occlusionQuerySet: query001
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query001
    });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder003.setBindGroup(0, bind_group008);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_bundle_encoder003.setVertexBuffer(0, buffer0015);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder003.pushDebugGroup("group_marker");
    render_pass_encoder0041.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder004.setVertexBuffer(0, buffer0016);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0015.destroy()
    texture000.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer0011.destroy()
    
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0050.setStencilReference(1);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0041.setStencilReference(1);
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer0014,
        0
    )
    
    buffer0013.destroy()
    buffer0019.destroy()
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query004
    });
    command_encoder005.clearBuffer(buffer002);
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    texture100.destroy();
    render_pass_encoder0011.draw(3);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0020.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    render_pass_encoder0061.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0040.beginOcclusionQuery(0)
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer0017,
        0
    )
    render_pass_encoder0041.setPipeline(render_pipeline000);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
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
    buffer0018.destroy()
    render_pass_encoder0061.setPipeline(render_pipeline003);
    render_pass_encoder0012.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0060.setPipeline(render_pipeline001);
    
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder003.drawIndirect(buffer0012, 0);
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
    render_pass_encoder0040.insertDebugMarker("marker");
    
    query004.destroy()
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0042.setPipeline(render_pipeline005);
    render_pass_encoder0051.setPipeline(render_pipeline001);
    query100.destroy()
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer0013,
        0
    )
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder003.drawIndirect(buffer005, 0);
    render_pass_encoder0010.endOcclusionQuery()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer0022,
        0
    )
    render_pass_encoder0012.setPipeline(render_pipeline005);
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group0010);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.draw(3);
    query100.destroy()
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer0020
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
    render_pass_encoder0041.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0031.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0051.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer0024.destroy()
    render_pass_encoder0051.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer0023,
        0
    )
    render_pass_encoder0042.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0061.insertDebugMarker("marker");
    
    render_pass_encoder0051.insertDebugMarker("marker");
    buffer0021.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    texture007.destroy();
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0031.drawIndexedIndirect(buffer0022, 0);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0070.setPipeline(render_pipeline000);
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder007.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0050.executeBundles([render_bundle_encoder003, ])
    render_pass_encoder0061.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer0017.destroy()
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    buffer008.destroy()
    buffer0023.destroy()
    buffer0022.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group0011);
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0051,
            },
        ],
        occlusionQuerySet: query004
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0071.setPipeline(render_pipeline004);
    render_pass_encoder0042.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0071.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0071.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_pass_encoder0040.setVertexBuffer(0, buffer008);
    render_pass_encoder0071.setStencilReference(1);
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0042.setBindGroup(0, bind_group0012);
    
    
    buffer003.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer0025.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0012.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0012.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0012.setVertexBuffer(0, buffer004);
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0028.destroy()
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder004.insertDebugMarker("marker");
    
    render_pass_encoder0012.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0032.setPipeline(render_pipeline003);
    render_bundle_encoder004.drawIndirect(buffer0013, 0);
    texture003.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0012.setIndexBuffer(buffer0011, "uint16");
    
    query003.destroy()
    render_pass_encoder0061.insertDebugMarker("marker");
    render_pass_encoder0032.insertDebugMarker("marker");
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer0014
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0013);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder0010.beginOcclusionQuery(0)
    query001.destroy()
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer008,
        0
    )
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer0023,
        0
    )
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0011.setStencilReference(1);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setIndexBuffer(buffer0029, "uint16");
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0012.drawIndirect(buffer0012, 0);
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
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0014);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0042.setVertexBuffer(0, buffer002);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group0015);
    render_pass_encoder0040.endOcclusionQuery()
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
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group0016);
    render_pass_encoder0051.setVertexBuffer(0, buffer0012);
    render_pass_encoder0070.setVertexBuffer(0, buffer008);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0070.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0060.setVertexBuffer(0, buffer0021);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    render_pass_encoder0071.setBindGroup(0, bind_group0017);
    render_pass_encoder0042.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0012.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0042.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0060.draw(3);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0012.drawIndirect(buffer0028, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0071.setVertexBuffer(0, buffer0014);
    render_pass_encoder0071.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0019, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group0018);
    render_pass_encoder0051.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0032.setVertexBuffer(0, buffer001);
    render_pass_encoder0032.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0041.setVertexBuffer(0, buffer0013);
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0070.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0012.drawIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0012.drawIndirect(buffer0039, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0042.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0070.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0018, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0071.drawIndirect(buffer0012, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0060.draw(3);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    render_pass_encoder0061.setBindGroup(0, bind_group0019);
    render_pass_encoder0032.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0012.end();
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0061.setVertexBuffer(0, buffer0011);
    render_pass_encoder0011.end();
    render_pass_encoder0061.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0061.end();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer005, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0061.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0042.setIndexBuffer(buffer006, "uint16");
    command_encoder001.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    command_encoder003.popDebugGroup()
    render_pass_encoder0042.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0017, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0051.drawIndirect(buffer0020, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0012.drawIndirect(buffer0037, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0012.end();
    render_pass_encoder0051.end();
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer009, "uint16");
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer006, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0061.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0051.end();
    render_pass_encoder0041.drawIndirect(buffer007, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0071.drawIndirect(buffer0031, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0012.drawIndirect(buffer008, 0);
    render_pass_encoder0042.drawIndirect(buffer006, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0071.drawIndexedIndirect(buffer0024, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0050.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0061.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer007, 0);
    render_pass_encoder0071.drawIndirect(buffer003, 0);
    render_pass_encoder0030.draw(3);
    device10.queue.submit([]);
    render_pass_encoder0012.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0061.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0071.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    device30.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer0015, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0070.drawIndirect(buffer003, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0071.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder0071.drawIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0051.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0042.drawIndirect(buffer0018, 0);
    render_pass_encoder0070.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([]);
    render_pass_encoder0040.end();
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0012.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0042.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0040, 0);
    render_pass_encoder0012.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0026, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndirect(buffer0011, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0042.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0051.drawIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0051.draw(3);
    render_pass_encoder0061.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndirect(buffer0037, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0071.end();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer005, ]);
    render_pass_encoder0070.drawIndirect(buffer007, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder0042.drawIndirect(buffer0036, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0042.drawIndirect(buffer000, 0);
    render_pass_encoder0071.drawIndirect(buffer0017, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0042.drawIndirect(buffer001, 0);
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0031, 0);
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0042.drawIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0051.draw(3);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0060.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0012.drawIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0042.drawIndirect(buffer0020, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0010.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0035, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0031.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0061.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndirect(buffer0012, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0051.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.draw(3);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0051.drawIndirect(buffer005, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0040, "uint16");
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0071.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0070.drawIndirect(buffer0015, 0);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0012.drawIndirect(buffer005, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0032.drawIndirect(buffer004, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0071.drawIndirect(buffer0033, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0042.drawIndirect(buffer005, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.end();
    device30.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0012.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0042.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0040, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0061.end();
    render_pass_encoder0071.end();
    render_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0061.draw(3);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0051.drawIndirect(buffer0021, 0);
    render_pass_encoder0061.drawIndirect(buffer0040, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0070.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0039, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0042.drawIndirect(buffer006, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0061.end();
    render_pass_encoder0051.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer004, 0);
    device30.queue.submit([command_buffer300, ]);
}