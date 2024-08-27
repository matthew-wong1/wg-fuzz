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
    const array0 = new Float32Array([-0.5, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, 0.75, -1.0, 0.5, -0.5, 0.25, 0.25, 1.0, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, 0.5, -0.5, -0.75, -0.75, 0.25, 0.5, -0.25, 0.5, 0.25, 0.25, -0.5, 0.75, -0.75, 0.5, -1.0, -1.0, 0.25, -0.5, 1.0, 0.25, 0.5, -0.5, 0.0, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -1.0, 0.25, 0.75, -0.75, 0.75, 0.0, 1.0, 0.5, 0.75, 0.75, 0.75, -0.75, -1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -0.75, 0.5, 0.0, 0.5, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, 1.0, -0.75, -0.25, -0.25, -0.5, 0.25, 0.25, 0.5, -0.5, -0.75, 0.25, -0.25, -0.25, 0.25, -1.0, -0.25, -0.25, ]);
    const array1 = new Float32Array([-0.75, 0.0, -0.25, 1.0, 0.5, 0.0, -0.5, 0.75, 0.25, 0.0, 0.0, -0.75, -0.75, 0.25, -0.5, 0.75, 0.5, -0.25, 0.5, 0.5, -0.25, 0.5, -1.0, -1.0, 0.75, -0.25, 0.5, -1.0, 0.25, 0.75, 1.0, 0.0, 1.0, -0.75, -0.25, 0.0, 0.75, -0.5, 0.75, 1.0, -0.25, 0.25, -0.25, -0.25, 0.75, 0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.0, -0.75, -0.75, -0.5, 1.0, 0.25, -0.5, 0.0, 1.0, -0.75, -0.75, -0.5, 0.0, 0.25, -1.0, -0.75, -0.75, -0.25, -1.0, -0.5, 0.25, -0.75, 0.5, -1.0, -0.25, -0.75, 0.0, 0.25, -0.75, 1.0, -1.0, 0.25, 0.25, 0.5, 1.0, 1.0, 0.75, 0.5, -0.75, -0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.75, -0.5, -0.25, -0.25, 0.75, 0.0, 0.0, -0.75, 0.75, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.0, -1.0, 0.75, 0.0, -0.5, -0.5, -1.0, -0.75, 0.0, 0.75, -0.5, 0.75, 0.25, 0.5, 1.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 0.0, -1.0, 0.5, 0.5, 1.0, 0.25, 0.5, 1.0, 1.0, 0.75, 0.75, -0.25, -1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -0.5, 1.0, 1.0, 0.0, -0.75, 0.5, -0.75, 0.5, 0.75, 0.25, -0.25, 0.0, -0.5, -1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, 0.5, -0.75, 0.0, -0.5, 0.25, 0.75, -0.25, -0.25, 0.5, 0.75, 0.5, 1.0, 1.0, 0.25, -0.25, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    device00.pushErrorScope("out-of-memory");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array3 = new Float32Array([0.5, -1.0, -0.25, 1.0, -1.0, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, -0.5, -0.5, 0.5, 0.25, 0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.0, -1.0, 0.25, -1.0, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, -0.75, 0.25, -0.75, -0.25, -0.25, -0.25, 0.5, 0.25, -1.0, 0.75, -0.25, 0.5, 1.0, 0.75, -1.0, -0.25, -1.0, -0.75, 0.75, 0.0, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, 0.25, 0.5, 0.25, 0.5, 0.5, -1.0, 0.5, -0.5, 0.25, 0.25, 0.75, -1.0, 0.5, 1.0, -1.0, -0.25, 0.25, -0.5, -0.5, -1.0, 0.75, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.25, -0.25, 0.5, 0.0, 0.0, -1.0, 0.75, -1.0, 0.75, -0.5, -0.75, 0.25, -0.75, 1.0, ]);
    query000.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    texture001.destroy();
    
    texture000.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.queue.submit([]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    query100.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    compute_pass_encoder1000.popDebugGroup()
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.clearBuffer(buffer101);
    command_encoder101.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
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
    query004.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
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
        occlusionQuerySet: query001
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.pushErrorScope("internal");
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.5, 1.0, 0.5, 0.0, 0.5, 1.0, -0.25, 0.25, 0.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 1.0, 1.0, -1.0, 0.25, -0.25, 0.75, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.75, 0.5, 1.0, 0.5, 0.25, 1.0, -0.5, 0.5, 1.0, 0.25, 1.0, -0.5, -0.5, 0.5, -1.0, 0.25, 0.25, -1.0, 0.0, 0.0, 0.0, 0.25, -0.75, -1.0, -0.25, -1.0, -0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -0.25, 0.5, -0.75, -0.5, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, -0.25, -0.5, -1.0, 0.75, -0.75, 0.25, -0.75, -0.5, 0.25, -0.25, 0.75, 0.25, -0.25, -0.25, 0.5, 0.5, 1.0, ]);
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder001.popDebugGroup();
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query001.destroy()
    
    render_pass_encoder0000.setPipeline(render_pipeline001);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query100.destroy()
    
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query005.destroy()
    query006.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    texture001.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder000.insertDebugMarker("mymarker");
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder0010.setPipeline(render_pipeline001);
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder001.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0000.popDebugGroup();
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group001);
    render_pass_encoder0000.endOcclusionQuery()
    render_bundle_encoder100.popDebugGroup();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device10.queue.submit([command_buffer102, ]);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setIndexBuffer(buffer001, "uint16");
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.draw(3);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture001.destroy();
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.endOcclusionQuery()
    buffer004.destroy()
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

    render_bundle_encoder000.setBindGroup(0, bind_group003);
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
    render_pass_encoder0010.endOcclusionQuery()
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer008
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query005
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query005.destroy()
    buffer008.destroy()
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setPipeline(render_pipeline004);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
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
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline003);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.setVertexBuffer(0, buffer000);
    
    
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
    
    
    render_pass_encoder0000.popDebugGroup();
    
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    buffer0015.destroy()
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer001.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setVertexBuffer(0, buffer002);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer0014.destroy()
    buffer003.destroy()
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
    buffer101.destroy()
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    
    render_bundle_encoder002.draw(3);
    query002.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
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
        occlusionQuerySet: query101
    });
    compute_pass_encoder1010.popDebugGroup()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    texture100.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer0011.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query102.destroy()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.executeBundles([])
    
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query102.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    buffer007.destroy()
    texture102.destroy();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group006);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1011.executeBundles([])
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array5 = new Float32Array([0.75, 0.0, 0.25, 1.0, 0.5, -0.25, -0.25, 0.5, -0.75, 0.25, -0.5, -0.75, 0.25, 0.5, 0.0, -0.25, -0.75, 0.5, 0.0, -0.75, -0.25, 1.0, -0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.25, 0.5, -1.0, 0.0, 0.0, -0.5, -0.75, 0.25, -1.0, 0.75, -0.75, -0.75, -0.5, -0.75, 1.0, -1.0, -0.75, 0.0, 0.75, 1.0, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, -1.0, 0.0, -0.5, -0.5, 0.75, 1.0, 0.5, 0.25, -0.25, 1.0, -1.0, -0.25, 0.75, 0.25, -0.75, 0.25, 0.0, -1.0, -0.75, 0.0, -0.5, -0.75, -0.75, -0.75, 0.0, -0.5, -0.5, 0.5, 0.75, 1.0, -1.0, 0.25, -0.25, 1.0, 0.75, 0.75, -0.25, 0.0, -0.25, -0.5, -0.25, -0.75, -0.25, 0.0, 0.75, ]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder1011.setStencilReference(1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder002.resolveQuerySet(
        query008,
        0,
        32,
        buffer0010,
        0
    )
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    {
        await buffer0013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0013.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    buffer006.destroy()
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
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
        occlusionQuerySet: query103
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.draw(3);
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    render_pass_encoder1000.beginOcclusionQuery(0)
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder1000.popDebugGroup();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout005]
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    buffer0013.destroy()
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    command_encoder003.clearBuffer(buffer002);
    render_pass_encoder0030.setPipeline(render_pipeline003);
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    buffer0016.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query009
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout005]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1011.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1011.executeBundles([])
    
    render_pass_encoder0021.executeBundles([render_bundle_encoder001, ])
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    buffer100.destroy()
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder1000.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    query009.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer009.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer0018);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder0001.setPipeline(render_pipeline003);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0018, 0, array1, 0, array1.length);
    render_pass_encoder0011.setVertexBuffer(0, buffer008);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    query101.destroy()
    texture001.destroy();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    
    
    
    render_pass_encoder1010.executeBundles([])
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0010.destroy()
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    render_pass_encoder0010.setStencilReference(1);
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer0018.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    command_encoder002.copyBufferToBuffer(
        buffer0018,
        0,
        buffer001,
        0,
        400
    );
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder1011.popDebugGroup();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group008);
    render_pass_encoder1011.setPipeline(render_pipeline101);
    render_pass_encoder0000.end();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0023, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer108, 0);
    render_pass_encoder0010.endOcclusionQuery()
    command_encoder000.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group009);
    render_pass_encoder1010.setVertexBuffer(0, buffer106);
    render_pass_encoder0010.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0001.setVertexBuffer(0, buffer0022);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer109, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    render_pass_encoder0001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1011.setVertexBuffer(0, buffer101);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1011.end();
    command_encoder101.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder1011.popDebugGroup();
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0010);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setVertexBuffer(0, buffer0013);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.end();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0030.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    compute_pass_encoder0010.end();
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer006, 0);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0011.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1020, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1010.end();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([command_buffer001, command_buffer003, ]);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder1010.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0010.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.end();
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
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
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndexed(3);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0001.end();
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0038, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1037, 0);
    compute_pass_encoder0010.end();
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
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
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
}