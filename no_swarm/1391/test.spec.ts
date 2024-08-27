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
    
    
    const array0 = new Float32Array([0.75, 0.75, -0.25, -1.0, 0.75, 0.25, 0.0, -0.5, -0.25, -1.0, 0.5, 0.75, -1.0, 1.0, -1.0, -0.5, 0.5, -0.75, 0.25, -1.0, -0.25, 0.75, 0.75, -0.25, 0.75, -0.75, 0.0, 1.0, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, 0.0, 1.0, -0.25, -1.0, 0.75, 0.5, 1.0, -0.75, 0.0, 0.75, 1.0, 1.0, 1.0, 0.5, 1.0, 0.25, 1.0, 1.0, -0.5, -0.75, 0.0, 0.25, -0.75, 0.0, -0.25, -0.25, -0.75, -0.75, 0.5, 1.0, 0.0, 0.75, 1.0, 0.5, -0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -0.25, 0.75, 0.5, 0.5, -1.0, -0.75, -0.5, 0.25, 0.0, 1.0, -0.25, 0.75, 0.5, -1.0, -0.75, 0.0, -1.0, 0.0, 0.5, -0.75, 1.0, -0.25, -0.25, 0.5, 0.5, -0.5, ]);
    
    const array1 = new Float32Array([-0.5, 0.0, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, -0.5, -1.0, -0.5, 0.75, -1.0, -1.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.25, -0.25, -1.0, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, -0.25, 0.5, 1.0, -0.25, -0.75, 0.25, 0.75, -1.0, 0.75, -0.25, -1.0, 1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, -0.5, -0.5, 0.25, 0.75, 0.5, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, 0.5, -0.25, 0.75, -1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.5, -0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 0.0, 0.75, 0.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.75, 1.0, -0.25, ]);
    
    
    
    
    const array2 = new Float32Array([1.0, 0.75, -0.25, -0.75, 0.25, -0.75, 0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.0, -0.5, 0.75, -0.5, 0.75, -0.25, 0.75, -1.0, -1.0, 0.5, 0.75, -0.75, 0.75, 0.0, 0.5, -0.25, 0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 0.0, 1.0, 0.25, -0.5, -0.75, 0.0, -0.25, -0.5, -0.5, 0.25, -0.75, 0.5, 0.5, 0.25, -0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.75, 0.75, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 0.75, 0.75, -0.25, 0.75, -0.5, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, -0.5, 0.5, 0.75, -0.75, -0.75, 0.0, 0.75, -0.5, 0.75, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, -1.0, 0.75, -0.25, -1.0, 0.5, 1.0, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, ]);
    const array3 = new Float32Array([-0.75, 0.5, -0.75, -0.75, -1.0, 0.75, 0.5, -0.5, 0.0, 0.75, -0.5, 0.75, 1.0, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, 0.0, 0.0, 0.5, 0.75, 0.0, 1.0, -0.25, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 0.75, -0.25, 0.5, -0.5, 0.0, -0.25, 0.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.5, 0.0, -1.0, 1.0, -0.75, 0.0, 0.5, 1.0, 0.25, 0.75, -0.75, 0.75, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.25, -0.25, -0.25, -0.25, 0.25, 0.0, -1.0, 0.0, -1.0, -0.5, 0.25, 0.5, 0.5, 0.25, -0.5, 0.75, 0.75, 0.0, -0.75, -1.0, 0.0, -1.0, 0.25, 0.0, 0.5, -0.25, 0.25, 0.5, -0.5, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    const array4 = new Float32Array([0.0, 0.5, 0.5, 0.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 0.25, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, 0.75, -0.5, -1.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, -1.0, 0.25, -1.0, -1.0, -0.5, 0.25, 0.5, 0.5, -1.0, 0.75, 1.0, 0.5, -0.5, -0.75, -1.0, -1.0, 0.25, -0.75, -0.75, 0.25, -1.0, -0.5, -0.5, -0.25, -1.0, 0.0, 0.25, 0.5, 0.5, 0.5, -0.75, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 0.75, 0.5, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, 0.25, -1.0, -0.5, -0.25, -0.25, 0.25, -0.5, -0.75, -0.5, -0.75, 1.0, -1.0, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, -1.0, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder100.insertDebugMarker("mymarker");
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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query102.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1010.setStencilReference(1);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.beginOcclusionQuery(0)
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1000.executeBundles([render_bundle_encoder101, ])
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder100.clearBuffer(buffer100);
    
    device20.destroy();
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.executeBundles([])
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_pass_encoder1010.beginOcclusionQuery(0)
    buffer001.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([render_bundle_encoder100, ])
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture101.destroy();
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder1000.executeBundles([])
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.executeBundles([])
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.popDebugGroup();
    buffer100.destroy()
    render_pass_encoder1040.setStencilReference(1);
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture102.destroy();
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.submit([]);
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1040.beginOcclusionQuery(2)
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.popDebugGroup();
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1040.setStencilReference(1);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.popDebugGroup();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.executeBundles([render_bundle_encoder100, ])
    texture000.destroy();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer101.destroy()
    render_pass_encoder1000.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1001.executeBundles([])
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.setPipeline(render_pipeline100);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1011.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1041.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder1031.popDebugGroup();
    device10.pushErrorScope("internal");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture100.destroy();
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.beginOcclusionQuery(3)
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([render_bundle_encoder100, ])
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group100);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1031.setPipeline(render_pipeline101);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setPipeline(render_pipeline101);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1021.popDebugGroup();
    texture103.destroy();
    render_pass_encoder1031.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1011.insertDebugMarker("marker");
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group101);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer104.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder1001.setStencilReference(1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1021.setPipeline(render_pipeline100);
    render_pass_encoder1030.insertDebugMarker("marker");
    query102.destroy()
    buffer105.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.queue.submit([command_buffer104, ]);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture102.destroy();
    render_pass_encoder1011.pushDebugGroup("group_marker");
    buffer101.destroy()
    render_pass_encoder1002.setPipeline(render_pipeline101);
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1002.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1041.setPipeline(render_pipeline100);
    render_pass_encoder1011.setStencilReference(1);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1002.beginOcclusionQuery(0)
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    query100.destroy()
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    
    render_pass_encoder1030.popDebugGroup();
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group102);
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1020.setStencilReference(1);
    query102.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1040.setVertexBuffer(0, buffer104);
    
    query102.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1021.popDebugGroup();
    
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1021.setBindGroup(0, bind_group103);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1040.popDebugGroup();
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder1031.insertDebugMarker("marker");
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    render_pass_encoder1002.insertDebugMarker("marker");
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group105);
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
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1040.endOcclusionQuery()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1040.setStencilReference(1);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    buffer107.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer1011.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline000);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.insertDebugMarker("marker");
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
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer109.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group106);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1000.endOcclusionQuery()
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device30.destroy();
    buffer1013.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1022.setPipeline(render_pipeline101);
    command_encoder400.insertDebugMarker("mymarker");
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
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

    render_pass_encoder1010.setBindGroup(0, bind_group107);
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer1018, 0, array2, 0, array2.length);
    texture001.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    render_pass_encoder1020.setStencilReference(1);
    buffer1014.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1001.insertDebugMarker("marker");
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
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    render_pass_encoder1011.popDebugGroup();
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const array5 = new Float32Array([0.75, -0.25, 1.0, 0.0, -1.0, 0.25, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, -0.25, -0.75, 0.5, 0.0, 0.75, -0.5, 0.5, -0.25, -0.5, -0.5, -0.25, -0.75, -0.5, -0.5, 1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 0.5, 0.5, 0.25, -0.75, -0.5, 0.0, 0.75, 0.0, 0.5, 0.75, -0.5, 1.0, -1.0, -0.5, 0.75, 1.0, 0.0, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.75, 0.25, 0.25, -0.25, 0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 1.0, -1.0, -0.5, -0.25, 0.75, -0.75, -0.5, -0.25, -1.0, 0.25, 0.25, 1.0, 0.25, 0.75, -0.5, 0.25, 1.0, -1.0, 0.0, 0.75, 0.5, -0.75, 0.5, 0.0, 0.25, 0.0, -1.0, 1.0, 0.0, -0.75, 0.25, 0.5, 0.5, 0.0, 0.25, ]);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1001.setVertexBuffer(0, buffer1012);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setVertexBuffer(0, buffer102);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    command_encoder400.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1041.setVertexBuffer(0, buffer1018);
    const command_buffer400 = command_encoder400.finish();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1031.setVertexBuffer(0, buffer1012);
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
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

    render_pass_encoder1000.setBindGroup(0, bind_group109);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.setVertexBuffer(0, buffer1018);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndexed(3);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder1021.end();
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1002.drawIndirect(buffer105, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer1018);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group002);
    render_pass_encoder1002.end();
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1031.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group1011);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer009, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1022.setVertexBuffer(0, buffer102);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1022.drawIndirect(buffer100, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0001.end();
    render_pass_encoder1041.end();
    render_pass_encoder1022.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1011, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1022.setIndexBuffer(buffer105, "uint16");
    command_encoder100.popDebugGroup()
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1022.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder0000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1002.endOcclusionQuery()
    render_pass_encoder1031.draw(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1012);
    render_pass_encoder1030.setVertexBuffer(0, buffer1023);
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    device40.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1030.drawIndexed(3);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1041.popDebugGroup();
    command_encoder103.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1022.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0010, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder1002.setIndexBuffer(buffer1026, "uint16");
    device40.queue.submit([]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group004);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0013, 0);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexed(3);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1002.drawIndexed(3);
    compute_pass_encoder0001.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1010.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0014, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    render_pass_encoder1022.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1022.end();
    compute_pass_encoder0001.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1002.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    device30.queue.submit([]);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0019, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1022.end();
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder1002.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    render_pass_encoder1022.drawIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1021.drawIndexed(3);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group007);
    render_pass_encoder1011.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1002.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1022.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1022.drawIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1002.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1011.end();
    render_pass_encoder1022.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer102, ]);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder1002.end();
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1020.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group009);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1010.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1011.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1022, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.draw(3);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder1031.end();
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer107, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1022.drawIndexed(3);
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    device40.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    render_pass_encoder1040.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1002.end();
    render_pass_encoder1002.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer104, 0);
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0013);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1021.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1022.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1002.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
}