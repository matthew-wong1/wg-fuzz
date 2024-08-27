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
    
    
    const array0 = new Float32Array([-1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.0, 0.25, -0.25, 0.5, -0.5, -0.75, 0.0, 0.5, -1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -0.75, -0.75, -0.5, 0.25, 0.75, 0.0, -1.0, 0.5, 1.0, -0.25, 0.0, 0.0, -0.75, 0.5, 0.25, 0.25, -0.75, 1.0, -0.5, -0.75, 0.0, 0.25, -0.25, -0.25, -0.5, 0.5, -1.0, -0.25, 0.25, 0.25, 0.75, 0.5, 1.0, -1.0, -0.5, 0.5, 0.0, 0.75, -0.25, 0.25, -0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, 0.25, -0.5, -0.25, -1.0, 1.0, -1.0, 0.25, 0.0, 0.5, -0.25, -1.0, -0.5, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -1.0, -1.0, 0.0, 0.75, -1.0, 0.75, 0.5, 0.5, 0.75, -0.75, 0.0, 0.5, 0.75, -0.5, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([1.0, 0.25, -0.5, 0.5, 1.0, 0.25, 0.75, 0.5, -0.75, 0.25, 0.0, -0.5, 0.75, -0.75, -1.0, 1.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.0, -0.25, -0.75, -0.25, 1.0, -0.75, -0.5, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, -1.0, 0.5, -1.0, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.25, -0.5, -1.0, 0.25, -0.25, 0.25, -1.0, 0.75, 1.0, -0.25, -0.5, 0.0, 0.5, 1.0, -1.0, -0.25, -0.25, 0.0, 0.5, 0.5, 1.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.75, 1.0, -0.75, 0.25, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, -0.5, -0.25, -0.25, -0.75, 0.0, 1.0, 0.25, -1.0, 1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.75, 0.75, 0.75, -1.0, 0.75, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array2 = new Float32Array([0.75, -1.0, 0.0, -0.25, 0.25, 0.0, 1.0, -0.75, 1.0, 0.75, 1.0, 0.25, 1.0, 0.0, 0.5, -0.75, -0.5, 0.75, -0.25, 0.5, 0.0, -0.75, -0.25, -0.25, 0.5, -1.0, 0.5, 1.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, -0.75, 0.0, 0.75, 1.0, 0.25, 0.75, -0.25, -0.75, 0.5, -1.0, 0.0, 0.75, -0.25, -0.5, 0.5, 0.75, 1.0, 0.25, 0.5, -0.75, -0.75, 0.75, -0.25, -0.5, 0.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.75, 0.25, 0.5, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, -1.0, -0.75, -0.25, 0.5, 0.0, 0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, -0.5, 1.0, ]);
    
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
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
    const array3 = new Float32Array([0.75, -0.5, 0.0, -0.5, 0.5, -0.5, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 0.25, 0.75, -0.75, -1.0, 0.0, -1.0, 0.5, 0.5, 1.0, 0.25, 0.0, 0.75, 1.0, 0.75, 0.5, -1.0, -1.0, -0.25, -0.5, -0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -0.75, -0.5, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, 0.0, -0.5, 1.0, 0.75, 0.75, -0.5, 0.0, 1.0, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, 0.75, 1.0, 1.0, -0.75, 0.75, 0.25, -0.75, -0.25, -0.25, 1.0, 0.25, 0.75, -0.5, -0.5, 0.75, -0.75, 1.0, 0.5, 0.25, 0.0, 0.5, 0.75, 0.75, 1.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.25, -0.25, 0.75, 0.25, -1.0, -0.25, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    
    command_encoder000.clearBuffer(buffer001);
    
    device10.pushErrorScope("validation");
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder000.clearBuffer(buffer000);
    device10.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    buffer000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer001.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array4 = new Float32Array([0.75, 0.75, 0.25, -0.75, -0.5, -0.5, -1.0, 0.25, 0.25, -0.25, -0.5, -1.0, 0.25, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, 0.25, -0.5, -0.25, 1.0, -0.25, 0.25, -0.25, 1.0, -1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 0.0, -0.25, 0.25, 0.5, -0.75, 0.5, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, -1.0, 0.0, -0.25, -1.0, -0.5, 1.0, -0.75, 0.5, 0.0, 1.0, 0.25, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, 0.5, 0.25, 0.5, 0.75, -0.5, -1.0, -0.25, 0.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.75, 0.25, -1.0, -0.75, -0.5, -0.75, -0.25, 0.0, -1.0, 0.5, 0.75, 0.0, 0.5, 0.5, -0.25, 1.0, -1.0, 0.5, -0.25, 0.5, -0.5, -0.25, -0.5, 0.25, ]);
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    texture001.destroy();
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture100.destroy();
    
    texture000.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture002.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer002.destroy()
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.5, -0.25, 1.0, 1.0, 0.0, -1.0, 1.0, -0.25, 0.5, 0.5, -0.75, 1.0, -0.75, 0.75, -1.0, 0.0, 0.5, 0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 1.0, 0.0, -0.75, -0.5, -0.5, 0.25, 0.5, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, 0.0, -0.25, -0.75, -0.25, 0.75, 1.0, -0.5, 0.5, 0.0, 0.75, -0.25, 0.5, 0.25, -1.0, 1.0, -0.25, -1.0, 0.0, 0.25, 0.75, -0.25, 0.75, -0.5, 0.25, 0.25, 1.0, 0.75, -0.25, -0.25, -0.5, 0.75, 1.0, -0.5, -0.5, -0.25, 0.75, 0.25, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, -0.75, 1.0, -0.5, -1.0, 0.25, 0.5, 0.75, -1.0, 0.5, -0.5, 0.5, -0.5, -0.5, -0.5, 0.5, -0.5, 1.0, 0.0, -1.0, 0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.pushErrorScope("internal");
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    
    
    const array6 = new Float32Array([0.5, 0.25, 0.75, 1.0, 0.0, -0.5, 0.25, -1.0, 0.75, -0.75, 0.5, 0.0, 0.0, -0.5, -0.75, -0.5, -0.5, -0.5, 0.75, 0.0, -0.75, -0.75, 0.75, 0.0, 0.75, 0.75, 0.75, -0.75, 0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -0.75, 1.0, 1.0, 0.75, 0.5, 0.5, 0.75, -1.0, -1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.0, -0.5, -0.25, 1.0, 0.0, -0.25, -0.5, -1.0, 0.0, 0.75, 1.0, 0.25, 0.75, -1.0, -0.75, -1.0, 0.5, -0.75, 0.25, -0.25, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, -0.75, 0.25, 0.0, -0.25, 1.0, 0.5, 0.25, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.0, 0.75, -1.0, 0.0, 0.5, -0.5, -0.5, ]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer003.destroy()
    
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
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
    command_encoder000.clearBuffer(buffer005);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.insertDebugMarker("marker");
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
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder000.clearBuffer(buffer004);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const array7 = new Float32Array([-0.5, 0.25, 0.25, -0.75, 0.0, -0.5, -0.5, 0.75, -0.25, 0.5, 0.5, 0.0, 0.0, 1.0, 0.5, -1.0, -0.5, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, -0.75, -1.0, -1.0, 0.75, -0.75, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, 0.25, -0.75, -1.0, 0.5, -1.0, 0.75, -0.25, -1.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.5, -0.25, 0.75, 0.25, -0.25, -0.25, -1.0, 0.0, 0.75, 0.25, 1.0, 0.0, -0.25, -0.25, -1.0, 0.0, -0.5, 0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.5, 0.0, -0.5, 0.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.75, -0.5, 0.25, -1.0, 0.25, 0.75, -0.25, 1.0, -0.25, -0.75, 0.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.0, 0.25, -1.0, -0.75, ]);
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group001);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    const array8 = new Float32Array([-1.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.75, 0.5, 0.25, 0.75, -0.25, 1.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.75, 1.0, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, -0.75, -0.75, -1.0, 0.75, -0.5, 0.25, 0.25, 0.0, -0.75, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.0, -0.75, 0.0, -1.0, -0.75, 0.75, -0.75, -0.25, -0.75, -0.5, 1.0, 0.5, -0.5, 1.0, -0.75, 0.25, -1.0, 0.25, -1.0, -1.0, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, 0.5, -0.75, 1.0, 0.75, 0.0, -1.0, 0.75, -1.0, 0.0, -0.75, -0.25, 0.75, 0.25, 1.0, 0.5, 0.5, -0.25, 1.0, -0.75, 0.5, -0.25, -0.5, ]);
    texture003.destroy();
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
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
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const array9 = new Float32Array([0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.5, -1.0, 0.0, -0.5, -0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.0, -0.25, -0.75, 0.25, 0.25, 0.75, -1.0, -1.0, -0.5, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -0.5, -0.25, -0.5, -0.25, -0.75, 1.0, -1.0, -0.5, -0.5, 0.0, 0.25, 0.0, -1.0, 0.75, 0.25, -0.25, 0.0, -0.5, 1.0, 0.0, 0.0, -0.75, -0.25, 0.25, 0.0, 0.25, -0.75, 0.75, -0.5, -0.5, -0.5, -1.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 0.0, -1.0, -0.25, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, -1.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, 0.5, ]);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.setVertexBuffer(0, buffer0011);
    command_encoder001.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0030.setPipeline(render_pipeline007);
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer004.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0021.setStencilReference(1);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
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
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    command_encoder004.copyTextureToBuffer(
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
    render_bundle_encoder000.draw(3);
    render_pass_encoder0021.insertDebugMarker("marker");
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    buffer0011.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder0040.setPipeline(render_pipeline008);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout004]
    });
    device30.destroy();
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    render_pass_encoder0000.setPipeline(render_pipeline002);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    query001.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array10 = new Float32Array([0.75, 0.5, 0.0, -0.75, -0.5, -0.75, -0.75, -1.0, 1.0, 0.0, 1.0, 0.0, -1.0, -1.0, 0.5, -0.5, 1.0, -0.5, -0.25, 0.5, -0.5, 1.0, 0.5, -0.75, 0.0, -1.0, -0.5, -1.0, 0.25, 0.5, -0.5, 1.0, 1.0, 0.5, 0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.5, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.0, 1.0, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, 0.0, -0.5, -1.0, -0.25, -0.25, -0.75, -1.0, -0.5, 0.5, 0.25, 0.5, -1.0, 0.25, 0.25, -0.5, 0.75, 0.0, 0.25, 0.75, 0.5, 1.0, 0.5, -1.0, 1.0, -0.25, -0.5, -0.75, -0.75, 0.0, -0.25, -0.25, 0.5, 0.0, 0.0, 0.75, ]);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array8, 0, array8.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer009.destroy()
    const array11 = new Float32Array([-0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.5, 0.75, 0.75, 0.0, -1.0, 0.75, 0.5, 0.75, -1.0, -1.0, -0.75, 0.0, 0.25, 0.75, -0.75, -0.5, 0.5, 0.25, -0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -0.75, 1.0, 1.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.25, 0.75, -0.25, -1.0, -0.25, 0.0, 1.0, 0.5, -0.25, 1.0, 0.75, -1.0, 0.0, -1.0, -0.25, -1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -1.0, 1.0, -0.25, 0.0, -0.75, 0.5, -0.25, -0.75, 1.0, 1.0, -0.5, 0.75, 0.25, 1.0, -0.5, -0.75, 0.0, 1.0, 0.75, 0.5, 0.75, -0.5, 0.5, 0.5, 0.5, -1.0, -0.75, 0.0, 1.0, -0.5, -0.5, 0.5, ]);
    render_bundle_encoder000.finish();
    
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
    render_pass_encoder0031.setPipeline(render_pipeline004);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_pass_encoder0020.popDebugGroup();
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0040.insertDebugMarker("marker");
    buffer200.destroy()
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0021.setVertexBuffer(0, buffer0014);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0032.setPipeline(render_pipeline008);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
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
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0032.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline0010);
    render_pass_encoder0020.setVertexBuffer(0, buffer0014);
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer005.destroy()
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.destroy();
    buffer006.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.draw(3);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    buffer0010.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([1.0, -0.25, 0.0, -0.25, -0.5, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, -1.0, -0.5, -0.75, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, -0.75, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, 1.0, 0.0, 0.5, -1.0, 0.5, -1.0, 1.0, -0.5, -0.25, -0.5, -0.75, 0.25, 0.5, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 1.0, -0.5, 1.0, 0.5, 0.0, 1.0, 1.0, 1.0, 1.0, -0.75, 1.0, 0.25, -0.75, 0.25, -1.0, 0.25, 0.5, -0.75, -0.5, 0.5, 0.25, 0.75, -1.0, 0.0, -1.0, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, 1.0, -1.0, -0.5, 1.0, 1.0, -1.0, 0.25, 0.0, 0.0, -0.25, 0.25, -0.75, -0.5, 0.5, 0.75, 1.0, 0.5, -0.25, ]);
    
    const array13 = new Float32Array([-0.5, 0.5, 0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 1.0, 0.75, -0.75, -1.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.0, -0.25, 0.0, 0.0, -1.0, -1.0, 0.75, -0.25, 0.5, -0.75, -1.0, 0.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.25, 0.5, -1.0, -0.25, -0.5, -0.25, -1.0, -1.0, -1.0, -0.75, -1.0, 0.5, -0.5, -0.5, -1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, -1.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.75, 0.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.75, 0.75, 0.0, 0.75, 0.5, 1.0, -0.5, -1.0, -0.5, 0.25, 0.75, 0.75, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 0.5, -0.25, -0.5, -1.0, 0.75, 0.25, 0.25, 0.75, 0.0, -1.0, ]);
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.queue.writeBuffer(buffer0014, 0, array5, 0, array5.length);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0032.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder001.popDebugGroup()
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0032.setBindGroup(0, bind_group005);
    command_encoder005.copyBufferToBuffer(
        buffer0013,
        0,
        buffer001,
        0,
        400
    );
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0031.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    render_pass_encoder0050.setPipeline(render_pipeline005);
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group006);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0032.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer0016,
        0
    )
    render_pass_encoder0060.setPipeline(render_pipeline006);
    buffer0013.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout008]
    });
    render_pass_encoder0032.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0032.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("internal");
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    buffer0016.destroy()
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device20.destroy();
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0017.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder200.popDebugGroup()
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0032.setVertexBuffer(0, buffer0016);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0031.setVertexBuffer(0, buffer0016);
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.setVertexBuffer(0, buffer005);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.setVertexBuffer(0, buffer0018);
    render_pass_encoder0032.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0060.setVertexBuffer(0, buffer003);
    render_pass_encoder0032.end();
    render_pass_encoder0050.end();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0021.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group009);
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0000.end();
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0011);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0060.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexed(3);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0032.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0032.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.setVertexBuffer(0, buffer008);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.draw(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0032.drawIndirect(buffer0016, 0);
    compute_pass_encoder0010.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0030.end();
    render_pass_encoder0032.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0000.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0020.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndirect(buffer008, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer100, ]);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0021.end();
    render_pass_encoder0050.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
}