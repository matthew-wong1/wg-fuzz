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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query000.destroy()
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array0 = new Float32Array([1.0, -0.75, -1.0, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, -0.75, -0.5, 0.0, -0.5, 1.0, 0.5, 1.0, 1.0, -0.25, 0.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, 1.0, -0.5, 0.5, 1.0, 1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.5, -0.5, 0.5, -0.5, -0.25, -1.0, -1.0, 1.0, 0.25, -1.0, -0.75, 0.25, -0.5, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.75, 0.0, -0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.25, 0.0, 1.0, 0.5, 0.25, 0.0, 0.25, -1.0, 0.0, 0.25, 0.0, -0.75, -0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 0.25, 0.75, 0.25, ]);
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const array1 = new Float32Array([-0.75, 0.5, 0.75, -0.5, -0.5, -0.75, 1.0, 0.25, 0.5, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, 1.0, 1.0, -0.25, 0.0, -0.25, 1.0, 1.0, 0.5, 1.0, -1.0, 0.0, -0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -1.0, 0.0, -0.75, 0.0, -0.5, -0.5, -0.25, -0.75, 0.0, 1.0, -0.75, 1.0, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.25, 1.0, 0.75, -0.5, 0.75, -0.75, 0.25, 0.0, 0.5, -0.75, -0.75, -1.0, 0.5, 0.5, 0.75, -0.5, -0.25, 0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 0.25, 0.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 0.25, -1.0, -1.0, 0.5, -0.25, -0.5, -0.5, 1.0, -0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0000.setStencilReference(1);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.pushErrorScope("out-of-memory");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    
    render_pass_encoder0000.executeBundles([])
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0000.executeBundles([])
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.pushErrorScope("validation");
    render_pass_encoder0010.executeBundles([])
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.insertDebugMarker("mymarker");
    device20.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_buffer002 = command_encoder002.finish();
    
    
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([-0.25, -0.5, 1.0, 1.0, 0.75, 0.75, 0.75, 0.25, -0.25, 0.0, -0.75, -1.0, -0.5, 0.75, 0.75, -0.25, 1.0, 0.25, 1.0, 0.5, -1.0, 0.0, -0.75, 0.0, 0.75, -0.5, 0.5, -0.75, -0.5, 0.0, 0.0, -1.0, 0.25, -1.0, 0.75, -1.0, -0.75, -0.5, -0.25, -0.5, -1.0, 0.5, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, -0.25, -0.75, -0.25, 1.0, -1.0, 0.75, 0.5, 0.75, 0.25, 0.75, -0.25, -0.75, 0.75, -1.0, -0.25, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, 0.0, -0.5, 0.5, 0.25, -1.0, -1.0, -0.75, -0.25, 0.0, -0.25, 0.75, 1.0, -0.5, -0.5, 0.5, -0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.5, -0.75, 0.25, 1.0, 0.0, -0.5, 0.0, ]);
    device00.queue.submit([command_buffer002, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    query001.destroy()
    device00.pushErrorScope("validation");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query001.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0010.popDebugGroup();
    
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
        occlusionQuerySet: query001
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0030.setStencilReference(1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0010.setStencilReference(1);
    device10.queue.submit([]);
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
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
        occlusionQuerySet: query000
    });
    device20.pushErrorScope("internal");
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query000.destroy()
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    query000.destroy()
    render_pass_encoder0031.setPipeline(render_pipeline000);
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.executeBundles([])
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_pass_encoder0050.setBindGroup(0, bind_group001);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array3 = new Float32Array([0.25, 0.75, -0.25, 0.5, -0.5, 0.5, 0.25, 1.0, -0.25, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, 0.5, 1.0, 0.5, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, 0.5, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.5, -0.75, -1.0, -0.25, -0.75, -0.75, -0.75, -1.0, 0.25, 0.75, -0.75, -0.25, -0.25, -0.75, 0.5, 1.0, 0.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.5, 1.0, 0.0, -0.5, -0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, -0.75, 0.0, 0.5, 0.25, -0.25, 0.25, 1.0, -0.75, -1.0, -0.75, -0.25, -1.0, -0.5, 0.75, 0.25, -0.5, -0.25, -0.5, 0.75, 0.0, 0.25, 0.75, 0.25, 1.0, -0.5, -1.0, -1.0, -1.0, 0.25, -0.25, -1.0, -1.0, -0.75, -1.0, 1.0, ]);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer100.destroy()
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group002);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder100.popDebugGroup()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
        occlusionQuerySet: query001
    });
    
    render_pass_encoder0030.beginOcclusionQuery(0)
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer006.destroy()
    
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
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0032.executeBundles([])
    buffer002.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer008.destroy()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.setPipeline(render_pipeline000);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer003);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0001.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0040.insertDebugMarker("marker")
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

    render_pass_encoder0032.setBindGroup(0, bind_group003);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture000.destroy();
    render_pass_encoder0041.beginOcclusionQuery(1)
    
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0001.setStencilReference(1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.75, -0.5, -1.0, 0.5, -1.0, 0.0, -0.25, -0.5, 0.0, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.25, -0.5, 0.75, -1.0, 0.25, 0.5, -0.75, -0.75, -0.75, -0.5, -1.0, 0.5, 0.5, 0.0, 0.5, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, -0.75, 1.0, 0.75, 0.0, 1.0, 0.5, -0.5, 0.75, -1.0, -0.25, -0.5, -0.75, -0.5, -0.25, 0.0, -0.75, 0.5, -0.5, 0.0, -1.0, -1.0, 1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.5, -0.5, 0.5, 1.0, 0.25, 0.5, 1.0, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, 1.0, -0.5, -0.75, 0.75, -0.5, -1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -1.0, -0.25, 0.25, -0.25, 1.0, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, -0.5, -0.5, ]);
    render_pass_encoder0031.insertDebugMarker("marker");
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0050.setStencilReference(1);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.copyBufferToBuffer(
        buffer007,
        0,
        buffer0010,
        0,
        400
    );
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setStencilReference(1);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder004.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    render_bundle_encoder000.draw(3);
    texture001.destroy();
    command_encoder003.copyBufferToBuffer(
        buffer0010,
        0,
        buffer002,
        0,
        400
    );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer0010.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0050.setStencilReference(1);
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer007
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0050.setVertexBuffer(0, buffer005);
    query101.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer0011.destroy()
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0011.setStencilReference(1);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0050.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.beginOcclusionQuery(1)
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.setStencilReference(1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0032.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0010.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0041.executeBundles([])
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    buffer0012.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0032.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0041.setPipeline(render_pipeline000);
    compute_pass_encoder0040.setPipeline(compute_pipeline002);
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

    render_pass_encoder0041.setBindGroup(0, bind_group005);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder0031.drawIndirect(buffer004, 0);
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder100.popDebugGroup()
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.setIndexBuffer(buffer002, "uint16");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0031.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer004, 0);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query001.destroy()
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0041.setVertexBuffer(0, buffer001);
    render_pass_encoder0010.popDebugGroup();
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0070.setPipeline(compute_pipeline003);
    render_pass_encoder0041.drawIndirect(buffer000, 0);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    
    render_pass_encoder0041.end();
    render_bundle_encoder000.finish();
    render_pass_encoder0011.setStencilReference(1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0032.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    render_pass_encoder0040.setPipeline(render_pipeline000);
    buffer101.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0001.setStencilReference(1);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0001.pushDebugGroup("group_marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
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
    texture003.destroy();
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer005
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
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer0016.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer0011
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
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0070.setBindGroup(0, bind_group007);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder0061.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture000.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0032.setVertexBuffer(0, buffer005);
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query100.destroy()
    render_pass_encoder0011.executeBundles([render_bundle_encoder000, render_bundle_encoder001, ])
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
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
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0032.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture100.destroy();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder0061.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0012.executeBundles([render_bundle_encoder000, render_bundle_encoder002, ])
    buffer102.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0032.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
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
    render_pass_encoder0001.setStencilReference(1);
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    render_pass_encoder0061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_pass_encoder0033 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0061.setPipeline(render_pipeline001);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder0033.insertDebugMarker("marker");
    buffer004.destroy()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.setPipeline(render_pipeline000);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0033.setPipeline(render_pipeline000);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder0041.popDebugGroup();
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

    render_pass_encoder0030.setBindGroup(0, bind_group008);
    render_pass_encoder0032.drawIndirect(buffer0012, 0);
    render_pass_encoder0051.setPipeline(render_pipeline000);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0033.setBindGroup(0, bind_group009);
    render_pass_encoder0032.setIndexBuffer(buffer0011, "uint16");
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0071.setPipeline(render_pipeline001);
    command_encoder100.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.setVertexBuffer(0, buffer0022);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0033.setVertexBuffer(0, buffer0017);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0070.setPipeline(render_pipeline000);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0050.drawIndirect(buffer004, 0);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0071.setBindGroup(0, bind_group0011);
    render_pass_encoder0050.draw(3);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group0012);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group0013);
    render_pass_encoder0071.setVertexBuffer(0, buffer0024);
    render_pass_encoder0033.drawIndirect(buffer0030, 0);
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

    render_pass_encoder0040.setBindGroup(0, bind_group0014);
    render_pass_encoder0001.setPipeline(render_pipeline001);
    render_pass_encoder0040.setVertexBuffer(0, buffer0028);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
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

    render_pass_encoder0001.setBindGroup(0, bind_group0015);
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

    render_pass_encoder0061.setBindGroup(0, bind_group0016);
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0061.setVertexBuffer(0, buffer0036);
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0051.setVertexBuffer(0, buffer0013);
    compute_pass_encoder0070.end();
    render_pass_encoder0061.drawIndirect(buffer000, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer0024);
    render_pass_encoder0071.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0051.draw(3);
    render_pass_encoder0061.end();
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0071.drawIndirect(buffer000, 0);
    render_pass_encoder0030.end();
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group0017);
    render_pass_encoder0033.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0061.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.setVertexBuffer(0, buffer0032);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0012.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0033.drawIndirect(buffer0024, 0);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0018);
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0070.setVertexBuffer(0, buffer0038);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0022, 0);
    render_pass_encoder0033.drawIndirect(buffer0036, 0);
    render_pass_encoder0071.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0070.drawIndirect(buffer000, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0071.end();
    render_pass_encoder0033.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group0019);
    render_pass_encoder0033.end();
    render_pass_encoder0070.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0012.popDebugGroup();
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group0020);
    render_pass_encoder0061.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0060.setVertexBuffer(0, buffer0039);
    render_pass_encoder0033.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0060.setIndexBuffer(buffer008, "uint16");
    command_encoder005.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0012.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0070.setBindGroup(0, bind_group0021);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.end();
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0012.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0033.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0040.end();
    render_pass_encoder0012.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    render_pass_encoder0051.end();
    device10.queue.submit([command_buffer100, ]);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    command_encoder004.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0071.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0031.end();
    render_pass_encoder0041.end();
    command_encoder000.popDebugGroup()
    render_pass_encoder0032.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0033.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0051.drawIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0010, "uint16");
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0001.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0071.drawIndirect(buffer0049, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0033.setIndexBuffer(buffer0048, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0061.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0071.end();
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0051.end();
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0022);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0033.drawIndexed(3);
    render_pass_encoder0071.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0013, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0050.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0070.popDebugGroup()
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0023);
    render_pass_encoder0061.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndirect(buffer0053, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0046, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0033.drawIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0032.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0061.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0038, 0);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0024);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0033.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer006, command_buffer007, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0033.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0071.drawIndirect(buffer0050, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0061.drawIndirect(buffer0055, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0038, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0070.drawIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0055, 0);
    render_pass_encoder0033.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0060.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0001.drawIndirect(buffer0052, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0070.drawIndirect(buffer0029, 0);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0033.end();
    render_pass_encoder0061.drawIndirect(buffer0041, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0033.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0061.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0051.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0071.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0033.drawIndirect(buffer0049, 0);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0032.drawIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0012.drawIndirect(buffer0043, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.end();
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0056, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0033.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0032.drawIndirect(buffer009, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0051.popDebugGroup();
}