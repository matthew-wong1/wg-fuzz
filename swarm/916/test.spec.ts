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
    const array0 = new Float32Array([0.0, -0.75, 0.5, 0.0, -0.75, 0.0, 0.75, 0.25, -1.0, -1.0, 1.0, -0.75, 0.25, 0.75, 1.0, 1.0, -0.25, -0.75, 0.0, 0.75, 1.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.75, 1.0, -0.5, 0.75, -0.25, 0.25, 0.75, 0.5, -0.5, -0.75, 0.5, 0.0, -0.75, 0.0, -0.25, 1.0, 0.75, 0.75, -1.0, 0.25, -0.75, 0.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.5, 0.25, -0.75, 0.0, -1.0, 0.5, 1.0, 0.0, 0.5, -0.25, 0.25, 0.25, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, 0.5, 0.5, 1.0, -0.25, 0.25, 0.25, 1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.25, 1.0, 0.75, -0.75, -0.75, -0.25, 0.0, 0.0, -1.0, -0.75, 1.0, 0.5, -1.0, 0.5, 0.0, -1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array1 = new Float32Array([0.0, -0.5, -0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -0.75, 0.5, 0.75, 0.25, -1.0, -1.0, -1.0, -1.0, 1.0, -0.75, 0.5, 0.75, 0.75, 1.0, -0.75, -0.75, 1.0, 0.75, -0.75, -1.0, -0.75, 1.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, -1.0, 0.5, 0.5, 0.0, 1.0, -0.75, -1.0, -1.0, 0.25, 0.5, 1.0, 0.0, -0.5, -0.75, -0.5, -0.75, 0.75, -0.75, -0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 0.5, 0.75, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.25, 0.0, 0.25, 0.25, -1.0, 0.25, 0.0, -0.75, 1.0, 0.5, -0.5, 0.5, 0.75, -0.75, -1.0, -1.0, -0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -0.5, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array2 = new Float32Array([-0.25, 1.0, 0.0, 1.0, -0.5, -0.25, -0.5, -0.75, 0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 0.0, -0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 0.75, -1.0, -0.5, -0.75, -0.5, 0.75, -0.75, 0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 1.0, 0.75, -1.0, 1.0, 0.0, -1.0, 1.0, 0.0, -0.5, 0.0, 0.0, -0.75, -0.5, -0.25, 0.0, -0.75, 0.5, -0.5, 0.0, 0.25, 0.25, -0.25, -0.5, -0.75, 0.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.25, 1.0, -0.25, -0.75, -1.0, -1.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.25, 0.25, 0.25, 0.75, 1.0, 0.75, -0.25, -0.75, -1.0, -0.75, -0.5, -0.25, 0.5, 0.5, -1.0, 1.0, -0.5, 0.5, 1.0, -0.75, -1.0, 0.5, 1.0, -1.0, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    query001.destroy()
    const array3 = new Float32Array([0.0, -0.75, -1.0, -1.0, 0.25, 0.75, 1.0, -1.0, 0.0, -0.75, 0.75, -0.75, -0.25, 0.5, -0.75, 1.0, 1.0, -0.5, 0.75, 1.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, -0.75, -0.75, -0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.5, 0.0, 0.0, -0.75, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 0.75, 0.5, 0.25, 0.75, 0.75, -0.75, -1.0, 0.75, 0.25, -1.0, 0.5, -0.75, -1.0, 0.5, 0.75, -0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.0, -0.25, 0.0, 1.0, 0.25, -1.0, 0.75, -0.5, -0.5, -0.75, 0.75, 0.75, -0.25, 0.25, -0.25, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -0.25, -0.25, 0.0, 0.5, 0.0, -0.75, 1.0, -0.75, 1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_buffer000 = command_encoder000.finish();
    texture000.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.submit([command_buffer000, ]);
    query001.destroy()
    query001.destroy()
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.25, 0.0, -0.5, 0.0, 0.25, -0.5, -1.0, 0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 0.75, 1.0, -0.25, 0.0, 0.5, -0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 0.0, -0.75, -0.5, -0.5, -0.5, 1.0, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, 0.5, 0.75, -0.25, 0.5, 1.0, -0.5, -0.75, -0.25, -0.5, 0.5, -0.25, 0.5, 1.0, -0.25, 0.0, 0.0, -0.5, 0.5, -0.25, -0.75, -0.5, -0.5, 1.0, -0.25, 0.0, -0.25, -1.0, 1.0, -0.5, -0.5, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, 1.0, -0.75, 0.25, -0.75, -0.5, -0.75, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, -0.25, -1.0, -0.25, 0.75, 0.25, -0.75, 0.0, 0.75, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array5 = new Float32Array([0.5, -1.0, -0.5, 1.0, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 1.0, 1.0, -1.0, -1.0, -0.75, -0.25, -0.25, 1.0, -0.75, 0.25, -0.75, 1.0, 1.0, 0.25, 0.0, -0.75, -1.0, 0.75, 0.0, -0.5, 1.0, 0.75, 0.5, -0.5, 0.75, -0.5, 0.25, 0.5, 0.5, 0.25, 0.5, 0.75, 0.0, 0.75, -0.5, -0.25, -0.25, -0.5, 0.75, 0.5, 0.0, -0.25, -1.0, 0.0, 1.0, 0.75, 0.25, -0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.5, 0.0, 0.0, 0.75, -0.25, -0.75, -1.0, -0.75, -0.5, 0.5, 0.5, 0.25, 0.5, -0.75, 0.5, 0.75, 0.0, -0.75, -0.75, 0.75, -0.75, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, 0.5, 0.25, -1.0, 1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, ]);
    
    
    texture001.destroy();
    buffer001.destroy()
    query001.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture002.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query004.destroy()
    const command_buffer001 = command_encoder001.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_buffer003 = command_encoder003.finish();
    query000.destroy()
    const command_buffer002 = command_encoder002.finish();
    query002.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer000.destroy()
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query002.destroy()
    
    query002.destroy()
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query003.destroy()
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.25, 0.25, -0.75, 0.75, -0.75, 0.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 0.25, -0.5, 1.0, -0.5, 0.75, 0.25, -0.5, 1.0, 0.5, -0.25, 0.75, 1.0, 0.25, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, -0.75, 0.25, 0.5, 0.25, 0.25, 0.0, 0.25, -0.25, -1.0, -0.75, -0.25, 0.75, -0.25, 0.75, -0.75, 1.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.0, -0.25, 0.5, -0.25, 0.5, 1.0, 0.5, -0.5, 0.75, 0.25, 0.0, 0.75, -0.75, 0.5, -1.0, 1.0, 0.25, -0.5, -0.5, -0.75, 0.75, -0.75, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, 0.75, -0.25, 0.5, -1.0, -0.5, 0.5, 0.75, 0.0, 0.25, -0.75, -0.75, 1.0, ]);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query000.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query101 = device10.createQuerySet({
        label: "query101",
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
    render_bundle_encoder001.popDebugGroup();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query000.destroy()
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0040.setStencilReference(1);
    const array7 = new Float32Array([0.0, -1.0, -1.0, -1.0, 0.0, 1.0, -1.0, -0.75, 1.0, 0.5, -0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.75, 0.5, 1.0, 0.25, -0.25, -0.5, 0.75, 0.75, -0.5, -0.25, -0.25, 0.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.5, 0.5, 0.5, 0.75, 1.0, -0.75, 0.75, -0.25, 0.75, -0.25, -1.0, 0.0, -0.75, 0.75, -0.25, -0.75, 0.25, 0.25, -0.75, 1.0, 0.75, 0.75, -0.25, -1.0, 0.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, 0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.75, 0.0, 0.25, 0.0, -0.25, 1.0, 0.0, -0.25, -0.25, 1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 0.5, 0.25, -1.0, 1.0, -0.25, 1.0, -0.5, 0.25, ]);
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder000.popDebugGroup();
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query004
    });
    
    
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0040.executeBundles([])
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.executeBundles([])
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
    render_pass_encoder0040.insertDebugMarker("marker");
    query004.destroy()
    query003.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    texture003.destroy();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    render_pass_encoder0040.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0050.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    query003.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline002);
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query100
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer002.destroy()
    
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1000.executeBundles([])
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    query101.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    buffer005.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query003.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    buffer006.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    
    render_pass_encoder0050.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    query000.destroy()
    
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    
    query100.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    texture007.destroy();
    query003.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    buffer003.destroy()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0050.executeBundles([])
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const texture_view0062 = texture006.createView({ label: "texture_view0062" });
    render_pass_encoder0050.setStencilReference(1);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    query100.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    query101.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.popDebugGroup();
    
    query000.destroy()
    render_pass_encoder0050.setStencilReference(1);
    query004.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
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
    render_pass_encoder0050.executeBundles([])
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0062,
            },
        ],
        occlusionQuerySet: query006
    });
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    render_pass_encoder0040.executeBundles([])
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.pushErrorScope("out-of-memory");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    render_pass_encoder0040.setStencilReference(1);
    query001.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    query003.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    render_pass_encoder0060.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    query007.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0070.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    
    render_pass_encoder1000.setStencilReference(1);
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
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    render_pass_encoder0050.setStencilReference(1);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query101.destroy()
    device00.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.pushErrorScope("validation");
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query007
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
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    texture008.destroy();
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    buffer100.destroy()
    
    render_pass_encoder0080.executeBundles([])
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
    query100.destroy()
    query004.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array8 = new Float32Array([0.5, -1.0, -0.5, 0.75, 0.25, 0.25, -0.75, -0.5, -0.5, -1.0, 0.75, 0.0, -0.5, -0.5, 1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.75, 0.25, 0.75, 1.0, 1.0, -1.0, -0.25, 0.5, 0.5, 1.0, 1.0, 1.0, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, -0.5, 0.25, 0.0, 1.0, -0.25, -0.5, -0.5, 0.0, -0.5, -0.5, 1.0, -0.75, -0.5, 0.25, -1.0, -1.0, -0.5, -1.0, 0.0, 0.5, 0.75, 0.5, 0.0, -1.0, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, 1.0, -0.25, -0.25, -0.5, 0.5, -0.75, 1.0, -0.25, -0.5, -0.25, -0.25, 1.0, 0.25, 0.75, 0.75, 0.5, -0.25, -0.75, -0.75, 0.0, -1.0, -0.5, ]);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder0050.setStencilReference(1);
    query003.destroy()
    query002.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    
    
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer102.destroy()
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    query000.destroy()
    render_pass_encoder0090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0070.executeBundles([])
    render_bundle_encoder102.setPipeline(render_pipeline102);
    buffer103.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query005
    });
    
    
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0080.setStencilReference(1);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder000.draw(3);
    render_pass_encoder0060.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer104.destroy()
    
    query100.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0090.setStencilReference(1);
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder00100.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0053 = texture005.createView({ label: "texture_view0053" });
    render_pass_encoder0040.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    
    
    
    
    render_pass_encoder0080.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setStencilReference(1);
    query008.destroy()
    buffer004.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder0090.insertDebugMarker("marker");
    render_pass_encoder0070.insertDebugMarker("marker");
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    query001.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer106.destroy()
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder0090.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder00100.beginOcclusionQuery(0)
    render_pass_encoder1010.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture009 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0060.popDebugGroup();
    buffer008.destroy()
    
    query001.destroy()
    
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.setStencilReference(1);
    device00.pushErrorScope("internal");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device00.queue.writeTexture({ texture: texture009 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
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
    const texture_view0054 = texture005.createView({ label: "texture_view0054" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.executeBundles([])
    
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder00100.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.popDebugGroup();
}