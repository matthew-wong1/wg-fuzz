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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([1.0, -1.0, 0.0, -0.75, -0.5, -1.0, -0.5, 0.0, -0.25, -0.25, -0.5, -0.75, -0.5, -0.25, -0.5, 0.25, 0.0, -0.5, -0.5, 0.75, 0.5, 0.75, 0.75, 1.0, 0.0, -0.75, -0.75, -0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 1.0, 1.0, 1.0, 1.0, -0.5, -0.75, 1.0, 0.5, 0.0, -0.75, 0.0, -0.75, 0.25, 1.0, -0.25, -0.75, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.25, 0.25, 0.25, 0.25, 0.5, -0.25, 0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.25, 0.0, 0.75, -0.5, 1.0, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, -0.25, 0.5, -0.5, 0.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, -1.0, 0.0, -1.0, 0.25, 1.0, 0.25, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -0.75, 0.5, -0.75, 0.25, 1.0, 0.25, -0.25, 0.25, -0.5, -0.75, 0.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, -0.25, 0.5, 0.0, -0.5, 0.25, 0.5, 0.0, 0.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.75, 0.25, 0.0, -0.25, -0.5, -1.0, -0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 0.0, 0.75, 1.0, 0.75, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, -0.5, -0.75, -0.25, 1.0, 0.0, 1.0, 0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.75, -0.75, -0.5, 1.0, -0.25, -0.25, 0.25, 0.25, -1.0, 0.75, 1.0, 0.5, -1.0, 0.5, -0.5, -0.5, 0.25, -1.0, 1.0, -1.0, -0.5, 1.0, 0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer000.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const array2 = new Float32Array([0.5, 0.5, 0.75, 0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, -0.25, -1.0, 0.0, 1.0, -0.75, 0.25, 0.0, -0.25, -1.0, 0.5, 0.0, 0.5, -1.0, 0.25, 0.0, 0.5, 0.5, -1.0, 0.75, 0.75, -0.75, 0.75, -1.0, 0.0, -1.0, 0.0, -1.0, 0.5, 0.5, 0.5, -0.75, 0.75, -0.75, 1.0, -0.25, 1.0, 0.0, 0.25, -0.25, -0.25, 0.5, -0.5, 0.25, 0.5, -0.5, -1.0, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, 0.75, 0.25, 0.75, 0.25, 0.0, -0.5, 1.0, 0.0, 1.0, 1.0, 0.25, 1.0, -0.25, 0.25, -1.0, 1.0, 0.5, 0.25, -0.5, -0.25, 0.75, -0.25, 1.0, 0.75, -0.25, -0.75, 0.75, 0.0, 0.5, 0.25, -1.0, 0.75, -0.5, 1.0, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    device10.destroy();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.pushErrorScope("validation");
    command_encoder000.clearBuffer(buffer001);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture001.destroy();
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture000.destroy();
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    query000.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0001.executeBundles([render_bundle_encoder001, ])
    command_encoder002.insertDebugMarker("mymarker");
    texture003.destroy();
    const array3 = new Float32Array([-0.25, -1.0, -0.75, -0.5, -0.5, 1.0, 0.0, 0.75, 0.75, 0.0, -0.75, 0.5, 0.25, 0.0, 0.0, 0.5, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, -0.75, 0.75, -0.75, 0.0, 0.25, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.75, 0.25, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.0, 0.0, 0.75, -1.0, -0.5, -0.75, 0.0, 1.0, -0.25, 1.0, 0.0, 0.25, 0.25, -0.75, -0.75, -0.25, -0.5, -0.25, 0.0, 1.0, -0.25, 0.75, -0.75, 1.0, 1.0, -1.0, 0.75, -0.5, 0.25, 0.0, -1.0, -1.0, -1.0, 0.5, 1.0, 1.0, 0.5, 0.0, -0.25, -1.0, 0.0, -0.5, -0.75, ]);
    render_bundle_encoder000.popDebugGroup();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_pass_encoder0001.executeBundles([])
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0020.popDebugGroup();
    texture200.destroy();
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
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
    device20.pushErrorScope("internal");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query001.destroy()
    const array4 = new Float32Array([-1.0, -0.5, 0.25, -0.5, 0.75, 0.0, -0.5, 1.0, -1.0, 1.0, 1.0, 0.5, -0.25, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 0.0, -0.5, -0.75, 0.5, 0.0, -0.25, 0.5, 0.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.75, -0.75, 1.0, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -0.25, 1.0, 0.25, 0.75, 0.75, 0.5, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 0.75, 0.0, 1.0, -0.5, 0.75, 0.5, -0.75, 0.0, -0.75, -0.25, 0.0, 0.75, -0.5, -0.5, -1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 1.0, -0.25, -0.75, -1.0, -1.0, 0.0, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, 0.5, -0.75, ]);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture002.destroy();
    query000.destroy()
    query001.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
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
    
    render_pass_encoder0020.setStencilReference(1);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        occlusionQuerySet: query000
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.75, 0.75, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, -0.25, 0.75, -0.5, 0.25, -1.0, 0.5, 0.25, 1.0, 0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 0.0, -0.75, 0.0, -0.5, 0.75, -1.0, 1.0, 0.25, 0.5, 0.25, -0.75, -0.25, -0.25, 0.25, 0.75, -0.25, 0.0, -0.5, -0.25, 1.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.75, -0.25, -0.75, 0.5, 1.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.5, 1.0, 0.75, 0.5, 0.0, 0.25, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, -1.0, -0.75, 1.0, -1.0, -0.5, -0.75, -0.25, -0.5, -0.75, 1.0, -1.0, -0.5, 0.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.25, -0.5, -0.25, ]);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    render_pass_encoder0002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.setStencilReference(1);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
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
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0011.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0002.insertDebugMarker("marker");
    
    texture001.destroy();
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0011.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query000.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0001.executeBundles([render_bundle_encoder000, ])
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device20.destroy();
    
    
    render_pass_encoder0002.pushDebugGroup("group_marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array6 = new Float32Array([0.25, 0.5, 0.25, 1.0, 0.25, 0.75, -0.25, 0.75, 0.5, -0.5, 0.0, 0.75, 0.75, 0.25, 0.5, 0.75, 0.25, -0.25, 1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.0, 0.25, -0.5, 0.0, -0.5, -0.75, 0.25, 0.0, 0.5, 0.25, -0.25, 1.0, -1.0, -0.5, 0.5, 0.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 0.75, 0.0, -0.25, 0.25, -1.0, -0.5, 0.75, 0.0, 0.25, -0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, 0.0, 0.0, 0.25, -0.5, -0.25, 0.0, 0.0, 0.5, -1.0, -0.5, 0.25, 0.25, -0.75, 0.75, -1.0, 0.0, -0.75, -1.0, -0.75, -0.25, 1.0, 0.0, 1.0, 0.5, 0.5, 0.25, -1.0, -0.5, 0.25, 0.25, -0.25, -0.5, ]);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_pass_encoder0011.beginOcclusionQuery(0)
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
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

    render_pass_encoder0001.setBindGroup(0, bind_group000);
    texture201.destroy();
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder0002.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    render_pass_encoder0002.setStencilReference(1);
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    render_pass_encoder0002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.popDebugGroup();
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    texture005.destroy();
    render_pass_encoder0011.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0011.setStencilReference(1);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0002.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0061,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    command_encoder003.clearBuffer(buffer003);
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
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
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
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
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0002.setPipeline(render_pipeline001);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0031.setPipeline(render_pipeline001);
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder0002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const texture_view0062 = texture006.createView({ label: "texture_view0062" });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    render_pass_encoder0022.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    buffer006.destroy()
    device00.pushErrorScope("validation");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0022.setPipeline(render_pipeline000);
    render_pass_encoder0002.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    const texture_view0063 = texture006.createView({ label: "texture_view0063" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0031.pushDebugGroup("group_marker");
    device10.destroy();
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture006
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0022.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0002.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
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

    render_pass_encoder0002.setBindGroup(0, bind_group002);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
        occlusionQuerySet: query004
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
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

    render_pass_encoder0022.setBindGroup(0, bind_group003);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_pass_encoder0021.insertDebugMarker("marker");
    
    render_pass_encoder0010.setPipeline(render_pipeline002);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    render_pass_encoder0031.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder0022.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0022.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.executeBundles([])
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query003
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0041.pushDebugGroup("group_marker");
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
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0002.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    command_encoder002.clearBuffer(buffer008);
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0002.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.setPipeline(render_pipeline003);
    render_pass_encoder0002.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer005.destroy()
    buffer004.destroy()
    render_pass_encoder0012.pushDebugGroup("group_marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    render_pass_encoder0022.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    
    render_pass_encoder0021.setStencilReference(1);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group005);
    render_pass_encoder0022.setVertexBuffer(0, buffer0011);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0022.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0022.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0020.popDebugGroup();
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_pass_encoder0041.setPipeline(render_pipeline001);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0012.setPipeline(render_pipeline001);
    render_pass_encoder0031.popDebugGroup();
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group006);
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
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0002.setVertexBuffer(0, buffer0011);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder0022.insertDebugMarker("marker");
    texture004.destroy();
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    buffer0013.destroy()
    render_pass_encoder0002.drawIndirect(buffer001, 0);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer0015.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0022.draw(3);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group008);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query004
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    render_pass_encoder0032.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer0014.destroy()
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0032.setPipeline(render_pipeline003);
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group009);
    query004.destroy()
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0022.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0051,
            },
        ],
        occlusionQuerySet: query005
    });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0063,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer0013);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0002.insertDebugMarker("marker");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setVertexBuffer(0, buffer0013);
    render_pass_encoder0012.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.setVertexBuffer(0, buffer0022);
    render_pass_encoder0002.end();
    render_pass_encoder0051.setPipeline(render_pipeline002);
    render_pass_encoder0022.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0050.setPipeline(render_pipeline004);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.setVertexBuffer(0, buffer0012);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0011);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0032.setBindGroup(0, bind_group0012);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0032.setVertexBuffer(0, buffer002);
    render_pass_encoder0020.end();
    render_pass_encoder0040.end();
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.setVertexBuffer(0, buffer0014);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.setPipeline(render_pipeline003);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
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

    render_pass_encoder0030.setBindGroup(0, bind_group0013);
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
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group0014);
    render_pass_encoder0030.setVertexBuffer(0, buffer0026);
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0011.setVertexBuffer(0, buffer0030);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
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
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group0015);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.setVertexBuffer(0, buffer005);
    render_pass_encoder0032.drawIndirect(buffer0012, 0);
    render_pass_encoder0012.setVertexBuffer(0, buffer0011);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0012.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
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
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0016);
    render_pass_encoder0012.end();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.setVertexBuffer(0, buffer0032);
    render_pass_encoder0021.end();
    render_pass_encoder0041.setVertexBuffer(0, buffer0024);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0012.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0002.draw(3);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
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
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group0017);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0051.setVertexBuffer(0, buffer0014);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0001.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0011.end();
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0032.draw(3);
    render_pass_encoder0002.drawIndirect(buffer0011, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer007);
    render_pass_encoder0001.end();
    render_pass_encoder0041.end();
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0051.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0012.drawIndirect(buffer0022, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0002.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0022.setIndexBuffer(buffer002, "uint16");
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0034, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0032.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0033, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0022.drawIndirect(buffer0025, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0050.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0002.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0032.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0002.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0022, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    command_encoder001.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer0012, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0022.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0002.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0002.drawIndirect(buffer009, 0);
    render_pass_encoder0002.drawIndirect(buffer0010, 0);
    device00.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0022.end();
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0022.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0032.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0002.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0012.drawIndirect(buffer0024, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0027, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0022.drawIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer005, 0);
    device20.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0025, "uint16");
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0012.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder0012.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0002.drawIndirect(buffer004, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0032.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder0012.drawIndirect(buffer0011, 0);
    render_pass_encoder0012.drawIndirect(buffer007, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0032.drawIndirect(buffer0036, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0032.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0012.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0021.end();
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0012.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0018, 0);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0020, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.draw(3);
    render_pass_encoder0022.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0022.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder0032.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0002.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0022.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0040.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0002.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0022.drawIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0014, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0002.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0012.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0022.drawIndirect(buffer007, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0002.drawIndirect(buffer008, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0022.drawIndirect(buffer002, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0032.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0012.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0002.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0002.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0002.draw(3);
    render_pass_encoder0002.drawIndirect(buffer0012, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0010.end();
    render_pass_encoder0002.drawIndirect(buffer006, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0022.end();
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0020, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0032, 0);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0012.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0051.drawIndirect(buffer005, 0);
    render_pass_encoder0002.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer005, ]);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0002.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder0002.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0050.end();
    render_pass_encoder0020.end();
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0002.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0002.drawIndirect(buffer008, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.end();
    render_pass_encoder0031.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0022.draw(3);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer004, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0036, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0051.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0002.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0022.draw(3);
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer005, ]);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0038, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0032.drawIndirect(buffer005, 0);
    render_pass_encoder0002.draw(3);
    render_pass_encoder0032.end();
    render_pass_encoder0010.end();
    render_pass_encoder0002.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0012, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0002.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0002.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0002.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0002.drawIndirect(buffer009, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0012.end();
    render_pass_encoder0022.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0022.end();
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0012.drawIndirect(buffer008, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0002.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0012.drawIndirect(buffer004, 0);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0022.drawIndirect(buffer0010, 0);
    render_pass_encoder0022.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0032.drawIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndirect(buffer0037, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder0002.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0022.draw(3);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0022.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    render_pass_encoder0002.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0012.drawIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0012.end();
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0022.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0051.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0022.drawIndirect(buffer008, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0032.drawIndirect(buffer0012, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0012.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0032.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0002.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0022.drawIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0012.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0022.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0001.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0002.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0022.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0012.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0012.drawIndirect(buffer0041, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0002.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder0002.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0032.end();
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0012.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0022.drawIndirect(buffer0016, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0010.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer007, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0022.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0032.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0002.drawIndirect(buffer002, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0002.drawIndirect(buffer0037, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0051.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0021.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0032.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0002.drawIndirect(buffer0014, 0);
    render_pass_encoder0022.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0022.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0023, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0012.drawIndirect(buffer0038, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0022.end();
    render_pass_encoder0022.end();
    render_pass_encoder0032.drawIndirect(buffer003, 0);
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0022.drawIndirect(buffer0012, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0051.drawIndirect(buffer0038, 0);
    render_pass_encoder0002.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0032.drawIndirect(buffer0037, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0032.end();
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0031.draw(3);
}