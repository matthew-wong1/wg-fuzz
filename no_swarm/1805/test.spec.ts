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
    const array0 = new Float32Array([0.0, -0.75, 1.0, 0.75, 0.0, 0.75, 0.5, 0.25, 0.25, -0.5, -0.5, -1.0, 0.75, 0.25, -0.5, 0.5, -0.5, -0.75, -0.25, 1.0, 1.0, -1.0, -0.75, 0.0, 0.25, -0.75, 0.25, 0.25, 0.5, -1.0, 0.75, 0.75, -0.75, -0.5, -0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.25, 0.25, 1.0, -1.0, 0.25, -0.5, -0.25, 0.75, -1.0, -1.0, -0.75, -1.0, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 0.0, 0.75, 0.0, 0.0, 0.5, 0.0, -1.0, 0.0, 0.25, 0.75, -0.5, 0.0, 0.25, 0.5, 0.25, 0.75, -0.25, -0.75, 0.75, 1.0, -0.25, -0.25, -1.0, -0.5, -0.75, 0.5, 0.5, -0.75, -1.0, 0.75, 0.0, 0.75, 0.25, -0.5, -1.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.25, -0.25, ]);
    const array1 = new Float32Array([-1.0, 0.0, -0.75, -1.0, 0.25, 0.0, 0.0, -0.25, -0.5, 0.75, 1.0, 0.25, 1.0, -0.25, 0.25, 1.0, 0.5, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.5, 0.25, 0.5, -0.25, 0.25, -0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.5, -1.0, 0.25, -0.75, 0.5, 0.75, 0.25, 0.25, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, -0.75, -0.25, -0.75, 1.0, -0.75, 0.75, -0.75, -1.0, -0.75, 0.75, -0.75, 0.25, 0.75, -1.0, 0.75, 0.75, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 1.0, -1.0, -0.5, -0.25, 1.0, 1.0, -1.0, 0.5, 1.0, -0.75, -0.25, -1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer001 = command_encoder001.finish();
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.popDebugGroup()
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("out-of-memory");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder000.popDebugGroup()
    command_encoder200.clearBuffer(buffer200);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_buffer002 = command_encoder002.finish();
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    buffer001.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    buffer200.destroy()
    
    
    
    const array2 = new Float32Array([-0.5, 0.25, -1.0, -0.5, 0.75, -0.75, -0.75, -0.75, -0.75, -0.75, 0.0, 0.0, -1.0, 0.0, -1.0, 1.0, -0.25, 0.75, 1.0, 0.5, 1.0, 0.5, 1.0, -0.75, 0.75, 0.25, 0.5, 1.0, -0.75, -0.25, 0.5, 0.5, 1.0, 0.75, 0.25, 0.5, 0.0, -0.5, -0.5, 0.75, 0.0, -0.5, -0.5, 0.5, 0.5, 0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 0.0, -0.25, 0.0, 1.0, 0.5, 1.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, -1.0, -1.0, -0.75, 0.5, 0.25, -0.5, -0.5, 0.25, 0.5, -1.0, 0.25, 0.75, 0.25, -0.75, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, -0.75, -0.5, 1.0, 0.25, -0.5, 1.0, 0.75, -0.75, 0.25, -0.5, -0.75, -0.75, 0.25, 0.25, -0.5, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.destroy();
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    texture000.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    buffer000.destroy()
    render_pass_encoder0030.popDebugGroup();
    
    device20.pushErrorScope("out-of-memory");
    command_encoder005.pushDebugGroup("mygroupmarker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0030.setStencilReference(1);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setStencilReference(1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
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
    command_encoder201.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder005.clearBuffer(buffer001);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.setPipeline(render_pipeline001);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    render_pass_encoder0000.setStencilReference(1);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    buffer003.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query002.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    buffer201.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        occlusionQuerySet: query002
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query002.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query002.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder200.popDebugGroup();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder203.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.queue.submit([]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    texture001.destroy();
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder203.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    render_pass_encoder0060.insertDebugMarker("marker");
    buffer008.destroy()
    const command_buffer301 = command_encoder301.finish();
    
    
    render_pass_encoder0040.setPipeline(render_pipeline001);
    const array3 = new Float32Array([-1.0, 0.0, 0.25, -1.0, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.25, 0.25, 0.25, -1.0, -0.25, -1.0, 0.5, -0.75, -0.25, 0.25, -0.5, 0.75, 1.0, 0.25, -0.75, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, 0.0, 0.75, 0.5, -0.5, 0.25, 0.0, 1.0, 0.75, -0.75, -0.75, 0.0, -0.5, 0.25, -0.5, 1.0, -0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, -0.25, -0.25, 0.25, -0.75, -0.75, 0.75, -0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 1.0, -0.75, -0.75, 0.25, 0.0, 0.75, -0.75, 0.75, -0.5, 1.0, 1.0, 0.75, 0.0, 0.5, 1.0, 0.75, 0.0, 0.75, -0.25, -0.75, -0.5, 0.75, 0.0, 1.0, -1.0, 0.0, 1.0, -0.5, -0.5, -1.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0050.beginOcclusionQuery(0)
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder0030.setVertexBuffer(0, buffer003);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
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
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0000.insertDebugMarker("marker");
    texture202.destroy();
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
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer300 = command_encoder300.finish();
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    device30.pushErrorScope("validation");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    query002.destroy()
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.beginOcclusionQuery(0)
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0040.setStencilReference(1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer006.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0051.setPipeline(render_pipeline003);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0060.setPipeline(render_pipeline002);
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    buffer005.destroy()
    buffer002.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0050.beginOcclusionQuery(0)
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0031.executeBundles([])
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
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
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer008);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0031.setPipeline(render_pipeline000);
    
    
    render_bundle_encoder001.draw(3);
    render_pass_encoder0061.setPipeline(render_pipeline003);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0061.setBindGroup(0, bind_group002);
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0030.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
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
        occlusionQuerySet: query000
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
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer202.destroy()
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder001.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.pushErrorScope("internal");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    texture201.destroy();
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0070.setPipeline(render_pipeline003);
    
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    render_pass_encoder0070.pushDebugGroup("group_marker");
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_bundle_encoder203.popDebugGroup();
    
    command_encoder004.clearBuffer(buffer003);
    render_pass_encoder0041.setPipeline(render_pipeline002);
    query200.destroy()
    texture301.destroy();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0041.setBindGroup(0, bind_group004);
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder301.popDebugGroup();
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0061.setVertexBuffer(0, buffer002);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query000.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    
    buffer200.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query200.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_pass_encoder2000.executeBundles([])
    
    render_pass_encoder0070.popDebugGroup();
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_pass_encoder0031.setBindGroup(0, bind_group006);
    texture300.destroy();
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer0015,
        0
    )
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query003
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer004.destroy()
    device20.queue.submit([command_buffer200, ]);
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder000.popDebugGroup();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0041.setVertexBuffer(0, buffer001);
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0080.setPipeline(render_pipeline003);
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    texture204.destroy();
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const command_buffer006 = command_encoder006.finish();
    
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    query004.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0080.setStencilReference(1);
    
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeBuffer(buffer0016, 0, array0, 0, array0.length);
    
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query200
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder0050.setVertexBuffer(0, buffer0016);
    render_pass_encoder0061.drawIndirect(buffer002, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0041.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setVertexBuffer(0, buffer009);
    compute_pass_encoder0040.setPipeline(compute_pipeline001);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0030.end();
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0080.setBindGroup(0, bind_group008);
    render_pass_encoder0080.setVertexBuffer(0, buffer001);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0080.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0000.setVertexBuffer(0, buffer005);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0080.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.setVertexBuffer(0, buffer0018);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0040.draw(3);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
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

    render_pass_encoder0060.setBindGroup(0, bind_group009);
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder0050.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0060.setVertexBuffer(0, buffer0016);
    render_pass_encoder0080.end();
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0060.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group0010);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    const command_buffer003 = command_encoder003.finish();
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder0051.setVertexBuffer(0, buffer0027);
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
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

    render_pass_encoder0070.setBindGroup(0, bind_group0012);
    render_pass_encoder0080.setIndexBuffer(buffer0022, "uint16");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    render_pass_encoder0040.end();
    render_pass_encoder2000.popDebugGroup();
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0070.setVertexBuffer(0, buffer001);
    render_pass_encoder0061.end();
    render_pass_encoder0070.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0061.drawIndirect(buffer0013, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0070.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer207, 0);
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0013);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0060.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0033, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0051.draw(3);
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    compute_pass_encoder0040.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    command_encoder005.popDebugGroup()
    render_pass_encoder0061.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0061.popDebugGroup();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const command_buffer005 = command_encoder005.finish();
    command_encoder201.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0051.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndirect(buffer0018, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0080.drawIndirect(buffer0015, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0033, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0050.draw(3);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0050.endOcclusionQuery()
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    const command_buffer007 = command_encoder007.finish();
    device00.queue.submit([command_buffer002, command_buffer006, command_buffer007, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.draw(3);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer007, ]);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0060.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0051.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0014);
    render_pass_encoder0070.drawIndirect(buffer0033, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    compute_pass_encoder2000.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0080.end();
    render_pass_encoder0060.drawIndexed(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2015, 0);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0061.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0080.drawIndirect(buffer002, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0080.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0051.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0033, 0);
}