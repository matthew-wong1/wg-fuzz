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
    
    
    const array0 = new Float32Array([0.75, -0.25, 0.0, 1.0, 0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.0, 0.0, -1.0, -0.5, 0.5, -0.75, 0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.25, 0.75, 1.0, 1.0, 0.75, 0.75, -0.75, 0.0, -1.0, -0.75, -0.75, 0.5, -1.0, -0.5, -1.0, -0.75, 0.75, -0.25, -0.5, -0.5, -0.5, 1.0, 0.25, 0.0, -1.0, -0.25, 0.25, 0.75, -0.25, -0.75, 0.75, -0.75, 0.0, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.75, 0.75, 1.0, -0.25, -0.75, 1.0, -1.0, -0.25, 0.25, -0.5, -0.25, 1.0, -0.75, 0.25, -1.0, 0.5, 0.0, 1.0, 0.0, 0.75, -1.0, 0.0, -0.25, 1.0, 0.25, 0.0, -1.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 1.0, 0.5, -1.0, 0.25, -1.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([0.75, 0.25, -1.0, -1.0, -0.5, -1.0, 0.5, -0.5, -1.0, 0.0, -0.75, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, 0.0, -0.5, 0.25, -0.25, 0.25, -0.25, 0.25, 1.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.0, -0.75, 0.25, 0.75, -1.0, 0.75, 1.0, 0.25, -1.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -0.5, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, -0.25, 1.0, 0.25, 1.0, -0.75, -0.25, 0.5, 1.0, 0.75, 0.75, 0.25, 0.75, -0.25, -0.5, 0.5, -1.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 1.0, 1.0, 0.5, 0.25, 0.75, 0.5, 0.75, -0.75, -0.5, 0.75, -0.75, 0.25, -1.0, -0.5, 1.0, 1.0, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture000.destroy();
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
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture001.destroy();
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    device10.pushErrorScope("internal");
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
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    query102.destroy()
    
    texture100.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query102.destroy()
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    query101.destroy()
    query102.destroy()
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer103, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer103, 0);
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    
    
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
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.setStencilReference(1);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    buffer103.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query100.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1010.popDebugGroup();
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer102.destroy()
    query100.destroy()
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query102.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
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
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer104, 0);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    
    
    
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer100.destroy()
    
    query100.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    query102.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    buffer104.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1011.setPipeline(render_pipeline101);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const array2 = new Float32Array([0.25, -1.0, 0.75, -0.75, -0.5, 0.75, -0.5, 0.5, -1.0, 1.0, 0.0, -0.25, -1.0, -1.0, -0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 0.0, 0.75, 0.75, 0.0, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 0.25, -0.5, -0.75, 0.75, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 0.25, 0.75, 0.5, -0.75, 1.0, -0.25, -0.75, -1.0, -1.0, -0.5, 0.5, -0.5, -1.0, -0.75, 1.0, -1.0, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.25, 0.5, -0.75, 1.0, 0.25, -1.0, -0.5, 0.0, -0.75, -0.75, 0.75, 0.0, -0.75, -0.5, -0.5, 1.0, 1.0, -0.25, -0.5, -1.0, 0.0, 0.25, 0.0, -0.25, -1.0, 0.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.5, -1.0, -1.0, -0.5, ]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.setStencilReference(1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
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
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    texture101.destroy();
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query103.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query102.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout104]
    });
    query100.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer105);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder1021.executeBundles([])
    
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1021.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    render_pass_encoder1001.setPipeline(render_pipeline102);
    query100.destroy()
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
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
    query103.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1002.setPipeline(render_pipeline101);
    texture103.destroy();
    buffer107.destroy()
    render_pass_encoder1001.setStencilReference(1);
    query103.destroy()
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setVertexBuffer(0, buffer1010);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline102);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    
    render_pass_encoder1011.setVertexBuffer(0, buffer101);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.popDebugGroup();
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1002.insertDebugMarker("marker");
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_bundle_encoder101.setPipeline(render_pipeline102);
    render_pass_encoder1002.setStencilReference(1);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1001.setVertexBuffer(0, buffer102);
    render_pass_encoder1002.setStencilReference(1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1000.end();
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1002.pushDebugGroup("group_marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1014.destroy()
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1010.setStencilReference(1);
    {
        await buffer1012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1012.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.pushErrorScope("internal");
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1011.setStencilReference(1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.pushDebugGroup("group_marker");
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    {
        await buffer1012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1012.unmap();
        console.log(new Float32Array(data));
    }
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
    query100.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const array3 = new Float32Array([0.25, 0.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.25, -0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -1.0, 0.5, 0.75, 0.25, -0.25, 0.75, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, -1.0, 0.5, 1.0, -0.75, 0.25, 0.25, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.0, 1.0, -0.5, -0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -0.5, -1.0, 0.75, -1.0, -0.5, 0.5, 0.5, -0.75, -1.0, 0.0, 0.0, 0.0, -1.0, 0.0, -0.25, -0.25, 0.25, -0.75, -0.25, 0.25, -0.5, 0.0, -0.5, -0.25, 0.25, -0.25, 0.0, 0.5, 1.0, -0.5, 0.0, 0.75, 0.0, -0.25, -0.5, -0.25, -1.0, 0.75, -0.5, 0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 0.5, 1.0, -0.75, ]);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.setPipeline(compute_pipeline1016);
    
    
    render_bundle_encoder102.setPipeline(render_pipeline103);
    render_pass_encoder1011.insertDebugMarker("marker");
    
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture102.destroy();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer1013,
        0
    )
    buffer1013.destroy()
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.setStencilReference(1);
    
    
    
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    texture102.destroy();
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    render_pass_encoder1010.setVertexBuffer(0, buffer1014);
    compute_pass_encoder1000.end();
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    render_pass_encoder1021.popDebugGroup();
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    compute_pass_encoder1000.insertDebugMarker("marker")
    query103.destroy()
    render_pass_encoder1002.setStencilReference(1);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group106);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    command_encoder101.clearBuffer(buffer1012);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    render_bundle_encoder102.setVertexBuffer(0, buffer1011);
    
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1018.destroy()
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer1014);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1010.setPipeline(compute_pipeline1010);
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    
    
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setStencilReference(1);
    
    buffer1011.destroy()
    render_pass_encoder1011.setStencilReference(1);
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setIndexBuffer(buffer1020, "uint16");
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer1015,
        0
    )
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.drawIndirect(buffer104, 0);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.pushDebugGroup("group_marker");
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
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    {
        await buffer1012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1012.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1001.end();
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    query104.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeBuffer(buffer1017, 0, array1, 0, array1.length);
    query102.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.drawIndirect(buffer103, 0);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    render_pass_encoder1021.setBindGroup(0, bind_group108);
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    compute_pass_encoder1020.popDebugGroup()
    
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1025, 0);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer1016.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer109.destroy()
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1002.setBindGroup(0, bind_group109);
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer109,
        0
    )
    
    render_pass_encoder1001.setStencilReference(1);
    
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    
    render_pass_encoder1011.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1025, 0, array0, 0, array0.length);
    render_pass_encoder1002.setStencilReference(1);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1021.setStencilReference(1);
    buffer1025.destroy()
    const render_pass_encoder1003 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_bundle_encoder100.drawIndirect(buffer104, 0);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1003.executeBundles([])
    
    render_pass_encoder1002.setVertexBuffer(0, buffer1018);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline1016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer1029);
    render_pass_encoder1003.setPipeline(render_pipeline104);
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1003.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.end();
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1011);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1003.setBindGroup(0, bind_group1012);
    render_pass_encoder1021.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1003.setVertexBuffer(0, buffer1018);
    render_pass_encoder1002.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1003.draw(3);
    render_pass_encoder1020.setVertexBuffer(0, buffer1021);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline1016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1002.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1011.end();
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
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
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1014);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1002.drawIndirect(buffer100, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1000.end();
    render_pass_encoder1003.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1028, "uint16");
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1003.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1039, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1001.end();
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
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1003.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1037, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1002.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1002.endOcclusionQuery()
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1002.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1002.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.setIndexBuffer(buffer1041, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder1020.end();
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
}