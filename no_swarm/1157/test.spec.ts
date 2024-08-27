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
    const array0 = new Float32Array([0.0, -0.75, 0.25, -0.5, 0.25, -1.0, -0.75, -0.75, -0.25, 0.5, 0.5, 0.0, 0.25, 1.0, 0.0, -0.5, 0.75, -1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.25, 1.0, 0.25, 0.0, -0.75, -0.25, 0.0, 0.25, 0.0, 0.0, -0.75, -0.5, 0.25, 0.5, -0.25, 0.0, 0.25, 0.5, -1.0, -0.75, 0.5, -1.0, 0.25, -0.75, 0.25, 1.0, 1.0, 0.0, -0.5, 1.0, 0.5, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.25, 1.0, 0.25, 0.0, -0.25, -1.0, 0.75, -0.5, -1.0, -0.5, 0.5, 1.0, 1.0, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.25, 0.25, -0.75, -0.75, -1.0, 0.75, -0.5, 1.0, 1.0, ]);
    const array1 = new Float32Array([0.25, -1.0, -0.5, 0.5, 1.0, 0.5, 0.0, 0.0, -0.75, 1.0, 0.5, 1.0, -0.75, -0.25, 0.75, 1.0, -0.5, 1.0, -1.0, -0.5, 0.25, 0.75, 0.75, -0.5, 1.0, 1.0, 0.25, 0.5, 0.75, -0.75, 0.25, 0.0, -0.5, 0.75, -0.25, 1.0, 0.25, -1.0, -0.5, 0.0, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.25, -1.0, 0.5, -1.0, 0.0, -1.0, 0.25, -0.25, -0.5, -0.5, -0.75, -0.5, -0.25, 1.0, 0.5, 0.25, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, 1.0, -0.75, 0.75, -0.25, 0.25, -1.0, -0.25, 0.5, -0.5, 0.25, -0.75, -0.25, -0.75, 0.5, -0.5, 0.75, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, -0.75, 0.5, -0.75, 1.0, 0.25, -0.5, ]);
    
    const array2 = new Float32Array([0.0, -0.75, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.75, 0.25, 0.25, 0.0, -0.5, -0.25, -0.5, 0.25, -0.75, 1.0, 0.25, -0.75, 0.5, -0.25, 0.25, -0.25, -0.25, 1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, -0.5, 0.0, 0.0, 0.0, -0.25, -0.75, 0.0, 0.0, 0.0, 0.75, 0.5, 0.25, -0.75, 1.0, 0.25, 1.0, -0.75, 0.0, -0.25, -0.75, 0.25, 0.5, 0.25, -0.75, -1.0, 0.75, -1.0, -0.75, -0.5, -0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 1.0, 0.75, -0.75, 0.0, -0.25, -0.75, -1.0, 0.0, -0.75, 0.25, -0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, 0.75, -0.25, -1.0, 0.75, -0.75, -0.25, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture000.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    buffer001.destroy()
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    texture001.destroy();
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    device10.queue.submit([]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer004,
        0,
        400
    );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_buffer101 = command_encoder101.finish();
    const array3 = new Float32Array([-1.0, -0.25, 0.5, -0.5, 0.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.75, -0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.5, 0.75, 1.0, 0.0, 0.25, 1.0, 0.75, -1.0, 0.25, -0.5, 1.0, -0.75, -0.25, -0.25, -0.25, 0.5, 0.25, 0.5, 0.0, 0.0, -0.5, -0.5, -0.75, -0.75, 0.0, 0.0, 0.0, -0.5, 0.5, 0.75, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, -0.75, 0.25, -1.0, -0.75, 1.0, -0.25, 0.25, -1.0, -0.25, -1.0, 0.25, 1.0, 0.25, 0.25, -0.25, 0.25, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, -0.5, -0.25, 0.0, -0.25, -1.0, 0.25, 0.25, -0.5, -0.25, -1.0, -1.0, 1.0, 0.0, 1.0, 1.0, 0.5, -0.5, 0.25, -0.25, -1.0, 0.75, ]);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer003.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query101.destroy()
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const array4 = new Float32Array([0.75, 0.75, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, -0.25, 0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, 0.25, 0.5, -0.75, 1.0, 0.0, 1.0, -1.0, -0.5, 0.25, -0.75, 0.75, -0.5, 0.5, 1.0, 0.75, 0.5, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 0.5, -0.25, -0.5, 0.25, 0.0, -0.25, 0.75, 1.0, -1.0, 0.0, 0.0, 0.25, 1.0, 0.25, -0.25, -0.75, -0.25, 0.0, -0.75, 0.25, 0.25, -0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.25, -0.5, 0.5, 1.0, -1.0, -1.0, -0.25, 0.75, -1.0, 0.5, 0.75, 0.5, -0.5, -1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 0.0, -1.0, ]);
    const array5 = new Float32Array([-0.75, -0.25, -0.5, 0.5, -0.25, -0.25, -0.25, 1.0, -1.0, -0.75, -0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.25, -0.75, -0.75, -0.5, 0.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.75, 0.5, 0.75, -0.75, 0.75, 0.0, -0.5, 1.0, 1.0, 0.25, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, 0.25, 0.25, 1.0, -0.5, 0.25, 0.25, -0.75, -0.25, -0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -0.25, 0.0, 0.0, -1.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.25, 0.5, 0.75, -0.5, -0.5, 0.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.25, -1.0, -0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, -1.0, -0.75, 0.75, 0.0, 0.5, 0.0, 0.75, 0.25, 0.75, 0.5, 0.0, 0.0, 1.0, -0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
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
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    query100.destroy()
    
    device10.pushErrorScope("validation");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    query104.destroy()
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query104.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    query104.destroy()
    query103.destroy()
    query103.destroy()
    
    
    
    
    query104.destroy()
    
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
    query102.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1000.popDebugGroup()
    query104.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    query103.destroy()
    
    query102.destroy()
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query100.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    texture100.destroy();
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query100.destroy()
    
    query101.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.submit([]);
    
    query102.destroy()
    
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    device10.queue.submit([]);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
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
        occlusionQuerySet: query101
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
    device10.queue.submit([command_buffer101, ]);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    query104.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    render_pass_encoder1021.setPipeline(render_pipeline102);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.submit([command_buffer101, ]);
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
        occlusionQuerySet: query104
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array6 = new Float32Array([0.25, -0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.25, -1.0, -0.25, 0.0, 1.0, 0.25, 0.5, -0.25, -0.25, -0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 0.5, -0.5, 0.25, -0.5, 0.25, 0.75, 1.0, 0.75, 0.0, 0.5, -0.75, 0.0, 0.25, -0.25, 0.75, -1.0, 0.5, -1.0, -0.5, -0.25, -0.5, -0.75, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, 0.25, -0.75, -0.25, -0.5, 0.5, 0.0, -0.75, 0.75, -1.0, 0.0, -1.0, -0.75, 0.75, -0.75, 0.25, 0.25, -0.25, 0.5, 1.0, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 0.5, 0.0, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.25, 1.0, -0.25, 0.75, ]);
    device10.queue.submit([]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query101.destroy()
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.popDebugGroup();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1030.setPipeline(render_pipeline104);
    render_pass_encoder1040.setStencilReference(1);
    
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query102.destroy()
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group100);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    query104.destroy()
    render_pass_encoder1021.pushDebugGroup("group_marker");
    query100.destroy()
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_pass_encoder1040.insertDebugMarker("marker");
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query100
    });
    command_encoder100.insertDebugMarker("mymarker");
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setPipeline(render_pipeline104);
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1041.pushDebugGroup("group_marker");
    device10.queue.submit([]);
    device20.pushErrorScope("internal");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    buffer100.destroy()
    render_pass_encoder1030.setStencilReference(1);
    
    command_encoder200.insertDebugMarker("mymarker");
    buffer200.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    query100.destroy()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    buffer102.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1041.setPipeline(render_pipeline107);
    const array7 = new Float32Array([0.5, 0.75, -0.25, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, -0.75, 0.0, -0.25, -0.75, -1.0, 1.0, -0.25, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, 0.25, -0.5, 0.0, 0.75, 0.75, 0.75, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.25, -0.25, -0.75, -0.75, 1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, 1.0, -0.75, -0.5, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, -0.5, -0.5, -1.0, 1.0, -0.25, -0.75, -0.5, 0.5, 0.0, 0.75, 0.75, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, -0.5, 0.25, -0.25, -0.25, 0.75, -0.5, -1.0, 0.5, -1.0, 0.25, -0.5, 0.25, 0.75, 0.0, -0.5, -0.5, -0.5, 0.5, ]);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group103);
    buffer102.destroy()
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer108,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query104
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1031.beginOcclusionQuery(0)
    
    render_pass_encoder1031.endOcclusionQuery()
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder104.clearBuffer(buffer107);
    render_pass_encoder1021.setStencilReference(1);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setPipeline(render_pipeline101);
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer1011,
        0
    )
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer000.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    
    texture200.destroy();
    device10.queue.writeBuffer(buffer1013, 0, array5, 0, array5.length);
    
    
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer106.destroy()
    render_pass_encoder1040.beginOcclusionQuery(1)
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1040.endOcclusionQuery()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query106.destroy()
    query103.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    query105.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.pushErrorScope("out-of-memory");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1040.popDebugGroup();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1040.beginOcclusionQuery(1)
    
    
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
        occlusionQuerySet: query104
    });
    
    
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.setVertexBuffer(0, buffer100);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query105
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    texture101.destroy();
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1061.setPipeline(render_pipeline100);
    const array8 = new Float32Array([-0.25, -0.75, -1.0, 0.0, 0.5, 0.5, 0.0, 1.0, 1.0, 0.5, 0.0, 0.0, -0.75, -0.25, -0.75, -1.0, 0.25, -1.0, -0.75, -0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 0.75, 1.0, 0.75, -1.0, 0.5, 0.0, -0.5, 0.5, 0.75, -0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.75, 0.0, 1.0, 0.0, 0.25, 0.0, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, 1.0, -0.25, -1.0, -0.75, 0.5, 1.0, -1.0, -0.5, 0.75, -1.0, 0.0, -0.5, 0.0, 0.0, -0.75, -0.25, -0.25, 0.5, 0.25, 1.0, 1.0, -1.0, -0.75, 0.0, -1.0, -1.0, 0.0, -1.0, 1.0, 0.0, 0.5, 1.0, 0.75, 0.0, 1.0, 1.0, 1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 0.5, ]);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    query102.destroy()
    device10.queue.writeBuffer(buffer1015, 0, array2, 0, array2.length);
    texture102.destroy();
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group107);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1060.setPipeline(render_pipeline108);
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    
    buffer201.destroy()
    render_pass_encoder1051.setPipeline(render_pipeline102);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer102.destroy()
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    command_encoder104.pushDebugGroup("mygroupmarker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder101.setVertexBuffer(0, buffer1014);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    render_pass_encoder1030.setVertexBuffer(0, buffer105);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group108);
    render_pass_encoder1060.setVertexBuffer(0, buffer105);
    
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

    render_pass_encoder1050.setBindGroup(0, bind_group109);
    render_pass_encoder1031.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    device10.queue.writeBuffer(buffer1020, 0, array6, 0, array6.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query106
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer1022,
        0
    )
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.draw(3);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1050.setVertexBuffer(0, buffer100);
    render_pass_encoder1001.setPipeline(render_pipeline108);
    render_pass_encoder1040.setVertexBuffer(0, buffer101);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
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
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group1010);
    command_encoder202.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1011);
    render_pass_encoder1060.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer1010, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1031.setVertexBuffer(0, buffer1016);
    render_pass_encoder1001.setVertexBuffer(0, buffer109);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1051.setVertexBuffer(0, buffer100);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1041.endOcclusionQuery()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1050.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1001.end();
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    command_encoder200.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1030.end();
    render_pass_encoder1021.popDebugGroup();
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder1050.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.setVertexBuffer(0, buffer1014);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1050.end();
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
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group1013);
    render_pass_encoder1060.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group1014);
    render_pass_encoder1041.setVertexBuffer(0, buffer105);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1061.setVertexBuffer(0, buffer1021);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1061.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1060.drawIndirect(buffer1027, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    command_encoder104.popDebugGroup()
    render_pass_encoder1061.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1001.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1061.setIndexBuffer(buffer1033, "uint16");
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    device40.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1020.end();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1050.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndirect(buffer1019, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1031.drawIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1000.draw(3);
    device40.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.end();
    render_pass_encoder1061.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1034, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device10.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1012, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1020.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1011, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    device20.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.end();
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer1021, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1027, 0);
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1051.end();
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1041.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1061.drawIndirect(buffer103, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.popDebugGroup();
}