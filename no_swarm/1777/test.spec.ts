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
    const array0 = new Float32Array([-1.0, 0.75, 0.75, -1.0, -1.0, 0.0, -0.75, 0.75, -0.5, -0.25, 0.5, 0.25, 1.0, 0.5, 0.75, 0.0, 0.25, 0.5, -1.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.0, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, -0.75, -0.75, 0.75, 1.0, 0.5, 0.75, 0.0, 0.5, -1.0, -1.0, -0.75, 0.25, -0.25, -1.0, -0.5, 1.0, 0.5, 0.75, 0.5, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, 0.25, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, -0.5, 0.75, -1.0, 0.25, 1.0, 1.0, 0.75, -0.25, 0.0, -0.25, 0.25, -1.0, -0.75, 0.5, -0.75, -0.5, -0.75, 0.0, 0.75, 0.25, 0.25, -0.75, 1.0, -0.25, 1.0, 0.5, -0.25, -0.75, 0.5, 0.75, -0.25, 0.0, 0.5, 0.75, 0.0, 0.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([0.5, -1.0, -1.0, -1.0, 0.5, -1.0, 1.0, -0.25, -1.0, -0.25, -0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, -0.75, 0.25, 0.5, -0.5, 0.75, -1.0, 0.5, 1.0, 0.75, -0.75, 1.0, 1.0, -0.25, -0.5, 0.5, -0.25, 0.5, 0.5, -0.5, -0.5, 0.5, -0.25, 1.0, 1.0, 0.25, 1.0, -0.75, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.25, 1.0, -0.25, 0.25, 0.5, 0.0, 1.0, -0.75, 0.25, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, -0.75, -0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, -0.25, -0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 1.0, 1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -1.0, -0.5, -1.0, 0.75, -0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([-1.0, -0.25, -0.25, -0.25, 0.75, 0.5, 0.5, 0.75, -0.25, -0.25, -0.5, -0.5, -0.5, 0.0, -0.25, -0.25, -0.75, 0.0, 0.25, -0.5, 0.5, 0.0, -0.5, 0.0, 0.5, 0.5, -0.5, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, -0.25, 1.0, 0.75, -1.0, 0.5, -1.0, -0.75, 0.75, 0.25, -1.0, -0.5, -0.5, 0.25, 0.5, 0.5, -1.0, 0.75, -0.25, 0.0, 0.75, 0.0, -0.5, 0.5, -0.25, 0.25, -0.75, -1.0, -1.0, -0.5, -0.25, -0.5, 1.0, -0.75, 1.0, -0.75, 1.0, 0.5, 0.25, -0.5, 0.75, 0.25, 0.5, 0.25, 0.25, -0.25, -0.5, 0.5, 0.0, 1.0, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, 0.75, 1.0, 0.5, 0.0, 0.25, -0.75, 0.75, 0.5, 0.0, -0.25, -0.75, 0.0, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.pushErrorScope("out-of-memory");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
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
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array3 = new Float32Array([-0.25, -0.25, 0.0, 0.25, -0.25, -1.0, -0.25, 0.25, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, 0.5, 1.0, -0.75, 1.0, 0.0, -0.25, -1.0, -1.0, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, 1.0, 0.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, -0.75, -0.5, 0.5, 0.5, 0.75, -0.25, -0.5, 0.75, -0.75, -0.5, 0.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.25, 1.0, -0.75, -0.75, 1.0, 1.0, 0.75, -0.75, -0.75, -1.0, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, 0.25, 0.25, 0.0, -0.5, 0.75, 1.0, -1.0, 0.25, 0.5, -0.25, -0.25, 0.5, 0.75, 0.75, -0.5, 0.75, -0.75, -0.5, -0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, ]);
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    
    
    query001.destroy()
    
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
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
    
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder003.setPipeline(render_pipeline000);
    render_bundle_encoder001.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    
    render_bundle_encoder003.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query001.destroy()
    query004.destroy()
    render_bundle_encoder001.popDebugGroup();
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder002.clearBuffer(buffer002);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query002.destroy()
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    query004.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    query005.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    query005.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    query101.destroy()
    command_encoder002.popDebugGroup()
    query002.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.popDebugGroup();
    command_encoder100.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    
    render_bundle_encoder001.setIndexBuffer(buffer001, "uint16");
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder001.setIndexBuffer(buffer003, "uint16");
    render_bundle_encoder001.setIndexBuffer(buffer000, "uint16");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    buffer003.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
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
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.submit([command_buffer000, ]);
    command_encoder100.insertDebugMarker("mymarker");
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder003.popDebugGroup();
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder003.setBindGroup(0, bind_group001);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.drawIndirect(buffer000, 0);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-1.0, -0.75, -0.75, -1.0, 0.0, 0.0, 0.25, -0.75, -0.75, 0.25, -0.25, 1.0, 0.0, -0.25, 0.75, -0.5, 0.5, 0.5, -0.25, -0.25, -0.75, 0.75, 1.0, 0.25, -0.25, 0.25, 1.0, 1.0, -0.5, 0.25, 0.25, -0.75, 1.0, 1.0, 1.0, 0.0, -0.25, -0.5, 0.25, 1.0, 0.5, -0.75, 1.0, 0.75, 0.0, 0.75, -0.5, -0.75, 0.0, 0.75, 0.25, 0.75, -0.25, -0.5, -0.25, 1.0, -1.0, -0.5, 1.0, -0.25, 1.0, 1.0, 0.5, 0.75, -0.5, 0.5, 1.0, 0.25, 0.75, 0.75, -0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, 1.0, 0.0, 0.0, -0.25, -0.5, -0.5, 0.0, -0.25, -0.25, -0.25, 0.5, 0.0, 0.25, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.setPipeline(render_pipeline002);
    query100.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder003.popDebugGroup()
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder003.clearBuffer(buffer006);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    query001.destroy()
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const array5 = new Float32Array([0.75, -0.5, 0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.5, -0.25, 0.5, 0.25, 0.5, 0.75, 0.0, -0.5, 0.75, 0.5, 0.75, 0.75, 0.25, -0.75, -0.5, -0.75, 0.75, 0.75, 0.75, -0.25, 0.75, -0.25, -0.75, 0.0, 0.75, 0.75, -0.75, 0.0, 1.0, 0.75, 0.25, 1.0, -0.75, -1.0, -1.0, 1.0, -0.5, -0.75, 1.0, 0.0, 1.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -0.25, 0.75, 0.75, 1.0, 0.25, -0.5, -0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, -0.5, 0.5, -0.75, 1.0, -1.0, -0.75, -0.25, 0.25, -0.25, -0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.75, -1.0, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    query005.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query001.destroy()
    query005.destroy()
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query004.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    query005.destroy()
    query100.destroy()
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    query005.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer007,
        0,
        400
    );
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.setPipeline(compute_pipeline009);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    query004.destroy()
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer004.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder0020.popDebugGroup()
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query003.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder005.clearBuffer(buffer000);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    query005.destroy()
    texture101.destroy();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder003.copyBufferToBuffer(
        buffer007,
        0,
        buffer007,
        0,
        400
    );
    
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    command_encoder005.clearBuffer(buffer007);
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder102.popDebugGroup()
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    command_encoder005.pushDebugGroup("mygroupmarker")
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer007,
        0,
        400
    );
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    compute_pass_encoder1020.setPipeline(compute_pipeline106);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query004.destroy()
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query000.destroy()
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder003.setVertexBuffer(0, buffer004);
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    render_pass_encoder1000.executeBundles([])
    device10.pushErrorScope("out-of-memory");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    command_encoder003.resolveQuerySet(
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
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1000.setStencilReference(1);
    const command_buffer102 = command_encoder102.finish();
    query100.destroy()
    
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_bundle_encoder000.popDebugGroup();
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    query003.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline009.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    query004.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    command_encoder003.clearBuffer(buffer007);
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder007.pushDebugGroup("mygroupmarker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_buffer003 = command_encoder003.finish();
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder003.popDebugGroup();
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder007.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder004.popDebugGroup()
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder008.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
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
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder007.clearBuffer(buffer003);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder003.pushDebugGroup("group_marker");
    command_encoder007.insertDebugMarker("mymarker");
    buffer008.destroy()
    render_bundle_encoder003.setIndexBuffer(buffer000, "uint16");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder1020.popDebugGroup()
    command_encoder007.popDebugGroup()
    command_encoder005.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer201 = command_encoder201.finish();
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    compute_pass_encoder0040.setBindGroup(0, bind_group003);
    const command_buffer006 = command_encoder006.finish();
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

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const command_buffer005 = command_encoder005.finish();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const command_buffer100 = command_encoder100.finish();
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder0020.end();
    const command_buffer001 = command_encoder001.finish();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder1020.dispatchWorkgroups(100);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group005);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer006, command_buffer008, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer007 = command_encoder007.finish();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group006);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device10.queue.submit([]);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer007, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer102, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer102, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer006, ]);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder1020.end();
    device00.queue.submit([command_buffer001, ]);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    compute_pass_encoder0040.end();
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
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
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group008);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer006, ]);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    device00.queue.submit([command_buffer002, ]);
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

    compute_pass_encoder0040.setBindGroup(0, bind_group009);
    compute_pass_encoder1020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0026, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer006, ]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer201, ]);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0012);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline009.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    compute_pass_encoder1020.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer107, 0);
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.end();
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
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer006, command_buffer007, command_buffer008, ]);
    device10.queue.submit([]);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer108, 0);
    device10.queue.submit([]);
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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
}