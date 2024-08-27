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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array0 = new Float32Array([-0.25, -1.0, -0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.0, 0.25, -0.25, 0.75, 0.75, 0.0, -1.0, 0.0, 0.75, 1.0, -0.75, 0.75, -1.0, -0.25, 0.0, -0.5, 0.0, -0.75, -0.5, -0.75, -0.25, 0.0, 0.0, 1.0, -0.5, 0.25, -0.5, -1.0, -0.75, -1.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.25, 0.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.75, 0.0, -0.5, 1.0, -1.0, -0.75, -0.5, 0.75, -1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, -0.25, 0.0, -0.75, -0.5, -0.75, -0.75, 0.25, -0.75, 0.25, 0.0, -0.5, 0.5, 0.5, -1.0, ]);
    const array1 = new Float32Array([-0.5, 0.5, -0.25, -0.5, -1.0, -0.25, 0.0, -1.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.75, -0.5, 1.0, 0.5, 1.0, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, -1.0, -0.5, -0.75, -0.75, -0.75, 0.5, -1.0, -0.5, 0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, -0.75, -0.75, -0.75, -1.0, -0.75, 0.0, 0.0, -0.25, 1.0, 0.75, -0.25, -0.25, -0.5, 0.0, -1.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.75, 0.5, -0.25, 0.25, 0.25, 0.5, -0.75, 1.0, 0.0, -0.5, -0.75, -0.25, 1.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.5, 1.0, 0.25, 0.25, 0.25, 0.5, -0.75, 0.0, 0.5, 0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 1.0, -0.75, 0.5, 0.0, ]);
    query000.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    query000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder001.popDebugGroup()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.popDebugGroup()
    query001.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query001.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    query001.destroy()
    const array2 = new Float32Array([-0.5, 0.25, 0.75, -0.5, -0.25, -1.0, -0.75, 0.75, -0.25, -0.5, 0.25, -1.0, -0.5, 0.0, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, -0.75, -1.0, -0.75, -1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, -0.75, 0.0, 0.5, -0.5, -0.75, 0.75, 0.0, -0.75, -0.75, -0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 0.0, -1.0, -1.0, -0.75, 1.0, 0.5, 1.0, 1.0, -0.25, -0.5, 1.0, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, -0.75, 0.5, -0.25, -0.75, 1.0, 0.5, -0.25, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, -0.5, -0.5, 0.25, -0.25, 0.5, 1.0, 0.25, -0.25, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, 1.0, 0.75, 1.0, 0.25, 0.5, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.25, 0.0, 0.25, 0.25, 0.0, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, -0.75, -1.0, 0.5, -0.25, 1.0, -0.25, -0.75, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.75, 0.5, 0.5, 0.5, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 1.0, 0.5, 0.75, 0.0, -0.5, -0.75, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.75, 0.0, -1.0, 0.25, -0.5, 0.0, -0.5, -0.75, 0.25, -0.5, -0.25, -1.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.75, -0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.25, -1.0, -0.5, 0.0, 0.25, 0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -1.0, -0.25, -0.25, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, ]);
    
    const array4 = new Float32Array([-0.75, -0.5, 1.0, -0.5, -0.75, 0.25, -0.5, 0.0, -0.5, 1.0, 0.25, -0.5, -0.75, -0.25, 1.0, -0.5, -0.5, -0.25, -0.75, 1.0, 0.25, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, -0.75, 0.25, 0.0, 0.5, 0.5, -0.75, -0.5, -1.0, -1.0, 0.25, -1.0, 1.0, 0.0, -0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.25, 0.75, 0.5, -0.75, 0.25, -0.25, 1.0, 1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 0.5, -0.5, 0.0, -0.25, 0.5, -1.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, 0.25, 0.0, -1.0, 0.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.0, -0.25, 0.5, -1.0, 0.25, -0.25, -0.25, 1.0, -0.25, -0.25, -1.0, -0.5, 0.5, 0.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.0, ]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const command_buffer003 = command_encoder003.finish();
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder001.popDebugGroup()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture000.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0000.popDebugGroup()
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
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    command_encoder005.insertDebugMarker("mymarker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.popDebugGroup()
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    
    
    query001.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder002.popDebugGroup()
    query003.destroy()
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_buffer002 = command_encoder002.finish();
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    buffer004.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
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
    
    device00.pushErrorScope("internal");
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    buffer002.destroy()
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder005.insertDebugMarker("mymarker");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer005, 0);
    
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    
    query002.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer000.destroy()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.popDebugGroup();
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.setPipeline(compute_pipeline000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    compute_pass_encoder0060.setBindGroup(0, bind_group001);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer101.destroy()
    
    command_encoder005.clearBuffer(buffer005);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    buffer003.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder0060.insertDebugMarker("marker")
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    query005.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    query003.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    
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

    render_bundle_encoder000.setBindGroup(0, bind_group003);
    query005.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    texture001.destroy();
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    buffer008.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline005);
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder100.insertDebugMarker("mymarker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    command_encoder007.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer100 = command_encoder100.finish();
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    compute_pass_encoder0070.setPipeline(compute_pipeline000);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0070.setBindGroup(0, bind_group004);
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer0011.destroy()
    device00.queue.submit([command_buffer002, ]);
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    command_encoder009.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder009.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    
    command_encoder009.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query003.destroy()
    
    
    command_encoder009.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0080.setPipeline(compute_pipeline004);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    compute_pass_encoder0050.setPipeline(compute_pipeline0012);
    command_encoder009.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    command_encoder0010.clearBuffer(buffer005);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder0010.pushDebugGroup("mygroupmarker")
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer103.destroy()
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder0010.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    command_encoder0010.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder009.clearBuffer(buffer005);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0050.popDebugGroup()
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group006);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0070.insertDebugMarker("marker")
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder009.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
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
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0080.insertDebugMarker("marker")
    compute_pass_encoder0070.insertDebugMarker("marker")
    
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    command_encoder0010.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder009.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer009 = command_encoder009.finish();
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const array5 = new Float32Array([0.75, -0.25, -0.5, -0.75, 0.25, 0.0, -0.5, -1.0, 0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -0.75, -0.5, 0.25, -1.0, -1.0, 0.75, 0.0, -0.5, 0.0, 0.75, -0.5, -0.25, 1.0, -0.5, 0.0, 1.0, 0.25, 0.5, 0.0, 1.0, -1.0, 0.25, -0.25, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 1.0, 0.5, 0.25, 0.5, 0.0, -0.5, -0.25, 0.5, -0.25, -0.75, 0.25, -0.5, 0.25, -0.5, -0.75, -0.5, 0.75, 0.0, 0.5, -0.25, 1.0, -0.75, -1.0, -1.0, -0.5, 0.75, -0.5, -1.0, -1.0, 0.75, -0.75, -0.5, 1.0, -0.25, 0.5, 0.0, -0.75, 0.75, 0.25, -1.0, -0.5, 0.75, -0.5, 0.25, -0.5, 1.0, -0.5, -0.25, -0.75, 0.5, -1.0, -1.0, 0.0, 0.5, 0.75, 0.0, 0.25, ]);
    buffer0016.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder0010.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    query101.destroy()
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    query006.destroy()
    command_encoder0011.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    buffer009.destroy()
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    buffer007.destroy()
    device00.queue.submit([command_buffer004, command_buffer009, ]);
    command_encoder0010.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder0011.pushDebugGroup("mygroupmarker")
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    buffer001.destroy()
    command_encoder0011.popDebugGroup()
    command_encoder0011.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    buffer0013.destroy()
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    
    compute_pass_encoder0080.popDebugGroup()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query006.destroy()
    command_encoder0010.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder0010.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder0011.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    command_encoder0011.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder00110 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00110" });
    compute_pass_encoder00110.setPipeline(compute_pipeline0025);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder00110.insertDebugMarker("marker")
    command_encoder0010.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.popDebugGroup();
    
    compute_pass_encoder0000.popDebugGroup()
    query005.destroy()
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    command_encoder0010.clearBuffer(buffer005);
    compute_pass_encoder0070.pushDebugGroup("group_marker")
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0080.setBindGroup(0, bind_group007);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    query006.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device10.pushErrorScope("validation");
    compute_pass_encoder0080.insertDebugMarker("marker")
    query102.destroy()
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    
    buffer0018.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer005.destroy()
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0021, 0);
    
    
    
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    command_encoder0010.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    command_encoder0010.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    buffer0015.destroy()
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
        occlusionQuerySet: query100
    });
    compute_pass_encoder0000.popDebugGroup()
    command_encoder0010.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query006.destroy()
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    compute_pass_encoder0060.popDebugGroup()
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0021, 0, array4, 0, array4.length);
    buffer0014.destroy()
    render_pass_encoder1020.executeBundles([])
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0060.end();
    command_encoder0010.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder0010.clearBuffer(buffer0021);
    
    buffer0019.destroy()
    command_encoder0010.resolveQuerySet(
        query006,
        0,
        32,
        buffer004,
        0
    )
    buffer102.destroy()
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0080.end();
    compute_pass_encoder0050.popDebugGroup()
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group008);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0050.end();
    command_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.end();
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const command_buffer0010 = command_encoder0010.finish();
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder0070.popDebugGroup()
    command_encoder005.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder0070.end();
    const command_buffer005 = command_encoder005.finish();
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer0010, ]);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline0025.getBindGroupLayout(0),
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

    compute_pass_encoder00110.setBindGroup(0, bind_group009);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    const command_buffer007 = command_encoder007.finish();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder00110.end();
    const command_buffer0011 = command_encoder0011.finish();
    device00.queue.submit([command_buffer006, command_buffer0011, ]);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
}