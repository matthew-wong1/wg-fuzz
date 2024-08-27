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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.pushErrorScope("validation");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.queue.submit([]);
    const command_buffer000 = command_encoder000.finish();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.popDebugGroup()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    buffer100.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([command_buffer000, ]);
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array0 = new Float32Array([0.25, 1.0, 0.25, -0.5, -0.25, 0.0, 0.25, 0.5, -0.25, -1.0, -0.25, 0.25, 1.0, -1.0, 0.25, -0.25, 0.25, 0.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.25, -0.25, 0.5, 0.75, 0.5, 0.5, -0.5, -0.25, -0.75, 0.0, 0.5, 0.0, 0.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.25, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.75, -0.5, -0.75, -0.25, -1.0, -0.25, -0.25, -0.75, 0.5, -0.25, 0.5, -0.75, -1.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 0.0, 0.5, 0.25, -0.75, -0.25, 0.25, -0.75, -0.25, -0.25, -0.25, 1.0, 0.25, -0.5, -0.5, 1.0, -0.75, -1.0, 1.0, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, -0.75, -0.25, 0.5, -1.0, -0.75, ]);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    texture100.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.submit([]);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query200.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    
    device00.pushErrorScope("internal");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    texture000.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    
    
    render_pass_encoder1010.popDebugGroup();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer200.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    texture102.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
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
    const command_buffer202 = command_encoder202.finish();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder104.clearBuffer(buffer100);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    buffer102.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    buffer000.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.destroy();
    
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder105.clearBuffer(buffer103);
    
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
    command_encoder105.copyBufferToBuffer(
        buffer103,
        0,
        buffer103,
        0,
        400
    );
    
    texture200.destroy();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.executeBundles([])
    device30.queue.submit([]);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    render_bundle_encoder000.popDebugGroup();
    query100.destroy()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer106, 0);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.copyBufferToBuffer(
        buffer103,
        0,
        buffer106,
        0,
        400
    );
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setStencilReference(1);
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    compute_pass_encoder1010.setPipeline(compute_pipeline104);
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.executeBundles([])
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder1050.executeBundles([render_bundle_encoder101, ])
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1031.executeBundles([])
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    buffer107.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder1010.setStencilReference(1);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1050.setBindGroup(0, bind_group102);
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1050.popDebugGroup()
    
    query000.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1050.setVertexBuffer(0, buffer105);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    command_encoder102.copyBufferToBuffer(
        buffer100,
        0,
        buffer106,
        0,
        400
    );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline103);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    command_encoder101.copyBufferToBuffer(
        buffer104,
        0,
        buffer102,
        0,
        400
    );
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    command_encoder106.clearBuffer(buffer1011);
    command_encoder105.copyBufferToBuffer(
        buffer103,
        0,
        buffer106,
        0,
        400
    );
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture103.destroy();
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    buffer1010.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device00.destroy();
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    buffer108.destroy()
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1031.setPipeline(render_pipeline101);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    command_encoder105.copyBufferToBuffer(
        buffer106,
        0,
        buffer1010,
        0,
        400
    );
    
    render_pass_encoder1030.executeBundles([])
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    render_pass_encoder1030.setPipeline(render_pipeline101);
    compute_pass_encoder1020.popDebugGroup()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query102
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.setStencilReference(1);
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1011.beginOcclusionQuery(0)
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder1060.executeBundles([])
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    
    render_bundle_encoder101.setIndexBuffer(buffer1014, "uint16");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    render_pass_encoder1020.setPipeline(render_pipeline101);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.pushErrorScope("internal");
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    buffer1016.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder100.copyBufferToBuffer(
        buffer1012,
        0,
        buffer106,
        0,
        400
    );
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1060.setPipeline(render_pipeline100);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    compute_pass_encoder1050.popDebugGroup()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_bundle_encoder101.draw(3);
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1041.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query102
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1041.beginOcclusionQuery(0)
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    render_bundle_encoder101.popDebugGroup();
    command_encoder100.copyBufferToBuffer(
        buffer103,
        0,
        buffer106,
        0,
        400
    );
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    buffer300.destroy()
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    buffer1015.destroy()
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.popDebugGroup();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    render_bundle_encoder101.drawIndexedIndirect(buffer100, 0);
    texture102.destroy();
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    render_pass_encoder1021.setPipeline(render_pipeline101);
    render_pass_encoder1031.setVertexBuffer(0, buffer105);
    device30.destroy();
    render_pass_encoder1041.executeBundles([])
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device40.destroy();
    render_pass_encoder1041.insertDebugMarker("marker");
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.endOcclusionQuery()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1011.setPipeline(render_pipeline101);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1017.destroy()
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1040.setPipeline(render_pipeline102);
    
    command_encoder101.clearBuffer(buffer1011);
    
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.drawIndirect(buffer107, 0);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    buffer1016.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer1014.destroy()
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    query101.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setPipeline(render_pipeline101);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_pass_encoder1061.setPipeline(render_pipeline103);
    render_pass_encoder1060.insertDebugMarker("marker");
    device20.queue.submit([command_buffer202, ]);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    query101.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1012.destroy()
    render_pass_encoder1060.insertDebugMarker("marker");
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1020.end();
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_bundle_encoder100.setVertexBuffer(0, buffer1011);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.insertDebugMarker("marker");
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

    render_pass_encoder1060.setBindGroup(0, bind_group107);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1001.setStencilReference(1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder1061.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1060.beginOcclusionQuery(0)
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.popDebugGroup();
    
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer1011,
        0
    )
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setVertexBuffer(0, buffer1012);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.setStencilReference(1);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    buffer106.destroy()
    render_pass_encoder1020.setVertexBuffer(0, buffer1024);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1040.setVertexBuffer(0, buffer1012);
    render_pass_encoder1031.end();
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group109);
    render_pass_encoder1001.setPipeline(render_pipeline105);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1020.end();
    render_pass_encoder1040.popDebugGroup();
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group1010);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1012);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndirect(buffer1011, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1026);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.setVertexBuffer(0, buffer1026);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1014);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1015);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1039, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1041.setVertexBuffer(0, buffer1039);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    render_pass_encoder1041.drawIndirect(buffer106, 0);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group1016);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.setVertexBuffer(0, buffer1038);
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group1017);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1045, 0);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.setVertexBuffer(0, buffer1028);
    render_pass_encoder1061.setVertexBuffer(0, buffer1021);
    render_pass_encoder1061.drawIndirect(buffer1032, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1061.end();
    render_pass_encoder1021.end();
    render_pass_encoder1061.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer1013);
    render_pass_encoder1000.setVertexBuffer(0, buffer1047);
    render_pass_encoder1031.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    compute_pass_encoder1050.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.drawIndirect(buffer106, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1019);
    render_pass_encoder1001.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1050.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1050.drawIndirect(buffer1014, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1061.drawIndirect(buffer1037, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1020.end();
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    const command_buffer100 = command_encoder100.finish();
    command_encoder300.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1011.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.end();
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    const command_buffer101 = command_encoder101.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1039, 0);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1020);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    render_pass_encoder1061.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1051, "uint16");
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, command_buffer104, command_buffer105, ]);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder1050.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder1000.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1047, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1061.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1050.setIndexBuffer(buffer1045, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1050.end();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndexed(3);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1041.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndirect(buffer1023, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.end();
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1041.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.drawIndirect(buffer1059, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1060.setIndexBuffer(buffer1014, "uint16");
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1063, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1061.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    render_pass_encoder1040.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer105, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1024);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer1064, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndirect(buffer1063, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer1059, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1049, "uint16");
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1066, 0);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1061.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1061.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1031.drawIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1026);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1056, 0);
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1061.drawIndexedIndirect(buffer1039, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1028);
    render_pass_encoder1041.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1000.drawIndirect(buffer1063, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1063, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndirect(buffer1059, 0);
    render_pass_encoder1061.drawIndirect(buffer106, 0);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1064, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1064, 0);
    render_pass_encoder1061.drawIndirect(buffer1039, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1055, 0);
}