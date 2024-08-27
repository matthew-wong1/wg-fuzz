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
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([-0.5, -0.25, 0.5, -0.75, -0.75, -0.25, 0.25, 0.0, -0.75, -0.25, 0.5, 1.0, 0.25, -0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 0.5, 0.5, 0.5, 0.5, 0.0, 0.25, 0.75, 0.25, 0.5, 0.75, 0.75, 0.5, -0.25, 0.75, 0.5, 0.25, -1.0, -0.25, -0.25, 1.0, -0.5, -0.75, -0.25, -0.5, -1.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.75, -1.0, -1.0, -0.75, -0.75, 0.75, -0.75, -0.25, -0.75, 1.0, -1.0, 0.5, 0.25, -0.5, 0.0, -1.0, -0.25, 0.5, 0.0, -0.5, -0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 0.5, 1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, 1.0, 0.5, 0.75, -0.75, -0.75, -0.75, 0.75, 1.0, -0.75, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array1 = new Float32Array([0.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.5, 0.25, -0.25, -0.75, -0.75, 0.5, 0.25, -0.75, 1.0, 0.75, 0.75, 1.0, -0.5, 0.0, 0.75, -0.75, 0.75, -0.75, -0.75, -0.75, 0.0, 0.0, 0.0, 0.25, 1.0, 0.5, 0.0, -0.75, 1.0, -1.0, -1.0, -0.5, 0.0, -0.5, 1.0, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, -0.75, 1.0, -1.0, 1.0, 0.5, -0.75, 0.25, 0.25, 0.0, 0.0, 0.5, 0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 0.25, 1.0, 0.0, 0.0, -0.75, 0.0, 0.5, -1.0, -0.5, -0.75, 0.75, 0.75, 0.0, 0.0, -1.0, -0.75, 0.5, -1.0, 0.0, 1.0, -0.25, 1.0, -0.75, 0.5, -1.0, -0.75, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 1.0, 0.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device30.destroy();
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-0.75, -0.25, 0.5, -0.5, -0.75, 0.75, -0.5, 1.0, -0.5, 0.0, -0.75, 0.75, -0.75, 0.75, 0.5, 0.0, -0.5, -1.0, -1.0, -1.0, 0.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, -0.5, -1.0, -0.5, 0.0, 0.75, 0.0, 0.25, -0.75, -0.25, 0.75, 1.0, 1.0, 0.0, 0.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.75, -1.0, -1.0, -0.25, 0.75, 0.0, 0.25, 1.0, 0.0, -0.25, 0.5, -0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 0.25, -1.0, -0.5, 0.0, 0.25, 0.75, 0.25, 0.5, -1.0, -0.5, 1.0, 0.0, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, 0.0, 0.25, 1.0, 0.5, 0.25, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.75, 0.0, ]);
    device00.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
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
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    texture100.destroy();
    device10.pushErrorScope("out-of-memory");
    query100.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query102.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query101.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    
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
        occlusionQuerySet: query102
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query102.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    buffer102.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.executeBundles([])
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer501.destroy()
    
    
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query102.destroy()
    
    device50.queue.submit([]);
    command_encoder300.insertDebugMarker("mymarker");
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    buffer500.destroy()
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const command_buffer102 = command_encoder102.finish();
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder100.popDebugGroup();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query102.destroy()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1010.setStencilReference(1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    const array3 = new Float32Array([1.0, -1.0, 0.5, -1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 0.75, 0.0, -0.75, 1.0, -0.75, -0.25, -0.25, 0.25, -0.5, 0.5, 0.75, 0.0, 0.5, -0.25, 0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.25, -0.25, -0.75, 0.0, -1.0, -0.75, 0.75, -0.25, 0.0, 0.5, -0.75, -1.0, 0.0, -0.25, 1.0, -0.25, 1.0, 0.25, -0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.5, 0.5, 1.0, -0.5, -0.75, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.5, -0.5, -0.75, 0.25, -0.5, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, 0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.75, 0.0, 0.75, 1.0, 0.25, ]);
    buffer100.destroy()
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1010.setStencilReference(1);
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    query100.destroy()
    
    
    
    device40.pushErrorScope("internal");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    buffer100.destroy()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    buffer502.destroy()
    
    
    render_pass_encoder1010.executeBundles([])
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder1010.executeBundles([])
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    render_pass_encoder1030.executeBundles([render_bundle_encoder100, ])
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder103.clearBuffer(buffer101);
    render_bundle_encoder100.popDebugGroup();
    buffer103.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    buffer504.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query103.destroy()
    
    const array4 = new Float32Array([0.5, 0.25, -0.75, -0.25, -1.0, -0.75, 0.75, -0.75, 1.0, -0.5, 1.0, 0.0, 0.25, -0.25, 1.0, 0.0, -0.25, -0.25, -0.5, -0.5, 0.5, 1.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.25, -0.75, -0.25, 0.25, -0.5, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, -0.25, -0.25, -0.25, 0.5, 1.0, -0.75, 0.0, -0.25, 0.5, 0.5, -0.75, 0.5, 0.75, 0.25, 0.75, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, -1.0, 1.0, 0.25, 0.25, 0.75, -0.25, 0.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.25, 0.5, -0.75, 0.0, 0.0, 0.0, -0.75, -0.75, 1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 0.25, ]);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    
    command_encoder103.popDebugGroup()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    render_pass_encoder1010.popDebugGroup();
    buffer503.destroy()
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.popDebugGroup();
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer101 = command_encoder101.finish();
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
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
    render_pass_encoder5000.insertDebugMarker("marker");
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    query501.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    
    
    
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    render_pass_encoder5000.popDebugGroup();
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
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
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.popDebugGroup();
    query501.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder5000.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder700.clearBuffer(buffer700);
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer103.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1031.insertDebugMarker("marker");
    command_encoder700.pushDebugGroup("mygroupmarker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder1031.setStencilReference(1);
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder104.clearBuffer(buffer104);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_bundle_encoder502.setPipeline(render_pipeline500);
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder5000.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    query103.destroy()
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder1031.executeBundles([])
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.copyBufferToBuffer(
        buffer600,
        0,
        buffer600,
        0,
        400
    );
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer600.destroy()
    buffer700.destroy()
    render_pass_encoder5000.setPipeline(render_pipeline500);
    render_bundle_encoder101.popDebugGroup();
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    query700.destroy()
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query102
    });
    render_pass_encoder1050.setStencilReference(1);
    command_encoder700.popDebugGroup()
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.popDebugGroup();
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device50.queue.submit([command_buffer501, ]);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture500.destroy();
    device80.destroy();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder5001.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    command_encoder600.popDebugGroup()
    
    buffer104.destroy()
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1031.executeBundles([])
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
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
    render_bundle_encoder600.popDebugGroup();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer601.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder103.clearBuffer(buffer103);
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    render_pass_encoder5000.insertDebugMarker("marker");
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    query000.destroy()
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1040.executeBundles([])
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    query104.destroy()
    const command_buffer500 = command_encoder500.finish();
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    render_pass_encoder1032.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query700.destroy()
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    buffer503.destroy()
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const command_buffer602 = command_encoder602.finish();
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1032.setStencilReference(1);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder106.clearBuffer(buffer104);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.executeBundles([])
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5001.setPipeline(render_pipeline501);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder6010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder1040.endOcclusionQuery()
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group502);
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group503);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5000.setVertexBuffer(0, buffer500);
    render_pass_encoder5000.draw(3);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    compute_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer106, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer107, 0);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer106 = command_encoder106.finish();
    const command_buffer100 = command_encoder100.finish();
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder5001.setVertexBuffer(0, buffer5011);
    render_pass_encoder5001.drawIndirect(buffer505, 0);
    render_pass_encoder5001.end();
    compute_pass_encoder1000.end();
    compute_pass_encoder7000.end();
    const command_buffer700 = command_encoder700.finish();
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer704, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer704, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7000.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    const command_buffer601 = command_encoder601.finish();
    device70.queue.submit([]);
    render_pass_encoder5000.setIndexBuffer(buffer507, "uint16");
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5000.end();
    device50.queue.submit([]);
    compute_pass_encoder7000.end();
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5001.setIndexBuffer(buffer501, "uint16");
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer106, ]);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder5001.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5001.end();
    device70.queue.submit([]);
    device40.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer108, 0);
    device50.queue.submit([]);
    device40.queue.submit([]);
    const command_buffer200 = command_encoder200.finish();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1010.endOcclusionQuery()
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder5001.drawIndirect(buffer5011, 0);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder7000.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder5000.draw(3);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder5001.drawIndirect(buffer501, 0);
    render_pass_encoder1050.endOcclusionQuery()
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer705, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer705, 0);
    compute_pass_encoder6010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder5000.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5010, 0);
    device10.queue.submit([command_buffer101, command_buffer105, command_buffer107, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder5000.drawIndexedIndirect(buffer500, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.end();
    render_pass_encoder5000.drawIndexed(3);
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer106, ]);
    device60.queue.submit([command_buffer602, ]);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer505, 0);
    device100.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer706, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer706, 0);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder5001.draw(3);
    render_pass_encoder1032.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    device60.queue.submit([command_buffer602, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    render_pass_encoder5001.draw(3);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5001.end();
    device70.queue.submit([]);
    compute_pass_encoder7000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7010,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group702);
    render_pass_encoder1031.endOcclusionQuery()
    device50.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5000.end();
    device100.queue.submit([]);
    compute_pass_encoder6010.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer5012, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device70.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7012 = device70.createBuffer({
        label: "buffer7012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7012,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group703);
    device70.queue.submit([command_buffer700, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder5001.draw(3);
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder7000.end();
    render_pass_encoder5001.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5000.drawIndirect(buffer507, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5000.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5000.setIndexBuffer(buffer503, "uint16");
    device10.queue.submit([command_buffer102, ]);
    device60.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1040.endOcclusionQuery()
    device40.queue.submit([]);
    compute_pass_encoder1000.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1050.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder5001.end();
    device10.queue.submit([command_buffer104, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5000.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5001.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer107, ]);
    render_pass_encoder1031.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer104, ]);
    device40.queue.submit([]);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1032.popDebugGroup();
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7013 = device70.createBuffer({
        label: "buffer7013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7013, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7013, 0);
    render_pass_encoder5001.end();
    device50.queue.submit([]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder5000.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder1050.endOcclusionQuery()
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.popDebugGroup();
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7014 = device70.createBuffer({
        label: "buffer7014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7014, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7014, 0);
    render_pass_encoder1010.popDebugGroup();
    device50.queue.submit([]);
    device70.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    const buffer7015 = device70.createBuffer({
        label: "buffer7015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7016 = device70.createBuffer({
        label: "buffer7016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7016,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group704);
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder5001.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder1040.endOcclusionQuery()
    device70.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1013, 0);
    const command_buffer300 = command_encoder300.finish();
    device50.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1014, 0);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    render_pass_encoder5000.drawIndirect(buffer505, 0);
    device100.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder5001.drawIndexed(3);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7017 = device70.createBuffer({
        label: "buffer7017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7017, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7017, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    device60.queue.submit([]);
    render_pass_encoder1031.endOcclusionQuery()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder1032.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.endOcclusionQuery()
    device40.queue.submit([]);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder1000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer505, 0);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder5001.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder1030.popDebugGroup();
}