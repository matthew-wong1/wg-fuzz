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
    const array0 = new Float32Array([1.0, 0.25, -0.75, 0.75, 0.5, -0.75, 1.0, 0.5, 0.0, 0.25, 0.75, 0.75, -0.75, -1.0, -1.0, -0.25, 0.25, -0.5, -0.25, -1.0, 0.0, -1.0, 0.75, 0.0, 0.0, -0.75, -1.0, -0.25, -1.0, 0.75, 1.0, 0.25, 1.0, 0.0, 0.25, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.0, -1.0, 0.0, 0.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.5, 1.0, -0.5, 0.5, 0.0, -1.0, 0.5, -0.75, 0.0, -1.0, 0.5, 1.0, 0.25, -0.75, -0.25, -1.0, -1.0, 0.0, 1.0, -0.5, -0.25, -0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, -1.0, -0.5, ]);
    const array1 = new Float32Array([0.0, 1.0, 1.0, -0.75, 0.25, -1.0, 0.25, 0.25, -1.0, -1.0, 0.75, -0.25, -0.75, 0.75, 0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 1.0, -0.75, 0.75, 0.75, 0.75, 0.0, -1.0, 0.0, -0.25, 0.0, 0.0, 0.75, 0.0, -0.25, 1.0, 0.25, -0.75, 0.25, 1.0, 0.0, 0.5, 0.75, 0.5, -0.75, -1.0, -1.0, -1.0, -0.5, -0.25, -0.25, 0.25, -0.25, -0.5, 0.25, 0.25, -0.75, 0.25, -0.5, -0.25, -0.5, 0.75, 0.25, 0.0, 0.25, -0.25, -1.0, -0.5, 0.0, 0.5, -0.75, -0.75, 0.5, 1.0, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, -0.75, -1.0, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.5, -0.25, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-0.5, 0.0, 0.0, -0.75, 0.5, 0.75, 0.75, 0.5, -0.5, -0.5, -0.25, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, -0.5, -1.0, 0.5, 0.75, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, -1.0, -0.5, -1.0, -0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 1.0, 0.75, -0.75, -0.75, 0.0, 0.5, -0.75, 0.5, -0.5, 0.75, -0.25, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.25, -0.25, -1.0, -1.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 0.75, 0.0, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, 0.25, -0.25, 0.0, 0.5, -1.0, 0.5, -1.0, ]);
    const array3 = new Float32Array([-0.25, -1.0, 0.25, 0.5, 0.75, -0.5, -1.0, 1.0, -0.75, 0.75, 0.25, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, 1.0, -0.75, 0.0, -1.0, -0.25, 0.0, 0.25, -0.25, 0.0, -0.75, 0.75, 1.0, -0.5, 1.0, 0.25, 0.75, 0.5, -0.75, 1.0, 0.5, 0.75, -0.75, 0.5, 0.25, 0.5, -0.25, -0.25, 0.75, 0.0, -0.5, 1.0, 0.0, 1.0, 0.75, -0.75, 0.5, 0.0, 0.75, 0.0, 0.0, -0.5, 0.25, 0.0, 0.75, -0.25, 0.75, 0.5, 0.25, -1.0, -0.5, 0.75, 0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, -1.0, -1.0, 0.25, 0.0, -0.5, -0.5, 0.0, 0.75, -0.75, 0.5, 1.0, 0.0, -0.75, 0.25, 0.25, 0.75, 0.5, 0.5, 0.25, 0.75, -0.5, 0.75, 1.0, 0.75, ]);
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array4 = new Float32Array([0.25, 0.25, -1.0, 0.25, 1.0, -0.25, 1.0, -0.25, -0.75, 0.5, -0.75, 1.0, -0.25, 0.25, -0.75, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 0.25, 0.5, 1.0, -0.75, 1.0, 0.75, -0.25, -0.5, -0.25, 0.75, -0.75, -0.5, 0.0, -0.5, -0.5, 0.5, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, 1.0, -0.75, 0.0, -0.75, -0.25, 0.5, 0.75, 0.0, 0.5, 0.0, 1.0, 1.0, 0.75, 0.75, 0.75, -0.5, -0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.5, 0.5, 0.5, -1.0, -0.25, -0.75, 0.0, -1.0, -0.75, -0.5, 0.75, 0.5, 1.0, -1.0, 1.0, -0.25, 0.75, 0.0, -0.75, 0.0, 1.0, -0.75, 0.0, 0.25, 0.25, 0.75, 0.75, ]);
    const array5 = new Float32Array([0.25, 0.25, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.75, 0.25, -0.75, 0.75, 1.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.75, 0.5, 0.0, -0.25, 0.5, -0.5, 1.0, -0.75, -1.0, 0.25, 0.75, -0.25, -0.25, -1.0, -0.75, 0.5, -0.75, 0.75, 0.75, 1.0, -0.25, 0.0, 1.0, -0.25, 0.75, 0.75, 1.0, 0.0, 0.25, -0.75, 0.75, 0.25, 0.25, -0.5, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 0.0, 0.5, -1.0, -0.5, 0.0, -0.75, 0.75, -0.75, -0.75, -0.25, 0.5, -0.25, 1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.25, -1.0, -0.75, ]);
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
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
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
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
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query004.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const array6 = new Float32Array([1.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.75, -1.0, -0.75, -0.25, 1.0, 0.0, 1.0, -1.0, -0.5, -0.5, 0.75, 0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -0.75, 0.75, -0.5, 1.0, 0.75, 0.0, -0.75, 0.75, 0.25, -0.25, -1.0, 0.25, -0.25, 1.0, 1.0, 1.0, 0.0, -1.0, 0.0, 0.5, 0.75, -0.75, -0.75, -1.0, -0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 0.75, -0.25, -0.5, 0.5, -0.75, 1.0, -0.25, -1.0, 0.75, 1.0, -0.75, 0.5, -0.25, 1.0, -1.0, -0.25, 1.0, 0.75, 0.5, 0.0, -0.5, -1.0, 0.5, 0.5, -0.25, 0.0, -1.0, -0.25, 0.25, -0.5, 0.0, -0.5, 1.0, -1.0, 0.75, 1.0, 0.5, -0.25, -0.75, 0.75, -0.5, -0.5, 0.75, -0.5, 0.5, 0.5, -1.0, ]);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    query002.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
    
    query002.destroy()
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    query002.destroy()
    query001.destroy()
    render_pass_encoder0011.setPipeline(render_pipeline000);
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
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
    
    
    
    
    render_pass_encoder0011.setStencilReference(1);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    texture000.destroy();
    
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0011.setStencilReference(1);
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
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setPipeline(render_pipeline001);
    render_pass_encoder0000.setStencilReference(1);
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    query003.destroy()
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query002.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_pass_encoder0011.setStencilReference(1);
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder0010.insertDebugMarker("marker");
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array7 = new Float32Array([1.0, -0.75, 1.0, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 1.0, -0.75, 0.75, -0.5, -0.5, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, 1.0, -0.5, 0.75, -1.0, -0.5, -0.75, 0.25, 1.0, 1.0, -0.75, -0.25, 1.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 0.75, -1.0, 0.0, -0.25, -0.75, -0.5, 1.0, -0.25, -0.25, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 0.75, 0.0, -0.75, 0.0, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.75, -1.0, 0.0, -0.25, -0.75, -0.75, -0.75, -0.5, -1.0, 0.5, -0.75, -1.0, 0.25, 0.5, 0.75, 1.0, -1.0, 0.5, 0.0, 0.25, ]);
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    render_pass_encoder0000.popDebugGroup();
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0010.setVertexBuffer(0, buffer000);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    query004.destroy()
    query002.destroy()
    
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array8 = new Float32Array([0.0, 0.25, 0.0, 0.0, 0.25, -0.75, -1.0, -0.25, 0.5, -0.5, 0.75, 0.0, 0.0, 1.0, 0.25, 0.5, -0.25, -0.75, -0.25, 0.0, -0.5, 1.0, 0.5, -0.5, -0.5, -0.75, 0.75, 0.0, -0.75, 0.75, -0.5, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 1.0, 0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, 0.0, 0.25, 0.0, 0.5, -1.0, -0.25, 0.75, -0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, 0.25, 1.0, 1.0, 1.0, 0.5, 0.25, 1.0, -0.75, 1.0, -0.5, 0.25, -0.25, 1.0, 0.75, -0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 0.5, 0.75, 0.25, 0.5, -0.5, 0.25, -0.75, -1.0, 0.75, 1.0, -0.75, -1.0, 0.0, 0.0, 0.25, -0.25, 1.0, 1.0, 0.75, 0.0, ]);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    query005.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.draw(3);
    query001.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group005);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder003.setPipeline(render_pipeline001);
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0000.draw(3);
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query004
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query004.destroy()
    render_pass_encoder0020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query004.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
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
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0010.draw(3);
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
        occlusionQuerySet: query003
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    const array9 = new Float32Array([0.0, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.0, 1.0, 0.25, 0.5, -0.25, -1.0, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.75, -1.0, 1.0, 1.0, 0.75, 1.0, 0.5, 0.75, 0.0, -0.75, 0.75, 1.0, -0.75, 0.25, 0.75, 0.75, -0.5, -1.0, 0.25, 0.0, -0.5, 0.25, -0.75, 0.75, 0.25, -0.75, -1.0, 0.75, -0.5, -0.5, 1.0, 0.5, 0.25, 1.0, 0.25, -0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -1.0, -0.5, 0.75, -0.5, 1.0, -0.25, 0.25, 1.0, 0.25, 0.0, 0.0, 0.5, 0.75, 0.5, 1.0, 0.25, -0.75, 0.5, 0.0, -0.5, ]);
    query001.destroy()
    query005.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.drawIndirect(buffer003, 0);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    render_pass_encoder0011.setVertexBuffer(0, buffer000);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0001.setPipeline(render_pipeline002);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.insertDebugMarker("marker");
    device00.queue.submit([]);
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout007]
    });
    const command_buffer002 = command_encoder002.finish();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    query001.destroy()
    texture101.destroy();
    query004.destroy()
    render_pass_encoder0010.popDebugGroup();
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.setStencilReference(1);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.finish();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0011.insertDebugMarker("marker");
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
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder102.pushDebugGroup("mygroupmarker")
    const command_buffer101 = command_encoder101.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array10 = new Float32Array([-0.75, -0.25, 0.5, 0.75, 0.5, 0.75, -0.5, 1.0, 0.75, 1.0, 0.25, 0.25, -0.75, -1.0, 0.25, 0.5, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, 0.0, 0.5, -1.0, 1.0, 0.0, -1.0, -0.5, -0.75, -0.5, -0.25, -0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 1.0, 0.25, -0.75, 0.25, 0.25, -0.25, 0.0, -0.75, -0.5, 0.25, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, -1.0, -1.0, -0.25, -0.5, 0.75, 0.75, -0.75, -1.0, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, 1.0, 1.0, 1.0, -1.0, 1.0, 0.5, -0.5, 0.75, -0.75, 0.5, -0.75, -0.25, 1.0, 0.5, -0.5, -0.5, -1.0, -0.5, 0.25, -0.25, 0.75, -1.0, 0.25, 0.5, -0.75, -1.0, -0.5, -0.5, 1.0, -1.0, 1.0, ]);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const array11 = new Float32Array([-0.25, 0.75, 0.5, 0.0, -1.0, 0.75, 0.5, 0.5, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 0.0, -0.5, -1.0, -1.0, 0.25, 0.75, -0.75, 0.0, 0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 0.0, -0.75, 0.0, -1.0, 0.5, 0.75, 0.0, 0.5, 0.75, 1.0, 0.5, 1.0, -1.0, 0.5, -0.75, -0.5, -1.0, 0.75, 0.75, 0.25, 0.25, -0.25, 0.25, 0.0, 0.0, -1.0, 0.0, -0.75, 1.0, 0.0, 0.75, -1.0, 0.25, -1.0, 0.5, 0.75, 0.75, -0.25, 0.25, 0.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.75, -0.75, -0.25, -0.5, 0.0, -1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -1.0, ]);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setPipeline(render_pipeline002);
    
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder003.setBindGroup(0, bind_group006);
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0030.setPipeline(render_pipeline004);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query005.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder0011.pushDebugGroup("group_marker");
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

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query004.destroy()
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
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder003.setVertexBuffer(0, buffer000);
    render_pass_encoder0030.setVertexBuffer(0, buffer006);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout007]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.draw(3);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query100.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder003.drawIndirect(buffer0017, 0);
    render_pass_encoder1020.setStencilReference(1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer001,
        0,
        400
    );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
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
        occlusionQuerySet: query001
    });
    
    render_bundle_encoder003.finish();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
    render_pass_encoder0010.setStencilReference(1);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_bundle_encoder004.setPipeline(render_pipeline002);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array12 = new Float32Array([-0.25, -0.25, 1.0, -0.25, -0.25, 0.25, 0.25, -0.25, 0.75, 0.75, 0.5, 0.5, 0.25, -0.25, 0.75, -1.0, -0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.75, 0.5, 0.5, -0.75, 0.75, -1.0, 1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, -0.75, 0.75, 1.0, -0.75, 0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, -0.75, -0.25, -0.75, 1.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.25, 0.0, 1.0, -1.0, 0.75, -1.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.25, 0.5, 0.75, 0.75, -1.0, -1.0, 0.0, 0.5, 1.0, -0.75, -0.25, 0.0, 0.0, ]);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.setPipeline(render_pipeline003);
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.draw(3);
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder1021.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query001.destroy()
    render_pass_encoder1020.setStencilReference(1);
    query002.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
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
    render_bundle_encoder002.setIndexBuffer(buffer009, "uint16");
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const array13 = new Float32Array([0.0, -1.0, -1.0, 0.75, 0.5, -0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 0.75, -1.0, 0.25, -0.25, -0.5, 0.0, -0.25, 0.75, 0.75, 0.0, -0.5, -0.25, 0.25, -1.0, -1.0, -0.75, -0.75, 1.0, 0.75, 1.0, -0.75, 0.0, 1.0, -1.0, -0.75, 0.25, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, -0.75, -1.0, 0.5, -0.75, 0.25, 0.0, 0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, -0.5, 0.5, -1.0, 0.75, -0.5, -0.75, -0.75, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, -0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.75, -0.5, -0.5, -0.75, -1.0, 0.25, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.0, 1.0, 0.5, -0.5, 0.75, ]);
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    query101.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder002.drawIndexed(3);
    query003.destroy()
    render_pass_encoder1021.setPipeline(render_pipeline101);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer0017,
        0
    )
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    render_pass_encoder0031.setPipeline(render_pipeline008);
    render_pass_encoder0031.setStencilReference(1);
    
    render_pass_encoder1021.popDebugGroup();
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_bundle_encoder001.finish();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    query006.destroy()
    
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout007]
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group008);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_pass_encoder0000.setStencilReference(1);
    
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group009);
    render_pass_encoder0010.setStencilReference(1);
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    device00.queue.writeTexture({ texture: texture001 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder004.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout007]
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer000);
    render_pass_encoder0020.popDebugGroup();
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0010);
    render_pass_encoder0001.setVertexBuffer(0, buffer0022);
    render_pass_encoder0031.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.setVertexBuffer(0, buffer004);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group102);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1021.setVertexBuffer(0, buffer100);
    render_pass_encoder1021.draw(3);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0031.draw(3);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
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
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder1000.setVertexBuffer(0, buffer106);
    render_pass_encoder1020.setVertexBuffer(0, buffer106);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.draw(3);
    device00.queue.submit([]);
    render_pass_encoder0001.endOcclusionQuery()
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group0011);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0020.setVertexBuffer(0, buffer0011);
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0031.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer002, ]);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0031.drawIndexed(3);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0040.draw(3);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0001.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
}