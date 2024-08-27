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
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const array0 = new Float32Array([0.5, -0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, -1.0, 0.75, -0.75, 0.0, -0.25, -0.75, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, -0.75, 0.5, 1.0, -1.0, 0.0, 0.25, 0.75, -0.25, 0.25, -1.0, -0.5, 0.75, 0.0, -0.25, -0.75, 0.5, 0.5, -0.5, 0.75, -0.25, 0.25, 0.75, 1.0, 0.25, -1.0, 0.25, -1.0, 1.0, 0.25, -0.25, 1.0, -0.5, 0.5, -0.5, 0.75, 1.0, -0.5, -0.75, -1.0, -0.75, 0.25, 0.0, 0.25, -1.0, -1.0, -1.0, 0.75, -0.75, 0.25, 0.5, 0.0, 0.0, -0.25, -0.25, 0.25, -0.75, -0.75, 0.0, -0.25, 0.5, 0.5, 0.0, -0.5, -0.75, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, 0.0, 1.0, 0.0, -0.25, -1.0, -0.5, 0.25, ]);
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0000.popDebugGroup()
    query000.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer001 = command_encoder001.finish();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    query001.destroy()
    compute_pass_encoder0001.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query001.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    buffer000.destroy()
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
    const array1 = new Float32Array([-1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 0.75, -1.0, 0.25, -1.0, 0.0, -0.5, 0.25, 0.25, 0.25, 0.0, 0.5, -0.75, 0.5, -0.5, -0.75, 0.25, -0.75, 0.25, 0.5, 0.0, 0.0, -0.75, 1.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.5, 0.5, -0.5, 0.5, 0.75, -0.75, -0.25, 0.5, -1.0, -0.75, 1.0, -0.75, 1.0, 0.5, 0.0, 0.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, -1.0, 1.0, 0.5, 0.25, -0.5, 0.0, 0.75, 0.5, 0.75, 0.5, -1.0, -1.0, 0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, -1.0, -0.75, 0.25, 0.25, 1.0, -0.5, 0.75, -1.0, -1.0, -0.5, -0.75, -1.0, -0.75, -0.25, -1.0, 0.25, -1.0, 0.0, -0.75, -0.5, 0.25, -0.25, ]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    compute_pass_encoder0001.setPipeline(compute_pipeline000);
    query000.destroy()
    query000.destroy()
    query001.destroy()
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer001, ]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0021 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0021" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    query000.destroy()
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.pushErrorScope("validation");
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0021.setPipeline(compute_pipeline003);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const command_buffer004 = command_encoder004.finish();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    query002.destroy()
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    buffer004.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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

    compute_pass_encoder0001.setBindGroup(0, bind_group001);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder001.setPipeline(render_pipeline002);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.destroy();
    
    device10.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const command_buffer200 = command_encoder200.finish();
    
    device20.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer300 = command_encoder300.finish();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    buffer203.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer301.destroy()
    device30.pushErrorScope("validation");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer200, ]);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
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
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder201.insertDebugMarker("mymarker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder201.clearBuffer(buffer204);
    render_bundle_encoder200.setPipeline(render_pipeline202);
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
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
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    texture300.destroy();
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    buffer201.destroy()
    device20.pushErrorScope("validation");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.submit([command_buffer300, ]);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder201.copyBufferToBuffer(
        buffer204,
        0,
        buffer205,
        0,
        400
    );
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query400.destroy()
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
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
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    buffer200.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder2011.setPipeline(compute_pipeline201);
    buffer205.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder302.clearBuffer(buffer300);
    render_bundle_encoder300.popDebugGroup();
    command_encoder302.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0021.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    buffer203.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer302 = command_encoder302.finish();
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder203.copyBufferToBuffer(
        buffer208,
        0,
        buffer203,
        0,
        400
    );
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    query401.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.popDebugGroup();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    buffer302.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    
    buffer207.destroy()
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    render_bundle_encoder201.setVertexBuffer(0, buffer205);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    query200.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    query400.destroy()
    
    query401.destroy()
    command_encoder202.copyBufferToBuffer(
        buffer200,
        0,
        buffer209,
        0,
        400
    );
    command_encoder203.copyBufferToBuffer(
        buffer204,
        0,
        buffer209,
        0,
        400
    );
    query402.destroy()
    
    
    
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder201.drawIndirect(buffer204, 0);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    
    buffer202.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    command_encoder203.clearBuffer(buffer202);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    command_encoder203.copyBufferToBuffer(
        buffer204,
        0,
        buffer206,
        0,
        400
    );
    
    
    
    device40.destroy();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer2013,
        0,
        400
    );
    command_encoder204.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group203);
    
    
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    command_encoder203.clearBuffer(buffer206);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer2015.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture201
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
    
    buffer206.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder2040.setPipeline(compute_pipeline205);
    query300.destroy()
    const command_buffer203 = command_encoder203.finish();
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer2011.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    
    
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.submit([command_buffer302, ]);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    compute_pass_encoder3010.popDebugGroup()
    
    texture300.destroy();
    texture201.destroy();
    render_bundle_encoder202.setPipeline(render_pipeline202);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    query200.destroy()
    
    
    buffer209.destroy()
    buffer400.destroy()
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    buffer304.destroy()
    device20.queue.writeBuffer(buffer2010, 0, array0, 0, array0.length);
    texture200.destroy();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2016, 0);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    buffer2014.destroy()
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group204);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_buffer306 = command_encoder306.finish();
    command_encoder307.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("internal");
    device20.queue.submit([command_buffer203, ]);
    
    render_bundle_encoder201.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.executeBundles([])
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder200.setVertexBuffer(0, buffer2013);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    query301.destroy()
    buffer300.destroy()
    command_encoder303.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    compute_pass_encoder3040.setPipeline(compute_pipeline302);
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2010.end();
    compute_pass_encoder3010.end();
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0021.setBindGroup(0, bind_group003);
    command_encoder307.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2011.dispatchWorkgroups(100);
    compute_pass_encoder2011.end();
    command_encoder301.popDebugGroup()
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    compute_pass_encoder0021.dispatchWorkgroups(100);
    const command_buffer307 = command_encoder307.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device30.queue.submit([command_buffer301, command_buffer307, ]);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group206);
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    device10.queue.submit([]);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group207);
    render_pass_encoder2020.setVertexBuffer(0, buffer2016);
    command_encoder303.popDebugGroup()
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group303);
    compute_pass_encoder2011.end();
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2027, 0);
    device30.queue.submit([command_buffer301, command_buffer302, command_buffer304, command_buffer306, ]);
    render_pass_encoder2020.end();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2028, 0);
    compute_pass_encoder3040.end();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2029, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3030.end();
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    const command_buffer303 = command_encoder303.finish();
    device20.queue.submit([command_buffer204, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3011, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2030, 0);
    compute_pass_encoder2040.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3012, 0);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3010.end();
    compute_pass_encoder2011.popDebugGroup()
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2031, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3013, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    compute_pass_encoder3030.end();
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
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2032, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group209);
    compute_pass_encoder3030.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3015, 0);
    device30.queue.submit([command_buffer303, command_buffer306, ]);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group304);
    compute_pass_encoder2040.popDebugGroup()
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
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
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group305);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group306);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group307);
    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2036,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2010);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2037, 0);
    device30.queue.submit([command_buffer300, command_buffer306, ]);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    compute_pass_encoder3010.end();
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    compute_pass_encoder2040.end();
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2012);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group308);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2013);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    device30.queue.submit([command_buffer302, command_buffer306, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer305, command_buffer307, ]);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer305, command_buffer306, ]);
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3030, 0);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2014);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer403, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer403, 0);
    compute_pass_encoder2011.end();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2010.end();
    compute_pass_encoder3010.end();
    device20.queue.submit([command_buffer204, ]);
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2015);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3010.end();
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3011);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    device30.queue.submit([command_buffer304, command_buffer305, command_buffer306, ]);
    device30.queue.submit([command_buffer304, ]);
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3012);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer404, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer404, 0);
    compute_pass_encoder3040.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2016);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0012, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    device30.queue.submit([command_buffer305, ]);
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2017);
    compute_pass_encoder3030.popDebugGroup()
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3013);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    compute_pass_encoder2011.popDebugGroup()
    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2054,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2011.end();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2055, 0);
    device30.queue.submit([command_buffer303, ]);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3038, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2057,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2019);
    device30.queue.submit([command_buffer303, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2058, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2058, 0);
    compute_pass_encoder2011.popDebugGroup()
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2020);
    compute_pass_encoder4000.end();
    device30.queue.submit([command_buffer306, ]);
    device20.queue.submit([]);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3014);
    compute_pass_encoder2040.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer302, command_buffer307, ]);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3041, 0);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3015);
    device30.queue.submit([command_buffer307, ]);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer306, ]);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3030.popDebugGroup()
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2021);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3044, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3044, 0);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2022);
    device20.queue.submit([command_buffer203, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0013, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2065, 0);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2066, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2066, 0);
    compute_pass_encoder3040.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer302, ]);
    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2068,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2023);
    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2070,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2024);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2025);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder3030.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder3030.popDebugGroup()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3045, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3045, 0);
    render_pass_encoder2020.popDebugGroup();
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2026);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2027);
    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2080,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2028);
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0001.end();
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2010.end();
    compute_pass_encoder2040.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2011.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder3040.end();
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2029);
    compute_pass_encoder3030.end();
    device20.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder3030.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    device30.queue.submit([command_buffer303, command_buffer306, ]);
    compute_pass_encoder2010.popDebugGroup()
}