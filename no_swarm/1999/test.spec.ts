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
    const array0 = new Float32Array([-0.25, -1.0, -0.75, -0.75, 0.25, 0.75, 1.0, -0.75, 1.0, -0.25, -0.5, 0.0, 0.5, 0.75, -0.75, -0.25, -0.75, -0.5, 0.0, 1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 0.75, 0.0, 0.25, -1.0, -0.5, -0.75, -0.75, -0.25, 1.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.75, -0.25, -0.25, 0.25, -0.25, 0.5, 1.0, -0.75, -1.0, -1.0, -0.5, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, 0.0, 0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 1.0, 0.0, 0.5, 0.25, 0.75, 0.25, -1.0, -0.75, 0.25, 0.0, 1.0, 0.0, 1.0, -0.5, 0.0, 0.25, 1.0, -0.25, -1.0, -1.0, -0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.5, -0.5, 0.5, -0.75, 0.0, 0.5, 0.5, 0.5, -0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    texture002.destroy();
    texture000.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.clearBuffer(buffer000);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const command_buffer001 = command_encoder001.finish();
    buffer000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder000.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder000.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.executeBundles([])
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
    const array1 = new Float32Array([-0.75, -1.0, -0.5, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, -0.75, 0.25, -0.75, -0.5, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, -0.25, 0.0, -0.75, -1.0, -0.75, 0.5, 1.0, 0.5, -0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 1.0, 0.0, -0.25, 1.0, -1.0, 1.0, -0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 0.5, 0.75, -1.0, -0.5, -0.5, -0.5, 1.0, -0.5, -0.5, 0.0, 0.5, 0.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.75, -0.5, -0.25, -0.5, 0.75, 0.75, 0.25, -0.5, 1.0, 0.25, 0.5, 0.75, 1.0, 0.5, -0.75, -0.75, -0.5, 0.0, -1.0, 0.5, 0.0, 0.0, 1.0, 0.25, -0.5, 0.25, -0.75, -0.75, 0.75, -0.75, 0.25, 0.75, 0.5, 0.75, ]);
    device00.queue.submit([command_buffer001, ]);
    query000.destroy()
    texture003.destroy();
    
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture004.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    texture004.destroy();
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
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_pass_encoder0030.insertDebugMarker("marker");
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
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0030.executeBundles([])
    texture006.destroy();
    command_encoder004.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query002
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder002.insertDebugMarker("mymarker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    query000.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    
    texture007.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.popDebugGroup();
    
    device00.pushErrorScope("validation");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    
    render_pass_encoder0020.setPipeline(render_pipeline001);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder0030.setPipeline(render_pipeline002);
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    texture005.destroy();
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

    render_pass_encoder0040.setBindGroup(0, bind_group002);
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0001.setStencilReference(1);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0040.setVertexBuffer(0, buffer005);
    
    render_pass_encoder0050.setStencilReference(1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0050.setPipeline(render_pipeline001);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    buffer004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    buffer000.destroy()
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.setPipeline(render_pipeline001);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.setStencilReference(1);
    
    render_pass_encoder0031.setPipeline(render_pipeline003);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0000.setStencilReference(1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    
    device20.pushErrorScope("out-of-memory");
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

    render_pass_encoder0031.setBindGroup(0, bind_group005);
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
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
    buffer0011.destroy()
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    command_encoder008.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0040.beginOcclusionQuery(0)
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
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    device30.pushErrorScope("out-of-memory");
    command_encoder007.copyTextureToTexture(
        {
            texture: texture008
        },
        {
            texture: texture006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    command_encoder008.copyBufferToBuffer(
        buffer002,
        0,
        buffer004,
        0,
        400
    );
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer001.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline003);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setPipeline(render_pipeline003);
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query002
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0060.setPipeline(render_pipeline004);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0040.endOcclusionQuery()
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0001.setStencilReference(1);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_bundle_encoder001.setBindGroup(0, bind_group006);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder0020.endOcclusionQuery()
    buffer0010.destroy()
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0070.setStencilReference(1);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0031.setVertexBuffer(0, buffer000);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device20.queue.submit([command_buffer200, ]);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0070.insertDebugMarker("marker")
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0041.setPipeline(render_pipeline002);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    texture200.destroy();
    render_pass_encoder0070.executeBundles([])
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
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder0080.setPipeline(render_pipeline003);
    device00.pushErrorScope("internal");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0041.setStencilReference(1);
    
    command_encoder002.clearBuffer(buffer0011);
    render_bundle_encoder000.setVertexBuffer(0, buffer0010);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0060.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer000.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0001.insertDebugMarker("marker");
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0080.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder0020.setVertexBuffer(0, buffer0013);
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder0070.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder004.insertDebugMarker("mymarker");
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group007);
    render_pass_encoder0050.setVertexBuffer(0, buffer0012);
    render_pass_encoder0070.setPipeline(render_pipeline004);
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0016.destroy()
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    command_encoder007.copyBufferToBuffer(
        buffer006,
        0,
        buffer008,
        0,
        400
    );
    render_pass_encoder0021.insertDebugMarker("marker");
    
    render_pass_encoder0031.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0020.beginOcclusionQuery(0)
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    render_pass_encoder0080.pushDebugGroup("group_marker");
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    render_pass_encoder0080.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0070.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0070.setPipeline(compute_pipeline001);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    buffer0013.destroy()
    buffer0019.destroy()
    render_pass_encoder0001.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0041.beginOcclusionQuery(4)
    
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    render_pass_encoder0050.beginOcclusionQuery(1)
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.popDebugGroup();
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
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0020.endOcclusionQuery()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
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
    device30.pushErrorScope("internal");
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0000.insertDebugMarker("marker");
    
    render_pass_encoder0060.setVertexBuffer(0, buffer001);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    render_pass_encoder0051.setPipeline(render_pipeline003);
    render_bundle_encoder000.drawIndirect(buffer0012, 0);
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer0011
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    render_pass_encoder0040.setStencilReference(1);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0051.setStencilReference(1);
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer0010
        },
        {
            texture: texture008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0051.setStencilReference(1);
    {
        await buffer009.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer009.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer009.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.end();
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0080.setStencilReference(1);
    
    render_bundle_encoder100.popDebugGroup();
    
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0080.setBindGroup(0, bind_group009);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0080.insertDebugMarker("marker");
    render_pass_encoder0001.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0070.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    buffer300.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    
    render_pass_encoder0020.end();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer0021.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    buffer003.destroy()
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer005, 0);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.copyBufferToBuffer(
        buffer0019,
        0,
        buffer0019,
        0,
        400
    );
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder007.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0013,
        0,
        400
    );
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group0010);
    
    buffer005.destroy()
    {
        await buffer0023.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0023.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0023.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0001.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0080.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
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
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    device00.queue.writeBuffer(buffer0017, 0, array0, 0, array0.length);
    render_pass_encoder0051.beginOcclusionQuery(1)
    
    render_pass_encoder0080.setVertexBuffer(0, buffer000);
    render_pass_encoder0071.setPipeline(render_pipeline008);
    render_pass_encoder0080.beginOcclusionQuery(0)
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0070.insertDebugMarker("marker");
    buffer0014.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0030.setStencilReference(1);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder0032.setPipeline(render_pipeline000);
    render_pass_encoder0060.drawIndirect(buffer009, 0);
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0018.destroy()
    render_pass_encoder0051.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer0023
        },
        {
            texture: texture006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0060.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0080.drawIndirect(buffer0015, 0);
    const texture_view0090 = texture009.createView({ label: "texture_view0090" });
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0002.setPipeline(render_pipeline007);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0011);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer007);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0070.setBindGroup(0, bind_group0012);
    render_pass_encoder0001.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0040.popDebugGroup();
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0013);
    render_pass_encoder0051.setVertexBuffer(0, buffer0020);
    render_pass_encoder0041.setVertexBuffer(0, buffer0023);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
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

    render_pass_encoder0032.setBindGroup(0, bind_group0014);
    render_pass_encoder0070.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndexed(3);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0032.setVertexBuffer(0, buffer0013);
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0051.draw(3);
    render_pass_encoder0041.drawIndirect(buffer005, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.end();
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group0015);
    render_pass_encoder0032.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0019, "uint16");
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0071.setBindGroup(0, bind_group0016);
    render_pass_encoder0071.setVertexBuffer(0, buffer0020);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.setVertexBuffer(0, buffer003);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0017, 0);
    render_pass_encoder0071.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndirect(buffer005, 0);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0017);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0039, 0);
    compute_pass_encoder0070.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
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
    
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0002.setBindGroup(0, bind_group0018);
    render_pass_encoder0030.setVertexBuffer(0, buffer0012);
    render_pass_encoder0080.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer007);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder0002.setVertexBuffer(0, buffer0040);
    render_pass_encoder0080.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0002.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0070.drawIndirect(buffer0015, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0080.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0071.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0070.setBindGroup(0, bind_group0019);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0080.drawIndirect(buffer0015, 0);
    command_encoder004.popDebugGroup()
    render_pass_encoder0070.end();
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0002.drawIndirect(buffer0021, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0002.drawIndirect(buffer0025, 0);
    command_encoder008.popDebugGroup()
    render_pass_encoder0001.end();
    render_pass_encoder0021.end();
    const command_buffer008 = command_encoder008.finish();
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0080.drawIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder3000.end();
    render_pass_encoder0002.end();
    device00.queue.submit([command_buffer002, ]);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0043, "uint16");
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder0071.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer006, command_buffer008, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0071.end();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0071.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0040.end();
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0027, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0070.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.drawIndirect(buffer0015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0080.end();
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0071.drawIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0015, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndirect(buffer0015, 0);
    render_pass_encoder0002.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0080.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0038, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndirect(buffer0026, 0);
    render_pass_encoder0071.drawIndirect(buffer0024, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0002.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer001, ]);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0032.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndirect(buffer002, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0002.drawIndirect(buffer0039, 0);
    render_pass_encoder0070.drawIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer009, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0071.drawIndirect(buffer0044, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0070.drawIndirect(buffer001, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    device10.queue.submit([]);
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0080.drawIndirect(buffer0011, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0080.drawIndirect(buffer0040, 0);
    render_pass_encoder0070.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0032.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0071.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0002.end();
}