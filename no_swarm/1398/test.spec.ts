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
    const array0 = new Float32Array([-0.75, 0.25, 0.75, 0.75, -0.25, -0.5, 1.0, -0.25, -0.25, -0.25, 0.5, -0.5, -0.25, 1.0, 0.25, -1.0, -1.0, 1.0, -0.25, 0.75, -0.75, 0.5, 0.5, 1.0, 0.0, 0.5, -0.75, 1.0, -0.75, 0.0, -1.0, -1.0, 1.0, 1.0, -1.0, 0.5, 1.0, 0.25, 0.0, 0.5, -0.5, -0.75, -0.75, -1.0, 0.5, -0.25, 0.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.25, 1.0, -0.5, -0.5, 0.75, -0.25, -0.5, 0.25, 0.25, -0.5, 0.5, -0.75, 0.5, 0.75, 0.5, 0.0, 0.5, -0.75, 0.5, 0.5, 0.25, -0.75, -0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 0.0, 0.25, 0.5, -0.5, -0.5, 0.75, -0.25, -0.75, -0.5, 0.0, 1.0, 0.0, -0.75, -0.25, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([0.0, 0.5, 0.5, 0.25, 0.75, -0.75, 0.0, -0.75, 1.0, 0.75, 0.75, -0.25, 0.25, 0.25, 1.0, 0.75, -0.5, -1.0, -0.5, -0.25, -0.5, 0.5, 0.75, -1.0, -0.75, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, -0.25, 0.5, -1.0, 0.75, -1.0, 0.75, 0.75, -0.75, 0.75, -1.0, -0.5, 0.0, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, -1.0, 1.0, -0.75, -0.5, -0.5, 0.25, 1.0, 0.0, 1.0, 0.0, 0.5, 0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 0.25, -1.0, -0.75, -0.5, -0.25, 0.0, 0.5, 0.5, -0.5, 0.5, -1.0, -0.75, 0.75, -0.5, -0.25, -0.5, -0.5, -1.0, -0.25, 0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.75, -1.0, 0.75, -0.25, 0.75, 0.5, ]);
    device00.queue.submit([]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.75, -0.25, 0.25, 1.0, 0.5, 0.75, 0.25, 0.25, -0.75, 0.0, 1.0, 0.5, 0.25, 0.25, 0.0, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, 1.0, 0.75, -0.5, 0.75, 0.25, -0.25, -0.25, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, 0.75, 1.0, 0.5, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, -0.25, -0.75, -0.25, 0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 1.0, 0.25, 0.0, 1.0, -0.5, -0.75, 1.0, 0.75, -0.5, -1.0, 1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.75, -0.5, -0.5, -0.25, -1.0, 0.5, 0.75, -0.5, -0.5, 1.0, 0.5, -0.75, -0.25, -0.25, -0.75, -0.75, 0.25, -1.0, 0.75, 1.0, -0.25, -0.25, -0.25, 0.25, 0.75, 1.0, 1.0, 0.75, 0.25, -0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    buffer000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array3 = new Float32Array([-0.75, -0.25, -0.25, -0.5, 0.25, 0.5, 0.75, -0.75, -0.5, 0.0, -1.0, 0.75, -1.0, 0.75, -1.0, -0.75, 0.25, -0.75, 0.75, 0.0, -0.25, -0.5, 0.75, 0.25, 0.25, -0.5, 0.5, -0.25, 0.5, -0.25, 0.5, -1.0, -1.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.0, -0.5, 0.25, -0.5, 0.75, 0.0, -0.75, -1.0, -0.25, 0.25, -0.75, 1.0, -1.0, 0.5, 1.0, -0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 0.75, 0.5, -1.0, 0.5, -1.0, 1.0, 0.75, 0.0, -0.75, 0.75, 0.0, 0.75, -0.5, 0.5, -1.0, -0.25, 1.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.75, 0.5, 0.25, 0.75, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.75, 0.25, -0.5, -0.75, 0.0, 0.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    
    const command_buffer001 = command_encoder001.finish();
    buffer100.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    buffer101.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    command_encoder101.insertDebugMarker("mymarker");
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
        occlusionQuerySet: undefined
    });
    
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_pass_encoder1010.executeBundles([])
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
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    device10.queue.submit([command_buffer100, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    device10.pushErrorScope("validation");
    texture100.destroy();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline000);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group000);
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    buffer102.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1010.popDebugGroup();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    render_bundle_encoder101.setPipeline(render_pipeline103);
    
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_bundle_encoder000.popDebugGroup();
    const array4 = new Float32Array([0.5, 0.5, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, -0.25, -1.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.0, -0.5, -1.0, 1.0, 1.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, -0.75, 0.25, 0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -0.25, -1.0, -0.5, 0.75, 0.75, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, 0.75, -0.25, 0.75, -1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 0.25, -0.75, -1.0, -0.25, 0.25, 0.5, -0.25, -0.5, 0.5, 0.25, 0.5, -0.75, 0.0, 0.25, -0.5, -0.5, 0.75, 0.5, -0.75, 0.0, 0.75, 0.0, 0.25, -0.25, 0.25, -0.75, 0.5, -0.25, 0.75, 0.25, 0.5, 0.5, -1.0, 0.5, 1.0, 0.5, -0.75, 1.0, 1.0, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.popDebugGroup()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
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
    buffer004.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
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
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline102);
    buffer105.destroy()
    render_pass_encoder1010.setPipeline(render_pipeline100);
    buffer005.destroy()
    render_pass_encoder1020.setStencilReference(1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder0030.setStencilReference(1);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer104.destroy()
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0030.popDebugGroup();
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setStencilReference(1);
    texture101.destroy();
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array5 = new Float32Array([0.5, 0.25, 0.0, -0.75, 1.0, 0.5, 0.5, 1.0, 0.0, 0.5, 0.5, -0.75, -0.75, -0.25, -0.5, -1.0, 1.0, -0.25, -0.75, 0.75, -0.25, 0.75, 0.5, -0.5, -0.5, 0.5, 0.0, -0.25, 0.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.0, -0.25, 0.25, 1.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, -0.5, 0.5, -0.75, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -0.25, 1.0, -0.75, -1.0, -0.5, 0.25, -0.25, -0.75, -1.0, -0.5, 0.25, -0.25, 1.0, 1.0, 0.75, -0.5, 1.0, 0.5, -0.25, -0.25, -0.75, 0.75, -1.0, -0.5, 1.0, -1.0, 0.0, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, 0.0, -0.25, 0.25, -1.0, -0.25, -1.0, -0.5, 0.0, 0.5, 0.0, ]);
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array6 = new Float32Array([0.0, -0.25, -0.25, -0.25, -1.0, -0.75, -0.75, 0.5, 0.25, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 0.0, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 1.0, 0.5, 0.0, 1.0, -0.25, -1.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.25, 0.0, 0.75, -0.75, 0.0, 1.0, -0.5, -0.5, 0.25, -1.0, 1.0, -0.75, 0.75, -0.75, -0.25, -1.0, -0.75, 1.0, 0.5, -0.25, -1.0, -1.0, -0.25, -0.25, 0.0, 1.0, -0.5, 0.75, -0.5, 0.75, -0.5, -0.75, 1.0, -0.25, -0.25, -0.5, 0.5, 0.5, -0.75, -0.5, -0.25, 0.25, -1.0, 1.0, 0.0, 0.75, -0.5, 0.0, -1.0, 0.75, -0.25, 0.25, 1.0, -1.0, -1.0, -0.25, -0.25, 0.0, 1.0, 0.0, 0.0, -0.75, -0.5, 0.0, ]);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    compute_pass_encoder0001.end();
    texture001.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    buffer108.destroy()
    render_pass_encoder1011.setStencilReference(1);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    buffer003.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
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
        occlusionQuerySet: query100
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.executeBundles([render_bundle_encoder102, ])
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_buffer002 = command_encoder002.finish();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setPipeline(render_pipeline101);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1020.setPipeline(compute_pipeline107);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    const array7 = new Float32Array([0.5, 1.0, -0.75, 1.0, 0.25, 0.0, -1.0, 0.5, 0.75, -1.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.25, 1.0, 0.25, -0.25, 0.25, 0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -0.75, -1.0, -0.75, -0.75, 0.0, -0.25, 0.75, 0.0, 0.25, 0.0, 0.25, 0.25, -0.75, -1.0, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, 0.75, 0.75, 0.5, -0.25, -0.5, 0.0, 0.5, -0.75, -1.0, -0.75, 0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 1.0, 0.5, -0.5, -0.25, -1.0, -0.5, 1.0, -0.25, 0.25, -0.75, 1.0, -0.25, 0.0, 0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.75, 0.75, 0.75, -0.5, -0.5, -1.0, 0.75, -0.25, -0.75, 0.0, -0.25, 0.75, 0.5, -0.5, 0.75, 1.0, 0.5, -1.0, 0.0, ]);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture003.destroy();
    texture104.destroy();
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    buffer106.destroy()
    query101.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    
    texture002.destroy();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.submit([command_buffer002, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.insertDebugMarker("marker");
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([-0.75, -1.0, -0.25, 0.0, 0.25, 0.25, -0.25, -0.5, 0.25, -0.25, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, -0.75, 0.25, -0.75, -0.5, -0.25, -1.0, -0.5, 0.5, 0.75, -0.5, -1.0, -0.5, 0.5, 0.25, -0.5, 1.0, 0.5, 0.75, 0.5, 0.75, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, -1.0, -1.0, 0.25, -1.0, -1.0, -1.0, 0.5, 1.0, -1.0, 1.0, -0.25, 0.0, 0.25, 1.0, -0.5, -0.25, 0.5, -0.5, -0.5, -0.75, -0.75, -1.0, -0.5, 0.75, -1.0, 1.0, 1.0, -0.5, -0.25, 0.75, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, 0.5, 0.25, 0.75, 1.0, -1.0, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, -0.5, 0.5, 0.0, 1.0, 0.25, -1.0, 1.0, 0.25, 0.5, -1.0, -1.0, ]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder1022.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture300.destroy();
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    command_encoder101.clearBuffer(buffer104);
    
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device30.pushErrorScope("out-of-memory");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    
    
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder101.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder0000.setStencilReference(1);
    device00.pushErrorScope("internal");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer1012.destroy()
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.draw(3);
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer104
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1010, 0, array2, 0, array2.length);
    query103.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1022.setPipeline(render_pipeline102);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    buffer103.destroy()
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query001.destroy()
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    query103.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device00.pushErrorScope("validation");
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    query102.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder1011.popDebugGroup();
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    buffer1010.destroy()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder0001.setPipeline(render_pipeline000);
    
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1022.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0001.setBindGroup(0, bind_group004);
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query102.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    buffer109.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder100.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.setStencilReference(1);
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.drawIndexed(3);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    device20.destroy();
    render_pass_encoder1021.popDebugGroup();
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer1013);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    compute_pass_encoder0020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer005);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1022.setBindGroup(0, bind_group106);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1022.setVertexBuffer(0, buffer107);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer006);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
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

    render_pass_encoder1011.setBindGroup(0, bind_group107);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
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
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group108);
    render_pass_encoder1022.end();
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0012, 0);
    render_pass_encoder1011.setVertexBuffer(0, buffer1020);
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder1022.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.setVertexBuffer(0, buffer100);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.end();
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer006);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
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

    compute_pass_encoder0020.setBindGroup(0, bind_group006);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0030.end();
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    device00.queue.submit([command_buffer001, ]);
    command_encoder003.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0000.end();
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1022.drawIndirect(buffer1012, 0);
    device00.queue.submit([command_buffer002, ]);
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.draw(3);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1022.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0017, 0);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    render_pass_encoder1021.end();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder3010.end();
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder1022.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    command_encoder000.popDebugGroup()
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

    compute_pass_encoder0020.setBindGroup(0, bind_group008);
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

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder1022.drawIndirect(buffer1015, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1022.end();
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0024, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0001.draw(3);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1022.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0027, "uint16");
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0011);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0030, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1022, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder1021.end();
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1022.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0033, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0030.draw(3);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    device10.queue.submit([]);
    render_pass_encoder1022.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.end();
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1010.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder1022.drawIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0001.end();
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.end();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1011.end();
    compute_pass_encoder0020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0030.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1010.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1022.drawIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device10.queue.submit([]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0001.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3014, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    device00.queue.submit([]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0042, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0043, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0001.end();
    compute_pass_encoder0020.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1022.popDebugGroup();
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder1022.drawIndirect(buffer108, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    render_pass_encoder0001.popDebugGroup();
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder1022.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0016);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1034, 0);
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1034, 0);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group306);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1022.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.end();
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0001.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1020.draw(3);
    device00.queue.submit([command_buffer001, ]);
}