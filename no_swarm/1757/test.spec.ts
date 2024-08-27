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
    const array0 = new Float32Array([0.75, -0.5, -0.75, 0.75, 1.0, -0.75, 1.0, -0.75, -1.0, -0.25, -1.0, 0.0, -0.25, 0.25, -1.0, -1.0, 0.0, -0.5, 1.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.25, 1.0, 0.5, -0.5, 1.0, -0.25, -0.25, -0.75, 0.25, -0.5, -0.5, -0.25, -0.75, -0.5, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -0.25, 0.75, -0.75, 0.0, -0.5, -0.75, -1.0, 0.5, 0.5, 0.25, 1.0, 0.75, -1.0, -1.0, -1.0, 0.5, -1.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.25, 0.75, -0.5, 0.5, -0.75, 0.0, 1.0, -0.5, 0.5, -0.25, -1.0, -1.0, 0.5, -1.0, 0.5, -0.5, -0.5, -0.25, 1.0, -0.5, 0.5, 1.0, 1.0, -1.0, -0.75, ]);
    
    const array1 = new Float32Array([1.0, 0.0, -1.0, 0.5, 0.75, -1.0, -0.75, 0.25, 0.75, 0.0, 0.75, 0.5, -0.5, 0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.25, -0.25, -0.75, -1.0, -1.0, 0.0, 0.75, 0.0, -0.5, 0.0, 0.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.5, -0.75, -0.5, -0.25, -1.0, -0.75, 0.25, 0.75, 0.25, 0.0, -0.75, -1.0, 0.5, 0.0, 0.25, 1.0, -0.75, -0.5, -0.75, -1.0, 0.0, 0.75, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.25, -1.0, 0.5, -0.25, -1.0, 0.75, 0.5, -1.0, 0.75, -0.75, -0.75, 0.25, 0.25, 0.75, 1.0, 1.0, 0.75, 0.5, -0.25, -0.75, -0.75, -1.0, 0.5, 1.0, 1.0, 0.25, -1.0, -0.25, 1.0, 0.25, -1.0, -0.25, 0.0, 1.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_buffer101 = command_encoder101.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer100.destroy()
    command_encoder100.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    texture101.destroy();
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
        occlusionQuerySet: undefined
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    texture100.destroy();
    query100.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    command_encoder100.popDebugGroup()
    render_pass_encoder1020.setStencilReference(1);
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1000.setPipeline(render_pipeline101);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.5, -0.25, 0.75, -0.25, -0.75, -0.5, 1.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.5, -0.25, 0.5, -1.0, 0.25, 0.0, -0.75, -0.75, 0.75, 0.5, -0.75, -0.5, 0.25, -0.25, 0.75, 0.0, -0.75, 0.0, -1.0, -0.5, 1.0, 0.0, 0.75, 0.5, 0.25, 0.0, -0.25, -0.75, -0.5, 0.0, 0.25, 1.0, -0.5, -1.0, -1.0, -0.25, 0.25, -0.5, -1.0, 1.0, -0.75, 1.0, -0.75, 0.25, -0.5, 0.0, -1.0, 0.5, 0.5, -1.0, 1.0, 1.0, -1.0, -0.5, -0.5, 0.5, 0.0, 0.5, 0.5, 0.25, -0.75, -0.75, -1.0, 1.0, -1.0, 0.25, -0.75, 0.25, 0.25, -1.0, 1.0, 0.25, -0.75, -0.75, 0.0, -0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 1.0, -0.5, 1.0, 1.0, -1.0, -0.75, -0.5, ]);
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const array3 = new Float32Array([0.0, 0.5, -0.25, -1.0, 0.0, 0.0, 0.75, -0.25, 0.75, 0.5, -0.75, -0.75, -0.75, -0.25, 0.75, 0.0, -0.5, -0.75, -0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, 0.5, 0.25, 0.5, 0.75, -0.75, 0.25, -0.5, 0.5, 1.0, -0.25, -0.75, -1.0, 0.25, -1.0, 0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.25, -0.25, -0.5, 0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -0.5, -0.5, -0.75, 0.0, 1.0, 0.75, 0.25, -1.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, -0.75, 0.25, -0.25, 0.75, -0.75, 0.25, 0.25, -0.5, -0.5, 0.75, 0.0, -0.25, 0.5, -0.75, -1.0, -1.0, -1.0, -0.25, -1.0, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, -1.0, 1.0, 0.25, ]);
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
    command_encoder100.insertDebugMarker("mymarker");
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
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query100.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder1030.popDebugGroup()
    
    command_encoder103.clearBuffer(buffer102);
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer101.destroy()
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer104.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    buffer102.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
    
    
    const array4 = new Float32Array([0.25, -0.25, 0.0, -0.25, -0.25, 0.25, 0.0, -0.5, 0.75, 0.5, -0.5, 0.0, 0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.75, 0.5, 1.0, 0.25, 0.0, 0.0, -0.75, -0.5, -0.5, 0.5, 0.0, -0.5, -0.25, 0.0, -0.5, -1.0, -0.5, -0.25, 0.5, -0.5, 0.0, 0.75, 0.25, 1.0, -0.5, -0.75, -0.25, -0.25, 1.0, -0.75, 0.25, -0.25, -0.75, 0.75, -0.5, -0.25, 0.5, 0.25, 0.75, -0.5, -1.0, 0.5, -0.25, 1.0, -0.5, 0.0, 0.5, -0.5, 0.0, -1.0, 0.75, 0.5, 0.25, 0.0, -1.0, 0.75, 0.25, -1.0, 0.75, 0.5, 0.75, -1.0, 0.75, 0.75, 0.25, -1.0, 0.0, -0.75, 0.75, 0.25, 0.75, -0.25, -0.5, 0.5, 0.75, 1.0, -1.0, 1.0, 0.0, ]);
    texture102.destroy();
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
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
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder103.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    buffer103.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder1000.insertDebugMarker("marker");
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
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
        occlusionQuerySet: undefined
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder1040.setPipeline(render_pipeline101);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
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
        occlusionQuerySet: query101
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    buffer000.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.setPipeline(render_pipeline103);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    query100.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
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
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    
    
    const array5 = new Float32Array([-0.5, -0.25, 1.0, 0.25, 1.0, 0.75, 0.5, -0.75, -0.75, -1.0, -0.75, 0.25, 0.25, 0.75, 0.25, -0.5, -0.5, -0.75, 0.0, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 1.0, -0.5, -1.0, 0.75, 0.5, 0.25, 0.0, 0.75, 0.75, 0.0, 0.25, -0.25, 0.25, -0.5, 0.75, -0.25, 0.75, 0.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.75, -0.5, 0.25, -0.25, 1.0, -0.75, 1.0, -1.0, 0.0, 0.25, 0.5, -0.25, 0.75, 0.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -0.75, 0.25, -1.0, 0.0, 0.0, 0.0, -0.25, -1.0, 0.75, -0.5, -0.5, 0.25, 0.0, 0.5, 0.75, 0.5, -0.25, 0.75, ]);
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_pass_encoder1021.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder1050.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1022.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder100.copyTextureToTexture(
        {
            texture: texture102
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture103.destroy();
    
    compute_pass_encoder0000.setPipeline(compute_pipeline0010);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1040.insertDebugMarker("marker");
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
    const array6 = new Float32Array([-1.0, 0.25, -1.0, 1.0, 0.5, 1.0, 0.0, -1.0, 0.5, 0.5, 1.0, 0.0, 0.75, -0.5, 0.5, 0.5, -0.75, -1.0, 0.0, 0.5, -0.25, 0.75, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -0.75, 0.25, 0.25, 0.75, 1.0, -0.5, -0.5, -0.5, -0.5, -1.0, 0.75, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -0.5, 0.0, -0.25, 1.0, -0.25, -0.5, 1.0, 0.0, -0.75, 0.5, -1.0, -0.25, 0.75, -0.25, 1.0, -0.75, -0.25, 0.25, 0.25, -1.0, 0.0, -0.5, 0.25, 0.5, 0.75, 0.75, 0.0, -0.75, -0.5, -1.0, 0.75, -0.75, 1.0, 0.0, -0.5, 1.0, 0.0, -0.75, -1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.0, 1.0, 0.0, 0.25, 0.0, 0.5, 1.0, 0.25, 0.0, 0.75, ]);
    query000.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    texture001.destroy();
    render_pass_encoder1050.setStencilReference(1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
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
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1021.executeBundles([render_bundle_encoder101, ])
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    buffer105.destroy()
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1022.popDebugGroup();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1022.insertDebugMarker("marker");
    
    render_pass_encoder1022.setPipeline(render_pipeline100);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1022.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.setPipeline(render_pipeline100);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
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
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group104);
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder104.copyBufferToBuffer(
        buffer109,
        0,
        buffer104,
        0,
        400
    );
    
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1031 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1031" });
    device40.destroy();
    device10.queue.writeBuffer(buffer1010, 0, array6, 0, array6.length);
    query102.destroy()
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_bundle_encoder100.drawIndirect(buffer103, 0);
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
    
    render_pass_encoder1050.setStencilReference(1);
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1030.popDebugGroup()
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1051.endOcclusionQuery()
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
    render_pass_encoder1022.setStencilReference(1);
    render_pass_encoder1020.setVertexBuffer(0, buffer1011);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1031.setPipeline(compute_pipeline104);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.setStencilReference(1);
    command_encoder105.clearBuffer(buffer101);
    render_pass_encoder1040.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1030.popDebugGroup()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setStencilReference(1);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer104.destroy()
    
    render_pass_encoder1022.pushDebugGroup("group_marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder1040.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    render_pass_encoder1051.insertDebugMarker("marker");
    buffer106.destroy()
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.setVertexBuffer(0, buffer109);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder101.setPipeline(render_pipeline102);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1051.setPipeline(render_pipeline103);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer1010.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline103);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1060.setPipeline(render_pipeline102);
    render_pass_encoder1022.setStencilReference(1);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    buffer106.destroy()
    
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    buffer107.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    buffer002.destroy()
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_pass_encoder0000.executeBundles([])
    compute_pass_encoder1031.pushDebugGroup("group_marker")
    texture002.destroy();
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
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
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    query102.destroy()
    
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
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
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1040.popDebugGroup();
    
    render_pass_encoder0000.setStencilReference(1);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1031.setBindGroup(0, bind_group106);
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    buffer1012.destroy()
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group107);
    query100.destroy()
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1001.setPipeline(render_pipeline104);
    
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
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
        occlusionQuerySet: undefined
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer105.destroy()
    
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group108);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1018, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1015, 0, array6, 0, array6.length);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1030.setPipeline(render_pipeline103);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1020, 0);
    render_pass_encoder1031.setPipeline(render_pipeline104);
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
        layout: compute_pipeline0010.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    render_pass_encoder0000.setPipeline(render_pipeline001);
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

    render_pass_encoder1021.setBindGroup(0, bind_group109);
    render_pass_encoder1020.popDebugGroup();
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group1010);
    render_pass_encoder1022.setVertexBuffer(0, buffer1014);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer1015);
    render_pass_encoder1020.end();
    render_pass_encoder1022.drawIndirect(buffer104, 0);
    render_pass_encoder1050.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.setVertexBuffer(0, buffer1023);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.popDebugGroup();
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

    render_pass_encoder1030.setBindGroup(0, bind_group1011);
    render_pass_encoder1031.setVertexBuffer(0, buffer109);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1030.setVertexBuffer(0, buffer1022);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1012);
    render_pass_encoder1051.setVertexBuffer(0, buffer1014);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.end();
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1013);
    render_pass_encoder1022.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1031.popDebugGroup()
    render_pass_encoder1022.endOcclusionQuery()
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder0000.setVertexBuffer(0, buffer004);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    compute_pass_encoder1031.dispatchWorkgroups(100);
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1014);
    render_pass_encoder1060.setVertexBuffer(0, buffer1014);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1031.end();
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer100, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder1051.end();
    render_pass_encoder1030.end();
    render_pass_encoder1040.popDebugGroup();
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1015);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
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
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group1016);
    render_pass_encoder0000.end();
    render_pass_encoder1022.endOcclusionQuery()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    render_pass_encoder1022.draw(3);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1001.setVertexBuffer(0, buffer109);
    compute_pass_encoder1030.end();
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1031.dispatchWorkgroups(100);
    render_pass_encoder1060.end();
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1020, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1022.endOcclusionQuery()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1060.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1050.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1060.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1022.drawIndirect(buffer1035, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1022.drawIndirect(buffer1013, 0);
    const uint32_1031 = new Uint32Array(3);

    uint32_1031[0] = 100;
    uint32_1031[1] = 1;
    uint32_1031[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1031, 0, uint32_1031.length);

    compute_pass_encoder1031.dispatchWorkgroupsIndirect(buffer1037, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    device00.queue.submit([]);
    compute_pass_encoder1031.end();
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    compute_pass_encoder1031.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1051.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1029, "uint16");
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1031.setBindGroup(0, bind_group1017);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1022.drawIndirect(buffer100, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    command_encoder103.popDebugGroup()
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
        layout: compute_pipeline0010.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1022.draw(3);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1060.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer105, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1022.drawIndirect(buffer1020, 0);
    render_pass_encoder1050.drawIndirect(buffer1039, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1022.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder0000.end();
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
        layout: compute_pipeline0010.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1031.setBindGroup(0, bind_group1018);
    device00.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndirect(buffer1037, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1033, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.end();
    device00.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    compute_pass_encoder1031.dispatchWorkgroups(100);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder1030.popDebugGroup()
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
        layout: compute_pipeline0010.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    compute_pass_encoder0000.end();
    render_pass_encoder1060.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0015, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline0010.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1037, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1000.end();
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
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
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1031.setBindGroup(0, bind_group1019);
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1060.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1051.drawIndirect(buffer1020, 0);
    compute_pass_encoder1031.end();
    render_pass_encoder1060.draw(3);
    render_pass_encoder1001.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.end();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0018, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1022.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder1051.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1020, 0);
}