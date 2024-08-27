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
    const array0 = new Float32Array([-0.75, -1.0, 0.75, 0.0, 1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.25, -0.75, 1.0, 0.25, -1.0, -0.75, -0.5, 1.0, 0.0, 0.75, 0.75, 0.5, -1.0, 0.25, -1.0, -1.0, -0.5, -0.75, 0.5, 0.0, 0.75, -0.75, 0.0, 0.5, 1.0, -1.0, 0.5, 0.75, 1.0, -1.0, -0.5, -0.75, 0.75, -0.5, -0.25, -0.75, -1.0, 0.5, 0.75, 1.0, 0.75, -0.75, 1.0, 0.25, 0.5, 0.5, 0.0, -0.75, 0.75, 0.0, 0.25, -0.25, 0.0, 0.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, 0.25, -0.5, -0.75, -0.25, 0.0, 0.0, -0.75, 0.0, 0.25, -0.5, 0.75, 1.0, 0.5, -0.25, -0.75, -0.5, 0.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("out-of-memory");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder003.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.popDebugGroup()
    
    
    render_bundle_encoder000.popDebugGroup();
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    query000.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query000.destroy()
    device10.pushErrorScope("internal");
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    texture001.destroy();
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
    buffer001.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.pushErrorScope("out-of-memory");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    texture000.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_bundle_encoder002.setPipeline(render_pipeline002);
    query001.destroy()
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0021 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0021" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0021.setPipeline(compute_pipeline000);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
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
    device00.pushErrorScope("validation");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    texture100.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    
    compute_pass_encoder0021.pushDebugGroup("group_marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
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

    compute_pass_encoder0021.setBindGroup(0, bind_group002);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group003);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0021.popDebugGroup()
    
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    buffer008.destroy()
    compute_pass_encoder0021.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer004.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    buffer006.destroy()
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
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
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer008
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
    buffer101.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    
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
    
    compute_pass_encoder0021.pushDebugGroup("group_marker")
    device10.pushErrorScope("internal");
    device20.destroy();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_buffer000 = command_encoder000.finish();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    compute_pass_encoder0050.setPipeline(compute_pipeline006);
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer005.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer003.destroy()
    
    buffer0010.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    texture002.destroy();
    buffer102.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.drawIndirect(buffer003, 0);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const array1 = new Float32Array([0.5, 0.0, 0.25, -0.75, -0.75, 0.5, 0.75, -0.75, -1.0, -0.75, 0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, -0.75, -0.25, 0.25, -0.25, -0.25, 0.25, -0.5, 0.75, -1.0, -1.0, 0.5, -0.25, 0.0, 0.25, -0.5, -0.75, -0.5, 0.25, -0.25, 0.5, 0.25, 1.0, 0.5, -1.0, -1.0, 0.0, 0.25, -1.0, 0.5, -0.75, 0.75, -1.0, 0.0, 1.0, 1.0, -0.5, 0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 1.0, -0.75, -0.25, -1.0, 0.5, 0.75, 1.0, -0.75, 0.5, 0.25, 0.75, -0.75, 1.0, -0.75, 1.0, 1.0, 0.75, -0.5, -0.25, -1.0, -0.75, 0.75, 0.25, 0.0, 1.0, -0.75, -0.5, 0.25, 0.0, -1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -1.0, -0.75, 0.0, 0.25, -1.0, -0.5, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    render_bundle_encoder001.drawIndirect(buffer008, 0);
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
    const array2 = new Float32Array([1.0, -0.25, -0.75, -0.5, 0.75, 1.0, 0.75, 0.25, -0.5, -0.75, -0.25, 0.25, -0.75, 0.25, 0.5, 0.5, -1.0, -0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.75, 1.0, -1.0, -0.25, 0.0, 0.25, 0.25, 1.0, 0.5, 0.25, -0.5, -0.75, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, -0.25, 0.0, -0.5, 1.0, -1.0, 0.75, 0.0, 0.0, 1.0, 0.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.25, -0.25, 1.0, -0.75, 0.25, -0.5, 0.25, 0.25, -0.75, 0.75, 0.0, 0.25, -0.5, 0.0, 1.0, -1.0, 0.25, 0.75, 0.25, -0.25, 0.5, -0.5, 0.5, -0.5, -0.25, -0.75, -0.75, -0.25, -0.25, -0.75, -0.5, -0.75, 0.0, -0.5, 1.0, 1.0, -0.5, -0.75, -0.25, ]);
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query001.destroy()
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    buffer0012.destroy()
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    command_encoder400.insertDebugMarker("mymarker");
    buffer008.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer000.destroy()
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder0021.insertDebugMarker("marker")
    
    
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
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
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    command_encoder004.clearBuffer(buffer002);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0016, 0);
    device50.destroy();
    command_encoder004.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    device40.pushErrorScope("validation");
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    buffer104.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder004.clearBuffer(buffer0013);
    command_encoder004.copyBufferToBuffer(
        buffer0010,
        0,
        buffer0011,
        0,
        400
    );
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    buffer103.destroy()
    command_encoder004.copyBufferToBuffer(
        buffer005,
        0,
        buffer0017,
        0,
        400
    );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer103.destroy()
    
    render_pass_encoder1010.setStencilReference(1);
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
        occlusionQuerySet: undefined
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    texture005.destroy();
    compute_pass_encoder0030.end();
    texture003.destroy();
    const array3 = new Float32Array([0.25, 0.75, -0.75, 0.0, -0.75, 0.75, 0.25, -0.5, 0.5, 0.75, -0.5, 0.0, -0.75, 0.5, 0.0, 0.25, -0.25, 0.75, -1.0, 0.0, 1.0, -0.25, -0.25, -0.25, 0.5, 0.75, 0.25, 0.0, -0.5, 0.75, 0.5, -0.5, -1.0, 1.0, -0.5, -0.5, -0.5, 0.0, -0.5, 0.5, 1.0, 0.5, -1.0, 0.0, 0.75, -0.75, 1.0, 0.5, -0.5, 1.0, 0.0, -0.75, -0.5, 0.5, -0.25, 0.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.75, -1.0, -0.5, 1.0, -0.5, 0.25, -0.25, -1.0, 0.0, 1.0, 0.5, -1.0, -0.25, -1.0, 0.25, -0.25, -1.0, 1.0, -0.5, 1.0, ]);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder1010.insertDebugMarker("marker");
    device60.pushErrorScope("internal");
    render_pass_encoder1000.executeBundles([])
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer0014,
        0
    )
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0016, 0, array2, 0, array2.length);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group006);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer0020.destroy()
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
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
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
    command_encoder003.copyBufferToBuffer(
        buffer0014,
        0,
        buffer004,
        0,
        400
    );
    
    command_encoder004.copyBufferToBuffer(
        buffer002,
        0,
        buffer0018,
        0,
        400
    );
    
    
    
    command_encoder004.clearBuffer(buffer0017);
    buffer100.destroy()
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder1010.setStencilReference(1);
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer0014,
        0
    )
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder001.setIndexBuffer(buffer006, "uint16");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer0016, 0, array0, 0, array0.length);
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
    
    device00.queue.writeBuffer(buffer0016, 0, array1, 0, array1.length);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const command_buffer004 = command_encoder004.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer0018
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder1030.insertDebugMarker("marker");
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device30.pushErrorScope("internal");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0017.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer0018.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer101.destroy()
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const array4 = new Float32Array([-0.25, 0.25, 0.25, -0.5, -1.0, -0.5, -1.0, -0.25, 0.5, -0.25, 0.75, 0.75, -0.25, 1.0, -0.25, 0.5, 1.0, -1.0, -0.25, 0.5, -1.0, 0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 0.25, 0.75, -0.5, 0.25, 0.0, 0.75, 0.25, 0.75, 0.75, 1.0, 0.25, 1.0, -0.75, -0.25, 0.75, 0.0, 0.25, -0.75, -0.5, -0.5, 1.0, -0.5, 0.5, 0.5, 0.5, 1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, 1.0, -1.0, -0.75, 0.75, -0.25, 1.0, -0.25, 0.0, -0.25, 0.0, 0.25, -0.25, 0.75, 0.75, 0.75, -0.75, 0.75, 1.0, 0.5, -0.75, -1.0, -0.5, 1.0, -0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 1.0, 0.5, 0.5, -1.0, 1.0, 1.0, -0.5, 1.0, ]);
    render_pass_encoder0030.setPipeline(render_pipeline002);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer601.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.draw(3);
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const command_buffer400 = command_encoder400.finish();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query002.destroy()
    device00.queue.writeBuffer(buffer0021, 0, array2, 0, array2.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder1000.setStencilReference(1);
    
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.queue.writeBuffer(buffer0016, 0, array1, 0, array1.length);
    buffer004.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline102);
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    
    command_encoder003.copyBufferToBuffer(
        buffer0019,
        0,
        buffer006,
        0,
        400
    );
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1010, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setPipeline(render_pipeline000);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1030.setPipeline(render_pipeline103);
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group007);
    const command_buffer002 = command_encoder002.finish();
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, ]);
    render_pass_encoder1000.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1013, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.setVertexBuffer(0, buffer003);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.drawIndirect(buffer0022, 0);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_pass_encoder1030.setBindGroup(0, bind_group105);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group009);
    compute_pass_encoder0050.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    render_pass_encoder0030.setVertexBuffer(0, buffer007);
    render_pass_encoder0060.drawIndirect(buffer0021, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer107);
    compute_pass_encoder0000.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    compute_pass_encoder0021.end();
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    compute_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.end();
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
    render_pass_encoder0030.end();
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder0020.end();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0050.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndirect(buffer0022, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1030.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const command_buffer102 = command_encoder102.finish();
    command_encoder103.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.end();
    const command_buffer005 = command_encoder005.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer006, ]);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0029, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0010);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder0060.popDebugGroup();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0033, 0);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0021.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer106, 0);
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0021.dispatchWorkgroups(100);
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.setIndexBuffer(buffer0037, "uint16");
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0014);
    device20.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.end();
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder1020.popDebugGroup()
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
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
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0015);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
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
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0016);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1024, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    compute_pass_encoder0021.end();
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    device30.queue.submit([]);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0060.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.popDebugGroup();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group108);
    compute_pass_encoder0021.end();
    compute_pass_encoder0021.end();
    render_pass_encoder1010.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0051, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    compute_pass_encoder0021.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder0060.setIndexBuffer(buffer009, "uint16");
    const command_buffer401 = command_encoder401.finish();
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0054, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0021);
    compute_pass_encoder0030.end();
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0061, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0021.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0019, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    compute_pass_encoder4010.popDebugGroup()
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0022);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0050.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0065, 0);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0060.drawIndirect(buffer0062, 0);
    compute_pass_encoder0021.end();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0023);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0024);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder1010.popDebugGroup();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0070, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0070, 0);
    render_pass_encoder1010.popDebugGroup();
    device60.queue.submit([]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1035, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0071, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0071, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1036, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    device00.queue.submit([]);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0025);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder0021.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    compute_pass_encoder0020.end();
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0028);
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
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
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0080, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.end();
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0029);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder0021.end();
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    compute_pass_encoder0021.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0084, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0071, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0030);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1039, "uint16");
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0031);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0000.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
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
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device30.queue.submit([]);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    device60.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0032);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0091, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder0060.setIndexBuffer(buffer0027, "uint16");
    device10.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder0021.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1010.end();
    compute_pass_encoder0021.end();
    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0093,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0033);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder0030.drawIndirect(buffer0071, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0095,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0034);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device40.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0096, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0096, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0071, 0);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0035);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1010.popDebugGroup();
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0030.end();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0099, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0099, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    device10.queue.submit([]);
    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00101,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder0030.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00102, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00102, 0);
    compute_pass_encoder1010.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00103, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00103, 0);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    compute_pass_encoder1010.end();
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer006, ]);
    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00105,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0037);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder0030.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00106, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00106, 0);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1041, "uint16");
    device10.queue.submit([command_buffer100, ]);
    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00108,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0038);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0091, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.end();
    device00.queue.submit([command_buffer000, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00109, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00109, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0039);
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder0020.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1056, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1057, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1058, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder0021.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder0000.end();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00113, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00113, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    device60.queue.submit([]);
    compute_pass_encoder0050.end();
    device10.queue.submit([command_buffer102, ]);
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    compute_pass_encoder0050.end();
    device00.queue.submit([]);
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0040);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00116, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00116, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    device60.queue.submit([]);
    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00118,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0041);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer001, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0042);
    compute_pass_encoder0021.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0096, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1010.end();
    compute_pass_encoder1020.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1058, 0);
    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00122,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0043);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1050, "uint16");
    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00124,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00126,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0045);
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    render_pass_encoder0030.drawIndirect(buffer00102, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer103, ]);
    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00128,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0046);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00129, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer00129, 0);
    device40.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00130, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00130, 0);
    compute_pass_encoder1020.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    compute_pass_encoder0030.end();
    compute_pass_encoder0030.end();
    render_pass_encoder1030.end();
    render_pass_encoder0030.drawIndirect(buffer00112, 0);
    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00132,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0047);
    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00134,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0048);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder1000.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0070, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1057, 0);
    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00136,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0049);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndirect(buffer00106, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1010.drawIndirect(buffer1056, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00137, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00137, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1061, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0060.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1056, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0091, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder0021.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder0060.drawIndirect(buffer0033, 0);
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    render_pass_encoder0030.drawIndirect(buffer0071, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00138, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00138, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0021.end();
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1068, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0030.end();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1069, 0);
    device40.queue.submit([]);
    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00140,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0050);
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00109, 0);
    compute_pass_encoder0000.popDebugGroup()
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
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
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00142,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0051);
    render_pass_encoder0030.setIndexBuffer(buffer00124, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1072, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1072, 0);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00143, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer00143, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00144, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer00144, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00145, 0);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder0050.end();
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.end();
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00146, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer00146, 0);
    device30.queue.submit([]);
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder0021.end();
    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00148,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0052);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00149, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00149, 0);
    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00151,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0053);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    compute_pass_encoder0021.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1069, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00152, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer00152, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    compute_pass_encoder0050.popDebugGroup()
}