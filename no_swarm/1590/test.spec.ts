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
    
    
    const array0 = new Float32Array([1.0, 1.0, -0.75, 0.75, -0.75, -1.0, 1.0, 0.75, 0.75, 0.25, 1.0, 0.5, -0.75, 0.75, 0.0, 0.25, 0.25, 0.75, 0.25, -0.75, 0.75, 0.0, -1.0, -0.25, -1.0, 0.25, 1.0, 1.0, 0.5, -1.0, 0.5, 0.25, -1.0, -1.0, 0.25, -0.75, -0.25, 0.25, -1.0, 0.25, 0.5, -0.5, 0.0, 0.25, -0.75, 0.25, 0.25, -1.0, 0.25, 0.75, 0.0, -1.0, -0.25, 0.0, -0.75, -1.0, -0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.25, -0.25, 1.0, 1.0, -0.5, 0.5, 0.75, 0.0, -0.25, -0.5, 1.0, 1.0, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, -1.0, 0.0, 0.5, 0.75, -1.0, -0.75, -0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -0.5, -1.0, 1.0, -0.75, -1.0, -0.75, 0.75, 1.0, ]);
    const array1 = new Float32Array([-0.5, 0.0, 0.25, 1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.25, 0.25, 1.0, -1.0, -0.25, -1.0, -0.75, -0.5, 0.25, 0.5, 0.5, 1.0, -0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.0, 0.5, 0.5, -0.75, 0.5, 0.75, 1.0, -1.0, -0.5, 1.0, 0.5, -0.75, -0.75, -0.5, -1.0, 0.0, 0.25, 0.0, 0.75, -0.5, -1.0, 0.0, 0.0, 0.0, -0.75, 0.75, 1.0, -0.75, 0.25, -0.75, -0.5, 1.0, -0.25, -1.0, 0.5, -0.5, -0.5, -0.75, 0.0, 0.5, 0.75, 1.0, -0.5, -0.75, -1.0, -0.75, 0.75, 0.5, -1.0, 0.5, 1.0, -0.25, -1.0, -0.5, -1.0, -0.5, -0.25, 0.5, -0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 1.0, -0.5, 0.5, 0.75, ]);
    
    
    
    const array2 = new Float32Array([1.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, -0.25, 0.0, 0.25, -0.5, 0.0, 1.0, -0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, -1.0, 0.0, 0.0, 0.0, 0.75, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, 0.5, -0.25, 0.5, -0.75, -1.0, 0.75, -0.5, -0.25, 0.25, 0.0, -0.5, -0.25, -0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 1.0, 0.5, -0.75, 0.5, -0.75, 0.75, -1.0, -1.0, 0.0, -0.75, 0.0, 0.25, 1.0, 0.75, -1.0, 0.0, 0.0, -1.0, 0.5, -0.5, -0.5, -0.25, -0.5, 0.75, 0.75, 0.25, -0.5, -0.75, -0.5, 0.75, -0.5, 0.0, -0.75, 0.25, 0.25, 0.0, 0.25, -1.0, -0.25, 0.5, 0.5, 0.75, 0.5, 1.0, 0.25, ]);
    const array3 = new Float32Array([0.0, 1.0, 0.0, -0.75, 0.25, 0.5, 1.0, -1.0, -0.5, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, 0.75, 0.5, 0.5, 0.0, 0.75, -0.75, -0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.75, -0.5, 0.5, 0.5, 1.0, -0.75, 0.5, 0.75, -1.0, -0.75, 0.25, 1.0, -0.25, 0.25, 0.75, 0.5, 0.25, 1.0, 0.5, 0.5, -1.0, -0.75, 0.5, 1.0, -0.5, -0.5, 0.25, 0.25, -0.25, 0.5, -0.75, -0.25, 0.0, 0.0, -0.5, -1.0, -0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 1.0, -0.25, 1.0, -0.75, 1.0, -0.5, -0.25, -0.75, 0.25, -0.25, 0.5, 0.0, 0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 0.0, -1.0, -0.5, 0.75, 0.25, 0.75, 0.25, -1.0, 0.75, ]);
    const array4 = new Float32Array([-0.25, -0.25, 0.0, -0.25, 1.0, -0.75, 0.5, -1.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.25, 0.25, 0.0, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 1.0, 0.25, 1.0, 0.0, -0.75, -1.0, 0.75, 0.25, -1.0, -0.25, -0.75, -0.25, 0.25, 1.0, 0.5, -0.25, -0.75, -0.5, -0.75, -0.25, -0.75, 0.5, 0.0, 0.75, -1.0, 0.25, 0.25, 0.5, -0.75, 1.0, -1.0, -0.5, 1.0, -0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 0.5, 0.25, 0.5, -0.25, 0.75, 0.25, -0.75, 0.0, 0.75, 0.5, -0.75, -0.75, 0.75, 0.0, 1.0, -0.25, -0.75, 0.0, 1.0, -1.0, 0.75, -0.25, -0.25, 0.75, 0.5, 1.0, -0.25, -0.25, -0.75, 0.75, 1.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.5, ]);
    
    
    
    const array5 = new Float32Array([-1.0, -1.0, 1.0, 0.25, -0.5, 0.5, -0.75, 0.5, -0.25, 1.0, 0.0, 0.75, 0.25, -0.75, 0.0, -0.5, -0.5, 0.0, -1.0, -0.5, -0.5, -1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 0.5, -1.0, -0.5, -1.0, 0.0, 1.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.5, 0.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.25, 0.25, 0.25, -0.25, 1.0, -0.25, -1.0, 0.5, 1.0, -0.25, 0.25, 0.5, 1.0, -1.0, 0.25, 0.25, 0.25, -0.5, -0.75, 0.25, -0.25, 1.0, -0.25, 0.75, -0.5, 0.75, -0.5, -0.25, 0.0, 0.5, -0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 0.75, 0.25, -0.25, 0.5, 1.0, -0.75, -1.0, -0.75, 0.25, 0.25, -1.0, 0.25, 0.75, -1.0, 1.0, 0.25, 1.0, -1.0, ]);
    
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
    
    device00.pushErrorScope("internal");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query000.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array6 = new Float32Array([0.75, 0.75, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, 0.5, -0.5, -0.75, 0.5, 0.25, 0.25, -0.75, -1.0, 1.0, 0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 1.0, 0.5, 0.25, -0.25, -1.0, 0.0, 0.75, 1.0, -0.25, -0.75, -0.75, -1.0, 0.25, 0.25, 0.0, -0.75, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, -0.5, -1.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 1.0, 0.25, -0.25, 0.5, 0.0, -0.5, 0.0, 0.25, -0.75, -1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.25, -0.5, 0.0, 0.25, 0.75, -0.5, -0.5, -0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.25, 0.25, -0.25, -0.5, -0.75, -0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    texture001.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    render_bundle_encoder200.popDebugGroup();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query001.destroy()
    query100.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture200.destroy();
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device20.destroy();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
        occlusionQuerySet: query000
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0000.setStencilReference(1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setStencilReference(1);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    render_pass_encoder0010.executeBundles([])
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setPipeline(render_pipeline000);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
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
    render_pass_encoder0000.executeBundles([render_bundle_encoder002, ])
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder002.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
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
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder000.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
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
        occlusionQuerySet: query003
    });
    render_pass_encoder0001.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder0001.insertDebugMarker("marker");
    buffer002.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0001.executeBundles([render_bundle_encoder000, ])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder000.clearBuffer(buffer003);
    command_encoder000.popDebugGroup()
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.popDebugGroup();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device30.destroy();
    texture003.destroy();
    render_pass_encoder0021.executeBundles([])
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
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
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    buffer000.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0030.beginOcclusionQuery(0)
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0000.setPipeline(render_pipeline000);
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
        occlusionQuerySet: query003
    });
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0031.insertDebugMarker("marker");
    texture002.destroy();
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0031.setPipeline(render_pipeline002);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
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
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer003.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setVertexBuffer(0, buffer003);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
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
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query001.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    query005.destroy()
    device20.pushErrorScope("validation");
    render_pass_encoder0030.setPipeline(render_pipeline001);
    render_pass_encoder0010.setStencilReference(1);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0001.setPipeline(render_pipeline001);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    render_pass_encoder0010.draw(3);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.setPipeline(render_pipeline001);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.insertDebugMarker("marker");
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    query000.destroy()
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0022.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0022.setPipeline(render_pipeline000);
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0012.executeBundles([render_bundle_encoder001, ])
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    device40.pushErrorScope("internal");
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0022.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0022.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query003
    });
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    buffer009.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0022.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const render_pass_encoder0033 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0033",
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
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.popDebugGroup();
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0032.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0022.setStencilReference(1);
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    render_pass_encoder0033.setStencilReference(1);
    query000.destroy()
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.setStencilReference(1);
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    render_pass_encoder0000.setVertexBuffer(0, buffer008);
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
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
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0033.beginOcclusionQuery(0)
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    render_pass_encoder0033.insertDebugMarker("marker");
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0032.executeBundles([])
    render_pass_encoder0032.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group006);
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder002.copyBufferToBuffer(
        buffer0013,
        0,
        buffer006,
        0,
        400
    );
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer0011.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder003.setPipeline(render_pipeline000);
    buffer0012.destroy()
    
    
    buffer0015.destroy()
    render_pass_encoder0030.setVertexBuffer(0, buffer008);
    render_pass_encoder0001.setVertexBuffer(0, buffer008);
    render_pass_encoder0032.setPipeline(render_pipeline001);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0033.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0033.setPipeline(render_pipeline000);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0022.setBindGroup(0, bind_group007);
    render_pass_encoder0001.end();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0019, 0);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group008);
    render_pass_encoder0022.popDebugGroup();
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group009);
    render_pass_encoder0022.setVertexBuffer(0, buffer008);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0010);
    render_pass_encoder0021.setVertexBuffer(0, buffer008);
    render_pass_encoder0001.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0010, "uint16");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0001.end();
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0033.setBindGroup(0, bind_group0011);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0022.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0033.setVertexBuffer(0, buffer007);
    render_pass_encoder0033.drawIndirect(buffer0014, 0);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group0012);
    render_pass_encoder0011.setVertexBuffer(0, buffer001);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0031.setVertexBuffer(0, buffer0025);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
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
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0033.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0033.end();
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0012.setVertexBuffer(0, buffer0013);
    render_pass_encoder0033.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group0013);
    render_pass_encoder0030.end();
    render_pass_encoder0020.setVertexBuffer(0, buffer0011);
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0022.drawIndirect(buffer005, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0033.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0000.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexed(3);
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
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0032.setBindGroup(0, bind_group0014);
    render_pass_encoder0033.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0023, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    command_encoder003.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0032.setVertexBuffer(0, buffer0026);
    render_pass_encoder0032.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0022.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0012.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0027, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0016, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0022.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0022.draw(3);
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.draw(3);
    command_encoder002.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0032.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    device50.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0012.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0033.end();
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.draw(3);
    device50.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0033.drawIndirect(buffer001, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.end();
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0012.drawIndirect(buffer0027, 0);
    render_pass_encoder0012.drawIndirect(buffer002, 0);
    device20.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0012.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0033.drawIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    device40.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0033.end();
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
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
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0033.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    device50.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0022.drawIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0033.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0033.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0032.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder0031.end();
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer0015, 0);
    device40.queue.submit([]);
    render_pass_encoder0033.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0033.end();
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0022.drawIndirect(buffer004, 0);
    render_pass_encoder0022.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0022.end();
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0032.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0033.end();
    device10.queue.submit([]);
    render_pass_encoder0033.drawIndirect(buffer0019, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder0022.end();
    render_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0033.setIndexBuffer(buffer005, "uint16");
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
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
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0012.drawIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0000.popDebugGroup();
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    compute_pass_encoder0000.end();
    device50.queue.submit([]);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    device50.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0033.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0022.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0021.end();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0012.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0022.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.setIndexBuffer(buffer0037, "uint16");
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder0011.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0032.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    device40.queue.submit([command_buffer400, ]);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0032.drawIndirect(buffer0030, 0);
}