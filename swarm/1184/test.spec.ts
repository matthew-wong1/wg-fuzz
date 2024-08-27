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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_buffer000 = command_encoder000.finish();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    texture003.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer001.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    
    query100.destroy()
    
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
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query100.destroy()
    query100.destroy()
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
    buffer100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer000.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.executeBundles([])
    command_encoder002.popDebugGroup()
    buffer002.destroy()
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
        occlusionQuerySet: query001
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    texture100.destroy();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    buffer103.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setPipeline(render_pipeline000);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_pass_encoder0030.beginOcclusionQuery(0)
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder100.clearBuffer(buffer102);
    render_bundle_encoder001.insertDebugMarker("marker");
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

    render_pass_encoder0040.setBindGroup(0, bind_group000);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setPipeline(render_pipeline000);
    buffer103.destroy()
    render_bundle_encoder000.popDebugGroup();
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    buffer004.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture002.destroy();
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    buffer102.destroy()
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
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
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
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer005.destroy()
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer002.destroy()
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
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
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
        occlusionQuerySet: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const compute_pass_encoder0041 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0041" });
    command_encoder004.popDebugGroup()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0041.pushDebugGroup("group_marker")
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder101.setPipeline(render_pipeline100);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    buffer000.destroy()
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0040.setVertexBuffer(0, buffer000);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
        occlusionQuerySet: query002
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    render_bundle_encoder001.popDebugGroup();
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
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
    render_pass_encoder0021.setPipeline(render_pipeline000);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    render_pass_encoder0011.setPipeline(render_pipeline001);
    buffer001.destroy()
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    compute_pass_encoder0041.insertDebugMarker("marker")
    render_pass_encoder1000.setPipeline(render_pipeline101);
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
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    buffer008.destroy()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer104.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group003);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    
    
    buffer101.destroy()
    texture200.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query002.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture201.destroy();
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0041.setPipeline(render_pipeline001);
    render_pass_encoder0020.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    buffer105.destroy()
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
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
    render_pass_encoder0011.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0021.insertDebugMarker("marker");
    command_encoder103.clearBuffer(buffer103);
    render_pass_encoder0020.beginOcclusionQuery(0)
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
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
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    
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

    render_pass_encoder0010.setBindGroup(0, bind_group005);
    buffer0014.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.setPipeline(render_pipeline100);
    {
        await buffer0015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0015.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0017
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder001.popDebugGroup()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer009.destroy()
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    texture004.destroy();
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
    buffer006.destroy()
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    buffer0010.destroy()
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
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
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    
    
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
    buffer0013.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_pass_encoder0041.setBindGroup(0, bind_group006);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query002
    });
    texture001.destroy();
    const render_pass_encoder0033 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0033",
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
    
    render_pass_encoder0032.insertDebugMarker("marker");
    buffer200.destroy()
    render_pass_encoder0033.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_pass_encoder0031.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
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
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
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
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0041.setVertexBuffer(0, buffer002);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1031.setPipeline(render_pipeline101);
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
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0032.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
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
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group102);
    render_pass_encoder0041.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0033.executeBundles([])
    render_pass_encoder0033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0033.setPipeline(render_pipeline002);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0032.setPipeline(render_pipeline003);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_pass_encoder0031.setPipeline(render_pipeline003);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder1031.setVertexBuffer(0, buffer101);
    render_pass_encoder0010.setVertexBuffer(0, buffer005);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0033.pushDebugGroup("group_marker");
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    {
        await buffer0015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0015.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1030.beginOcclusionQuery(0)
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.draw(3);
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
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1001.insertDebugMarker("marker");
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
    
    render_pass_encoder0033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setPipeline(render_pipeline101);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_bundle_encoder102.draw(3);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    buffer003.destroy()
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0032.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.popDebugGroup();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    render_pass_encoder0041.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder0041.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder1001.setPipeline(render_pipeline101);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0033.setBindGroup(0, bind_group007);
    render_pass_encoder0030.setVertexBuffer(0, buffer0018);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.draw(3);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group008);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
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
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder0033.setVertexBuffer(0, buffer000);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1031.end();
    render_pass_encoder0021.setVertexBuffer(0, buffer0017);
    command_encoder002.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0033.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1001.setVertexBuffer(0, buffer105);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    compute_pass_encoder0040.popDebugGroup()
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    render_pass_encoder0011.setVertexBuffer(0, buffer000);
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    render_pass_encoder0033.drawIndirect(buffer004, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0032.setBindGroup(0, bind_group009);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0032.setVertexBuffer(0, buffer0013);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder0032.drawIndirect(buffer006, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder0011.drawIndirect(buffer007, 0);
    render_pass_encoder0032.end();
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0033.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.setVertexBuffer(0, buffer002);
    render_pass_encoder0033.end();
    render_pass_encoder0033.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1001.end();
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group107);
    render_pass_encoder1020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0032.drawIndirect(buffer003, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1030.setVertexBuffer(0, buffer1011);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    command_encoder100.popDebugGroup()
    render_pass_encoder0033.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0021.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1030.end();
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0033.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder1001.end();
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1031.end();
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0033.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0033.drawIndirect(buffer005, 0);
    render_pass_encoder0032.drawIndirect(buffer0020, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0033.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0033.drawIndirect(buffer0010, 0);
    render_pass_encoder0033.drawIndirect(buffer0010, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0033.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0033.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0033.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0033.drawIndirect(buffer0017, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0040.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1031.end();
    render_pass_encoder0041.end();
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder1031.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1031.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0033.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0033.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0033.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0033.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0032.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0033.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0033.drawIndexed(3);
    render_pass_encoder0033.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0032.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder1031.end();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0033.drawIndirect(buffer006, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.end();
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0033.drawIndirect(buffer0019, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0033.endOcclusionQuery()
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.end();
    render_pass_encoder0030.end();
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0033.drawIndirect(buffer002, 0);
    render_pass_encoder1031.end();
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0033.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0033.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0032.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0041.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0033.drawIndirect(buffer006, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0033.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder0033.drawIndirect(buffer0024, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1010.drawIndexed(3);
}