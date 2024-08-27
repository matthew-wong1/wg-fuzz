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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array0 = new Float32Array([-1.0, 1.0, 0.25, 0.25, 0.75, 0.25, -0.5, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, 0.25, -0.5, 0.0, 0.25, 0.75, 1.0, -0.25, -0.75, 0.5, -1.0, 1.0, -0.25, -0.25, 0.5, 1.0, 0.0, -0.5, 1.0, -0.75, -0.25, 0.25, -0.5, 0.75, -0.5, -0.5, 0.0, -0.5, 0.5, -0.5, 0.75, 0.75, 0.0, -1.0, 0.75, 1.0, -1.0, -0.75, -0.75, 0.5, 0.0, 0.5, -0.25, 0.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.5, 0.25, 0.5, 1.0, 1.0, -0.5, -0.5, 0.5, 0.0, -0.25, -0.25, 0.25, 0.0, -0.25, 0.5, -0.75, 0.5, -1.0, -0.75, 0.5, 0.5, -1.0, -0.75, -0.5, 0.5, 0.0, -0.75, -1.0, -0.75, -0.25, -0.75, 1.0, -0.25, 1.0, -0.75, -1.0, -0.5, -0.5, 0.75, ]);
    const array1 = new Float32Array([1.0, 0.5, -0.5, 0.75, 0.25, 0.25, 1.0, 0.5, -0.5, -0.25, 0.0, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, 1.0, -1.0, 0.25, -0.25, -0.75, 0.5, 0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -0.5, -0.25, -0.5, -1.0, -0.75, -1.0, -1.0, -0.25, -0.25, 0.0, -1.0, 0.25, -0.5, -0.75, 0.25, 0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.0, 0.25, 0.5, -0.25, 0.5, 0.75, 0.0, -0.25, 0.25, -0.5, 1.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.75, 0.25, -1.0, 0.25, 0.5, -0.75, 0.25, 0.75, -0.75, -0.75, 0.75, 0.5, -0.75, 1.0, -0.25, 0.0, 0.0, 0.0, 1.0, -0.5, 0.25, 0.5, 0.75, 0.75, 0.25, -0.25, -0.25, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, 1.0, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    
    
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer000.destroy()
    device00.pushErrorScope("internal");
    
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
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
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
    command_encoder001.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-0.25, 0.5, 0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -0.25, 1.0, 0.25, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -0.25, 0.5, -0.25, 0.0, -1.0, 0.75, -0.75, -0.75, 1.0, 0.75, 0.75, -1.0, -0.5, -0.5, 0.75, 0.75, 0.5, 0.75, 0.75, -0.75, 0.25, 1.0, 0.0, 0.5, -0.25, -0.25, 0.75, -0.5, -1.0, 1.0, -0.75, 0.75, -0.25, 0.0, -0.5, -1.0, -0.25, -0.25, 0.25, -0.75, 0.5, 0.5, -0.5, 1.0, -1.0, -1.0, -1.0, -0.25, 0.25, 0.0, -0.75, 0.0, 0.5, 1.0, -1.0, -1.0, -0.75, 0.25, 0.25, 1.0, -0.75, 0.0, -0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.0, 0.0, -0.5, -0.5, -0.75, 0.0, 0.5, -0.5, -0.5, ]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    compute_pass_encoder0000.popDebugGroup()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    buffer001.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder001.setPipeline(render_pipeline002);
    
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
        layout: render_pipeline002.getBindGroupLayout(0),
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
    const array3 = new Float32Array([-0.5, 1.0, 1.0, -0.75, 0.25, 0.25, 0.5, 1.0, -0.5, 0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 0.0, 0.25, -1.0, 0.5, -0.75, -0.75, -0.75, -0.25, 0.5, 0.25, 1.0, 0.75, 0.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.25, -1.0, -0.5, -0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.25, -0.25, 0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.75, -0.75, 0.5, 0.75, 0.25, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, 0.75, 0.0, -0.25, 0.0, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, 0.0, 0.0, -0.75, 1.0, 1.0, 0.75, 1.0, -0.75, 0.0, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 0.25, -0.5, -1.0, 0.5, 0.25, ]);
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer003.destroy()
    
    const array4 = new Float32Array([1.0, 0.0, 0.25, 1.0, 0.5, -0.5, -0.5, -0.25, -1.0, 0.25, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, 0.5, -0.25, 1.0, 0.0, -0.5, 0.5, -0.25, 0.25, 0.75, -0.25, -0.75, 0.75, 1.0, 0.25, -0.75, -0.5, 0.75, -0.75, -0.5, 1.0, -0.75, -0.25, -0.75, 0.75, 0.25, 0.75, 0.75, -0.5, 0.5, -0.5, 0.5, 0.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, 0.5, 1.0, 0.25, 0.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.75, -1.0, -0.75, 1.0, -0.75, -0.25, -0.75, -0.75, -1.0, -0.25, 1.0, 0.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, -0.75, 0.25, 0.5, 0.75, -1.0, 0.75, 0.5, -0.5, 0.0, 0.75, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, 1.0, -0.75, 0.25, 0.75, -0.75, 0.0, 0.25, -0.25, 0.0, -0.5, 0.5, -0.25, 0.25, 0.0, -0.75, 0.25, -0.25, 0.25, -0.75, -0.25, -0.75, 1.0, 0.0, 1.0, 1.0, 0.5, 0.0, -0.25, 0.25, -0.75, 0.25, -1.0, -0.25, 0.5, -0.5, 0.75, 0.25, -0.5, 0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 0.0, 1.0, 1.0, 0.25, 0.0, 0.75, -0.5, -0.5, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.75, 0.75, -0.25, -0.5, -1.0, -0.25, 0.25, -0.5, 0.25, -1.0, -0.5, 0.5, 0.5, -0.25, -0.75, 0.0, -0.75, 0.25, 0.5, 1.0, -0.75, 0.25, 0.5, 1.0, 0.5, 0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 1.0, 0.25, -1.0, 1.0, 0.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-0.75, 0.5, -1.0, -0.5, 0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -0.25, -0.25, 0.5, 0.75, -0.75, -1.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.5, 0.0, 1.0, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.75, -0.5, -0.75, -0.75, 0.25, 0.5, 0.0, -0.75, -0.75, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -0.25, 0.75, 0.0, 0.0, -0.75, -0.75, 0.25, -1.0, 0.5, -0.75, -0.25, -1.0, 0.0, -0.5, -0.75, 0.25, 0.75, 0.5, 0.5, 0.5, -0.25, -0.25, 0.5, 0.25, 0.5, -1.0, -0.25, -0.5, 0.75, -0.25, 0.5, 0.75, -0.25, -0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, -1.0, ]);
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
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
    render_bundle_encoder000.setPipeline(render_pipeline003);
    device00.pushErrorScope("validation");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    const command_buffer000 = command_encoder000.finish();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture000.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    command_encoder002.clearBuffer(buffer004);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer004.destroy()
    
    
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
        occlusionQuerySet: undefined
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0020.setPipeline(render_pipeline000);
    device00.pushErrorScope("internal");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture201.destroy();
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0010.executeBundles([])
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    buffer005.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0010.executeBundles([])
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    query001.destroy()
    buffer006.destroy()
    buffer008.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    texture202.destroy();
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer002.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline003);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyBufferToBuffer(
        buffer009,
        0,
        buffer008,
        0,
        400
    );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    command_encoder003.copyBufferToBuffer(
        buffer009,
        0,
        buffer005,
        0,
        400
    );
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_bundle_encoder000.setVertexBuffer(0, buffer006);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer007.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.copyBufferToBuffer(
        buffer009,
        0,
        buffer006,
        0,
        400
    );
    
    
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
    render_bundle_encoder001.setVertexBuffer(0, buffer008);
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0001.setPipeline(compute_pipeline001);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    compute_pass_encoder0000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    
    
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture204.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
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
    command_encoder003.insertDebugMarker("mymarker");
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    
    query200.destroy()
    buffer007.destroy()
    query200.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder002.insertDebugMarker("mymarker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    texture200.destroy();
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.insertDebugMarker("marker")
    buffer0010.destroy()
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
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
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer0010,
        0,
        400
    );
    command_encoder004.clearBuffer(buffer0011);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    buffer0011.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setIndexBuffer(buffer004, "uint16");
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
        occlusionQuerySet: query000
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder003.copyBufferToBuffer(
        buffer009,
        0,
        buffer000,
        0,
        400
    );
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setPipeline(render_pipeline006);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    command_encoder100.copyTextureToTexture(
        {
            texture: texture101
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder0001.popDebugGroup()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer009
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_bundle_encoder001.setIndexBuffer(buffer003, "uint16");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer009.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder0040.setPipeline(render_pipeline003);
    render_pass_encoder0020.pushDebugGroup("group_marker");
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.drawIndexedIndirect(buffer002, 0);
    render_bundle_encoder001.drawIndirect(buffer0014, 0);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.setIndexBuffer(buffer007, "uint16");
    render_bundle_encoder001.finish();
    
    
    device00.pushErrorScope("validation");
    
    command_encoder100.clearBuffer(buffer100);
    device10.pushErrorScope("internal");
    device30.pushErrorScope("internal");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder001.drawIndexed(3);
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer300.destroy()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    buffer300.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer100 = command_encoder100.finish();
    buffer0013.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer002);
    render_pass_encoder0011.setPipeline(render_pipeline007);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    device20.pushErrorScope("internal");
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.endOcclusionQuery()
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0014,
            entryPoint: "main"
        }
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module0014,
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
            module: shader_module0014,
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
    command_encoder300.insertDebugMarker("mymarker");
    query201.destroy()
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder005.copyBufferToBuffer(
        buffer009,
        0,
        buffer009,
        0,
        400
    );
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer000.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
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
    render_pass_encoder0040.setVertexBuffer(0, buffer002);
    render_pass_encoder0050.setPipeline(render_pipeline008);
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer000, ]);
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group007);
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0010.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0021, 0);
    render_pass_encoder0011.setVertexBuffer(0, buffer001);
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.end();
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.end();
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0050.setVertexBuffer(0, buffer0017);
    render_pass_encoder0010.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0011.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0001.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    command_encoder001.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0010.end();
    render_pass_encoder0050.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2002.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.popDebugGroup();
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
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndexed(3);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2001.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0040.end();
    device30.queue.submit([]);
    device10.queue.submit([]);
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0012);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0050.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    compute_pass_encoder0010.end();
    device20.queue.submit([]);
    render_pass_encoder0011.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
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
    render_pass_encoder0030.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.end();
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0013);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0030.end();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder0001.end();
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2002.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0014);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer005, ]);
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder2002.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer004, ]);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.popDebugGroup();
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder0001.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
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
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
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
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2001.endOcclusionQuery()
    device00.queue.submit([]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.endOcclusionQuery()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    device20.queue.submit([]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.end();
    device30.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0048, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    compute_pass_encoder0001.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0063, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder2002.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder2002.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0001.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0050.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0022);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0058, "uint16");
    device20.queue.submit([command_buffer200, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer0063, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0069, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0070, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0070, 0);
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder2001.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0071, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0071, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder2000.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0072, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0073, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0001.popDebugGroup()
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0024);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0025);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0026);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0027);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0073, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0029);
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder2002.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0045, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0086, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0086, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0087, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0087, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0088, 0);
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndirect(buffer0070, 0);
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0030);
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder2002.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0031);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    device10.queue.submit([]);
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.popDebugGroup();
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
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
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0032);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.end();
    device20.queue.submit([command_buffer200, ]);
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
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
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0098, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0098, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0020.end();
    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00100,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0034);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0066, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.end();
    compute_pass_encoder0001.end();
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
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
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0035);
    render_pass_encoder0011.setIndexBuffer(buffer0054, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.endOcclusionQuery()
    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
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
                    buffer: buffer00103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00104,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0036);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2002.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00105, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00105, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00106, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00106, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndirect(buffer0094, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    device20.queue.submit([]);
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0087, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2002.popDebugGroup();
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
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0037);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder0011.popDebugGroup();
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0038);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
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
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0039);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0070, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0047, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
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
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0040);
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
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
                    buffer: buffer00115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00116,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0041);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.end();
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
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0042);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00113, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.end();
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
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0043);
    render_pass_encoder0010.drawIndirect(buffer00113, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0001.end();
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer00114, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00121, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00121, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer000, ]);
    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00123,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.end();
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0064, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00114, "uint16");
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
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
                    buffer: buffer00124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00125,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0045);
    render_pass_encoder0010.drawIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer0097, 0);
    render_pass_encoder0011.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
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
                    buffer: buffer00126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00127,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0046);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer0087, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    render_pass_encoder0011.draw(3);
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
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
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0047);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0097, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0000.end();
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0048);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0098, 0);
    render_pass_encoder0040.drawIndirect(buffer00127, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
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
                    buffer: buffer00132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00133,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0049);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    device10.queue.submit([]);
    render_pass_encoder0050.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer00127, 0);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0011.end();
    render_pass_encoder0050.end();
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00135,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0050);
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0071, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer00121, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00136, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00136, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0020.drawIndirect(buffer00124, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0042, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer0087, 0);
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2002.endOcclusionQuery()
    device30.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00105, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0072, 0);
    render_pass_encoder0040.drawIndirect(buffer0098, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([]);
    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00138,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0051);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer00121, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0087, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00139, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00139, 0);
    render_pass_encoder0050.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00140, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00140, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndirect(buffer00128, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00121, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
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
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0052);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00140, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0010.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0097, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0010.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0088, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00114, "uint16");
    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
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
                    buffer: buffer00143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00144,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0053);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer0086, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00141, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00106, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer00106, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00145, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0039, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00146, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00146, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00147, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00147, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00147, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0073, 0);
    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00149,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0054);
    render_pass_encoder0050.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer00106, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00150, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00151, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00151, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00136, 0);
    device00.queue.submit([command_buffer003, ]);
    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00153,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0055);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00155,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0056);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder0011.drawIndirect(buffer0098, 0);
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0010.end();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00140, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0029, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.end();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer00110, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00133, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00156, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00156, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0098, 0);
    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00158,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0057);
    render_pass_encoder0030.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2002.popDebugGroup();
    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00160,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0058);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.popDebugGroup()
    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00161,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00162,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0059);
    render_pass_encoder2002.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00163, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00163, 0);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00165,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0060);
    render_pass_encoder0011.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer00153, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder0011.setIndexBuffer(buffer00161, "uint16");
    render_pass_encoder0030.end();
    device10.queue.submit([]);
    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00166,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00167,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0061);
    render_pass_encoder0010.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    device20.queue.submit([]);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder2002.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.end();
    device10.queue.submit([]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0098, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer00139, 0);
    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00169,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0062);
    render_pass_encoder0010.drawIndexedIndirect(buffer00168, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer00163, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00171,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0063);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.end();
    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00172,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00173,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0064);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
}