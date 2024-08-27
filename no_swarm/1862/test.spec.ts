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
    const array0 = new Float32Array([0.75, 0.5, -0.25, 1.0, -0.25, -0.75, -0.25, 0.5, 0.0, -1.0, -0.75, -0.25, -0.5, 0.75, 0.5, -0.25, 0.25, 0.75, -0.25, 0.0, 0.5, 0.75, -0.25, 0.0, 0.25, -0.25, -0.25, 0.0, -0.25, 0.0, 0.75, -1.0, 0.0, -0.5, -0.75, -0.25, 1.0, 0.5, -0.75, 0.25, 0.75, -0.75, 0.5, 0.75, 0.0, -1.0, 0.75, 0.25, 0.75, 0.5, 1.0, -0.5, -1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 0.25, -0.5, -1.0, 0.75, 0.0, -0.75, 0.25, 0.0, 0.5, 0.0, 0.25, 1.0, 0.75, -0.25, 0.5, 1.0, 0.75, -0.25, 0.75, 0.25, -0.25, 0.25, -0.75, 1.0, 0.0, 0.25, 1.0, -1.0, -0.75, -1.0, 0.0, 0.0, ]);
    
    const array1 = new Float32Array([-1.0, 0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 1.0, -1.0, 0.5, -1.0, 0.5, 0.0, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, -0.25, 0.0, -0.25, 0.25, 0.0, 0.0, -1.0, -0.5, -1.0, 0.5, -0.25, 0.75, -0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, -0.5, -1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 1.0, 0.25, 0.0, -0.5, 1.0, 0.25, -1.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.5, -0.75, -0.5, -1.0, -0.75, 1.0, -0.25, 1.0, 1.0, -0.5, 1.0, 0.75, 0.75, 0.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.25, 0.75, 0.75, 0.5, 0.0, -1.0, -1.0, -0.5, -0.5, -0.25, 0.5, 0.5, 0.5, 0.0, 0.5, 0.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.25, 0.25, -0.25, -0.25, -0.25, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, 1.0, 0.0, 0.0, 0.5, -0.25, 0.25, 0.75, -0.5, 0.25, 0.25, -0.75, -1.0, -0.25, -0.25, -1.0, 0.0, 0.5, 0.0, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 0.75, 1.0, 0.25, -0.75, 1.0, 0.0, 1.0, 1.0, -0.75, 1.0, 0.25, -0.25, 0.5, -0.75, 0.5, -0.75, 0.75, -0.5, -1.0, -0.75, -0.25, -1.0, -1.0, -0.75, 1.0, 0.5, 0.25, 0.0, 0.25, 0.0, -1.0, -0.5, 1.0, 0.5, 1.0, 0.5, 0.5, -1.0, -1.0, -0.25, 1.0, 1.0, 0.25, 0.0, -1.0, -1.0, 0.75, -1.0, 0.5, 0.0, 0.0, 0.75, 0.75, -0.75, 0.0, 0.5, ]);
    device00.pushErrorScope("out-of-memory");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    buffer001.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    
    
    buffer000.destroy()
    
    
    render_bundle_encoder000.popDebugGroup();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([0.25, -1.0, -0.5, 0.0, 1.0, -0.75, -0.5, -0.5, 0.25, 1.0, 0.5, 0.5, 0.75, 1.0, 0.25, 0.0, -0.25, -0.75, -0.25, 0.5, 0.75, -0.75, -0.5, -0.5, 0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, 0.25, 0.5, 0.25, -1.0, -1.0, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, 0.0, 0.5, -0.5, -1.0, 0.75, 0.25, -1.0, -0.5, 1.0, 0.75, -1.0, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, -0.25, 0.0, 0.0, 0.75, -0.5, -0.25, 0.75, 0.0, 1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 0.25, -1.0, -0.5, 0.25, 0.25, -0.5, -0.25, -1.0, 0.5, -1.0, 0.75, -1.0, 1.0, 0.25, -1.0, 0.25, 1.0, 0.25, -0.75, -1.0, 1.0, ]);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder002.insertDebugMarker("mymarker");
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
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
    const array4 = new Float32Array([0.75, -0.5, -0.75, 1.0, 1.0, 0.25, -0.5, -0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.25, -1.0, 1.0, 0.75, 0.0, 0.25, 0.5, 1.0, 0.0, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, 0.25, -1.0, 0.75, 1.0, 0.25, 0.25, -1.0, -0.25, -0.75, -0.25, -1.0, 1.0, -0.5, -0.25, -0.25, 0.25, 0.75, 0.75, -0.25, -0.5, 0.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.25, -1.0, 0.75, -1.0, 1.0, 0.25, 0.75, 1.0, -0.25, -0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 0.75, 0.0, 0.75, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, -0.25, 0.75, -1.0, -0.25, -0.25, 1.0, -0.75, 0.0, 0.0, -0.75, 0.25, 0.0, 1.0, 0.25, -1.0, 0.0, -0.75, -1.0, ]);
    
    command_encoder001.insertDebugMarker("mymarker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    buffer002.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder0021.setPipeline(render_pipeline000);
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder000.popDebugGroup();
    texture000.destroy();
    command_encoder002.clearBuffer(buffer000);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture200.destroy();
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.beginOcclusionQuery(0)
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([0.0, -1.0, -0.25, 0.25, -0.25, 0.75, 0.0, -0.25, 0.0, 0.5, -0.25, -1.0, -0.75, 0.0, 0.75, -0.25, 0.25, 1.0, -0.75, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, -1.0, 1.0, 0.25, 1.0, 0.75, -0.5, -0.25, -1.0, 0.0, -0.75, 0.25, 1.0, 0.5, -0.25, 0.25, 0.0, -0.25, 1.0, -0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 0.0, 0.75, -0.75, -0.75, -0.75, 1.0, 1.0, 0.0, 0.25, 1.0, 1.0, 0.25, 0.75, 0.75, 1.0, -1.0, 0.25, -0.75, 1.0, -0.25, 0.75, -0.25, 0.25, -0.5, -0.75, 0.75, -0.5, 1.0, -0.5, 0.75, 0.0, -0.5, 1.0, 1.0, 0.5, 1.0, -0.25, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.5, -0.25, 0.5, -0.5, 0.5, 0.5, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder200.insertDebugMarker("mymarker");
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    buffer300.destroy()
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device30.destroy();
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    buffer005.destroy()
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.5, 1.0, 0.25, -1.0, -0.5, -0.75, 0.25, 0.0, 0.75, -0.5, -0.75, 0.5, -0.75, 0.5, 0.0, 0.0, -0.5, 0.25, 0.75, 0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 0.75, -0.25, 1.0, -1.0, -1.0, -0.75, 1.0, 0.0, 0.25, 0.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.5, 0.0, 1.0, 1.0, -1.0, -0.75, -0.25, 1.0, -0.5, 0.25, 0.25, -1.0, -0.75, -0.5, 0.5, -0.5, 0.5, -0.5, 0.75, -0.75, -0.5, 0.75, -1.0, 0.25, -0.5, 1.0, -0.75, -0.25, 0.0, -0.75, -0.5, 0.75, -1.0, 0.0, -0.5, 0.5, -0.25, -0.75, -0.75, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, -0.75, -0.75, -1.0, 1.0, -0.25, 0.5, 0.5, 0.0, -1.0, 0.75, -0.5, 0.5, 0.0, ]);
    buffer008.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer000.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0021.setStencilReference(1);
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0020.popDebugGroup();
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
    render_pass_encoder0020.setStencilReference(1);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder201.popDebugGroup();
    buffer001.destroy()
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    
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
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    buffer0010.destroy()
    buffer009.destroy()
    
    buffer200.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer003.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer007.destroy()
    render_pass_encoder0030.setPipeline(render_pipeline000);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0021.setStencilReference(1);
    device20.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder000.setVertexBuffer(0, buffer0011);
    device00.pushErrorScope("internal");
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder000.setIndexBuffer(buffer000, "uint16");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    texture201.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    command_encoder004.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0021.setVertexBuffer(0, buffer005);
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
        occlusionQuerySet: query001
    });
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder000.drawIndexedIndirect(buffer0013, 0);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2001.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.executeBundles([])
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0021.popDebugGroup();
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_pass_encoder0030.setStencilReference(1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0030.beginOcclusionQuery(1)
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.executeBundles([])
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    
    device20.pushErrorScope("internal");
    command_encoder002.clearBuffer(buffer0010);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query001.destroy()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    render_pass_encoder0000.setBindGroup(0, bind_group005);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0000.setStencilReference(1);
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
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.setPipeline(render_pipeline001);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
    texture202.destroy();
    const array7 = new Float32Array([-0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 1.0, -0.5, -1.0, -0.25, -0.75, 1.0, -1.0, 0.0, 0.75, 0.0, -0.5, 1.0, -1.0, -0.75, -0.5, 0.75, 0.75, -0.25, -0.25, 0.5, -1.0, -0.75, 0.75, -1.0, 0.5, -0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, 0.75, 0.75, 1.0, -1.0, 0.5, 0.75, -0.75, -0.75, 1.0, 0.0, 0.5, -0.5, -0.5, 0.5, 0.25, -0.75, 0.75, -0.75, -0.75, -0.5, 0.25, 0.75, -0.75, -1.0, 1.0, 0.5, 0.25, -0.75, -0.5, 0.5, -1.0, 0.75, 0.25, 0.25, -1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 1.0, -1.0, 1.0, 0.75, 1.0, 0.25, 0.0, 0.0, -1.0, -0.5, -1.0, 0.75, -0.5, -0.75, -0.25, ]);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2020.setPipeline(render_pipeline201);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
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
    
    
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0020.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0030.setPipeline(compute_pipeline008);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0031.insertDebugMarker("marker");
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    command_encoder203.clearBuffer(buffer201);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0018.destroy()
    render_pass_encoder0030.setStencilReference(1);
    
    render_bundle_encoder201.popDebugGroup();
    command_encoder002.clearBuffer(buffer008);
    compute_pass_encoder0001.setPipeline(compute_pipeline003);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0019, 0);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const array8 = new Float32Array([-0.75, -1.0, 0.0, -1.0, 0.75, 1.0, -0.75, 0.5, 0.75, -0.25, -0.75, -0.75, 0.0, -1.0, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.75, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, -0.25, -1.0, 0.25, -0.75, -0.25, -0.25, 0.0, -1.0, 1.0, -0.25, 0.25, -0.75, 0.5, 0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.25, -0.75, 0.0, 0.75, -0.25, 0.75, 1.0, -0.5, 0.25, 0.0, -0.25, 1.0, 1.0, -0.5, 0.0, -0.25, 0.75, 0.0, -0.5, 1.0, 0.25, 0.25, -0.75, -0.5, -0.75, -0.5, -1.0, 0.5, 0.25, -0.5, -0.5, 0.5, 0.25, -1.0, 0.5, 1.0, -0.5, 0.25, 0.5, -0.5, 0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, ]);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline202);
    
    render_pass_encoder0031.setStencilReference(1);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    render_pass_encoder2021.insertDebugMarker("marker");
    query201.destroy()
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0030.endOcclusionQuery()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder2021.setStencilReference(1);
    device00.queue.writeBuffer(buffer0018, 0, array6, 0, array6.length);
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer008,
        0,
        400
    );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline003);
    {
        await buffer0015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0015.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder2021.setStencilReference(1);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder004.copyBufferToBuffer(
        buffer0016,
        0,
        buffer002,
        0,
        400
    );
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder001.clearBuffer(buffer001);
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
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
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer0017,
        0
    )
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.setStencilReference(1);
    device00.queue.writeBuffer(buffer0019, 0, array1, 0, array1.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.end();
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group007);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0001.setPipeline(render_pipeline001);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    {
        await buffer0022.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0022.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0022.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0010.beginOcclusionQuery(2)
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.popDebugGroup();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder200.clearBuffer(buffer202);
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    render_pass_encoder2021.setPipeline(render_pipeline203);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group008);
    render_pass_encoder0010.setVertexBuffer(0, buffer0015);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.end();
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

    render_pass_encoder0030.setBindGroup(0, bind_group009);
    render_pass_encoder0000.setVertexBuffer(0, buffer0024);
    render_pass_encoder0040.setVertexBuffer(0, buffer0015);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer0021);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0027, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0028, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.drawIndexed(3);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder2020.end();
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group201);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0031, 0);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group0011);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer0027);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0031.setVertexBuffer(0, buffer0020);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder2001.setPipeline(compute_pipeline200);
    command_encoder004.popDebugGroup()
    compute_pass_encoder0030.end();
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group202);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder2021.setVertexBuffer(0, buffer200);
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0001.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.end();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    command_encoder201.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    compute_pass_encoder0001.end();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2001.end();
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    const command_buffer200 = command_encoder200.finish();
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0039, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2014, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0001.popDebugGroup()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
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
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group205);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0010.endOcclusionQuery()
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    compute_pass_encoder2001.end();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2018, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
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

    compute_pass_encoder2001.setBindGroup(0, bind_group206);
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0016);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder0031.end();
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0020.end();
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.end();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0001.draw(3);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2021, 0);
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0050, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder0001.end();
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
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
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group208);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2026, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0051, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0056, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2026, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0053, "uint16");
    command_encoder300.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2028, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group209);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0027, 0);
    device20.queue.submit([]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0023);
    render_pass_encoder0001.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0030.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder0000.end();
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0042, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2010);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndirect(buffer0057, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0001.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0031.popDebugGroup();
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0024);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0052, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0025);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    compute_pass_encoder0030.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0053, "uint16");
    compute_pass_encoder2000.end();
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
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
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2011);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder2001.end();
    render_pass_encoder0020.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    device00.queue.submit([command_buffer001, ]);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0065, "uint16");
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0001.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0037, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    device00.queue.submit([]);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0026);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0075, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0075, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.popDebugGroup()
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
        layout: compute_pipeline008.getBindGroupLayout(0),
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
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0078, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
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
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2013);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0079, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0080, 0);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2014);
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0001.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2043, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndirect(buffer0027, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2044, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0081, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2021.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0068, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0031.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0024, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.draw(3);
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.popDebugGroup();
    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0087,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0030);
    render_pass_encoder0021.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0089,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0031);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0084, "uint16");
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0059, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0090, 0);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
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
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0032);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0078, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0071, 0);
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
    render_pass_encoder0010.drawIndirect(buffer0097, 0);
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0035);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0030.end();
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer0078, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndirect(buffer0090, 0);
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.end();
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer201, ]);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2017);
    render_pass_encoder0021.drawIndexedIndirect(buffer0079, 0);
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
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
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0097, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0081, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0090, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder0031.drawIndirect(buffer0087, 0);
    render_pass_encoder0001.drawIndirect(buffer0057, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00101, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0080, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder2001.popDebugGroup()
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder0001.drawIndirect(buffer0078, 0);
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0000.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndirect(buffer0040, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.drawIndirect(buffer0078, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0000.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0097, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
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
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0037);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0090, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
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
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder0040.drawIndirect(buffer0090, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00107, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00106, 0);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0021.drawIndirect(buffer0090, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0001.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00108, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00108, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2055, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00100, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00111, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00111, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2044, "uint16");
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    render_pass_encoder0001.drawIndirect(buffer0061, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0049, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00113, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00113, 0);
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndirect(buffer00111, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndirect(buffer2032, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0080, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0021.drawIndirect(buffer00107, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0001.drawIndirect(buffer00100, 0);
    render_pass_encoder0001.drawIndirect(buffer0057, 0);
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0000.drawIndirect(buffer0075, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0084, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0090, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndirect(buffer00112, 0);
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00114, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00114, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2022, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0076, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2058, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2058, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0071, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0080, "uint16");
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
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0039);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder0021.drawIndirect(buffer00115, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndirect(buffer0090, 0);
    render_pass_encoder0021.drawIndirect(buffer0097, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0031.drawIndirect(buffer00114, 0);
    render_pass_encoder2021.drawIndirect(buffer2055, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.end();
    render_pass_encoder0000.drawIndirect(buffer0098, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
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
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0040);
    render_pass_encoder0040.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group2021);
    render_pass_encoder0001.drawIndirect(buffer00100, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2052, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndirect(buffer0081, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00119, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00119, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00100, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndirect(buffer0080, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2055, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.end();
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0041);
    render_pass_encoder0020.popDebugGroup();
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
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0042);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00114, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder0001.drawIndirect(buffer0062, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    render_pass_encoder2021.drawIndirect(buffer2055, 0);
    device20.queue.submit([command_buffer203, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00124, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00124, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder0040.drawIndirect(buffer00113, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2064, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2064, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer000, ]);
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
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0043);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0010.drawIndirect(buffer0090, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2064, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0001.drawIndirect(buffer0078, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00127, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00127, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0031.drawIndirect(buffer00117, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2045, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00113, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00119, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00108, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0068, 0);
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
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
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0044);
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
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
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0045);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0031.drawIndirect(buffer0079, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00132, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00132, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00124, 0);
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00114, 0);
    render_pass_encoder0030.drawIndirect(buffer00100, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00112, 0);
    render_pass_encoder0031.drawIndirect(buffer00113, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0040.drawIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0010.drawIndirect(buffer00112, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2048, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0046);
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
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0047);
    render_pass_encoder0030.end();
    render_pass_encoder0010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0093, 0);
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00137, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00137, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2020.popDebugGroup();
    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00139,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0048);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00141,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0049);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00112, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0075, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    render_pass_encoder0031.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00142, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00142, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0021.drawIndirect(buffer0097, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
}