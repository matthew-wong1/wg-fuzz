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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("validation");
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    query000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.destroy();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
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
    render_pass_encoder0000.setStencilReference(1);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    render_pass_encoder0000.setStencilReference(1);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    query001.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    texture001.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder0000.setPipeline(render_pipeline000);
    query004.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    buffer300.destroy()
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array0 = new Float32Array([0.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.25, -1.0, 0.75, 0.75, -0.5, -0.75, 1.0, -0.25, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, -0.25, 0.75, -1.0, -0.25, 0.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.25, 0.75, 0.5, 0.75, 0.0, 0.5, -1.0, 0.5, 0.0, -0.5, -0.25, 0.5, -0.25, 0.75, 0.5, -0.5, -0.75, -0.25, 1.0, -0.75, -0.5, 0.0, 0.5, 1.0, 0.5, 0.75, -0.25, 0.25, -0.5, 0.5, -0.25, 0.75, 0.5, -0.75, 1.0, 0.5, -1.0, -0.5, 0.25, -0.5, 1.0, -0.5, -0.25, 1.0, 0.5, -0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 1.0, 0.75, 0.75, 0.25, -1.0, -0.75, -0.5, -0.5, -1.0, -0.25, -1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.75, 0.25, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    texture300.destroy();
    render_bundle_encoder002.setPipeline(render_pipeline000);
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
    query003.destroy()
    
    device30.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    query002.destroy()
    query003.destroy()
    render_pass_encoder0000.setStencilReference(1);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const array1 = new Float32Array([0.25, 0.5, 0.5, 0.0, 0.75, -0.5, 1.0, -0.75, -1.0, -0.25, -1.0, 0.5, 0.75, 0.25, -1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, 1.0, 0.75, -1.0, -0.25, 0.0, -0.5, -0.25, -0.25, 1.0, -0.5, 1.0, 0.25, 0.5, -1.0, 1.0, 0.75, 0.5, 0.0, 0.5, 0.25, -0.75, 1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.5, -0.5, 0.75, -0.75, 0.5, 0.75, -0.5, -0.5, 0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -0.5, -1.0, 0.0, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, 0.0, 1.0, 0.75, 0.0, -0.75, 0.25, 0.75, -1.0, -0.5, -1.0, -0.25, -0.25, -0.25, 1.0, 0.5, 0.75, 1.0, -0.75, -0.25, 0.0, -0.25, -1.0, 1.0, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.popDebugGroup()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer002.destroy()
    const array2 = new Float32Array([0.75, -1.0, 0.5, 0.5, -0.75, -0.5, 0.25, -1.0, 0.0, 0.25, -0.75, 0.75, 0.75, 0.0, -0.25, -0.5, -1.0, 0.25, 0.0, 0.25, 0.25, 0.5, 1.0, 0.5, 0.25, 0.25, 0.0, 0.25, -0.5, 0.0, 0.25, 1.0, -0.75, -0.75, -0.5, -0.25, -0.25, -0.5, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, 1.0, 0.0, -0.5, 0.0, -1.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.0, 0.0, 0.0, 0.75, -1.0, -0.5, 1.0, 0.0, 0.5, 0.5, 0.25, 0.25, 0.0, 0.75, 0.75, 0.5, -0.75, -0.25, -0.75, -0.5, 0.25, 0.75, 0.25, 0.0, -0.25, -1.0, 0.75, -0.25, -0.5, -0.25, 0.25, 0.5, 0.5, ]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.setStencilReference(1);
    
    query003.destroy()
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    query000.destroy()
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.setPipeline(render_pipeline001);
    device00.pushErrorScope("validation");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer003.destroy()
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    query004.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query004.destroy()
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture000.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    device00.pushErrorScope("internal");
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array3 = new Float32Array([0.25, -0.25, 1.0, -1.0, -0.75, 1.0, 0.0, 0.75, -0.75, 1.0, -0.75, -0.5, -0.75, -1.0, -0.25, -0.25, -0.25, -0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.75, 0.75, 0.25, 1.0, -0.5, 0.25, -0.25, -0.5, 1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 1.0, 0.5, 0.25, -0.5, -1.0, 0.25, 0.25, -1.0, 0.75, 0.0, -0.5, 1.0, -0.75, 0.5, 0.25, 1.0, 0.25, -0.5, 1.0, 0.25, -0.25, 0.75, 0.0, -1.0, 0.5, -0.25, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, -0.75, 1.0, -0.25, -0.5, 0.0, -1.0, -1.0, -0.25, 0.75, -0.5, -0.5, -0.25, -0.25, 1.0, 0.25, 0.0, 1.0, -0.25, -0.75, -0.75, 0.0, 0.25, -0.25, -1.0, 0.5, 0.5, -1.0, 0.75, ]);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder002.insertDebugMarker("marker");
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0000.insertDebugMarker("marker");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer009, 0);
    query003.destroy()
    texture002.destroy();
    buffer001.destroy()
    query002.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer008.destroy()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    render_pass_encoder0040.setPipeline(render_pipeline000);
    query000.destroy()
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer0011.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query004.destroy()
    
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    render_bundle_encoder001.popDebugGroup();
    buffer007.destroy()
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    buffer0010.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.end();
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    query003.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([0.75, -0.75, -1.0, 1.0, 0.5, -0.5, 1.0, -1.0, -0.75, 0.5, 0.25, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 0.25, -0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -0.5, -1.0, -0.75, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, 0.75, -0.75, 0.0, 0.75, -0.5, 1.0, 0.5, -0.5, -1.0, 0.75, 0.25, -0.5, 1.0, 1.0, -0.5, 0.75, 0.25, 0.5, -0.75, 0.5, 0.75, -1.0, 1.0, -0.75, 0.0, -1.0, 1.0, -0.75, 0.75, -0.25, -1.0, -0.5, -0.5, 0.0, 0.25, 0.5, 0.0, 0.5, -0.75, -0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 0.25, 0.75, 0.25, 1.0, -0.5, 0.5, -1.0, -1.0, 0.5, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.75, 0.75, 0.5, ]);
    query001.destroy()
    buffer0012.destroy()
    
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setStencilReference(1);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0010.popDebugGroup();
    
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
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder007.pushDebugGroup("mygroupmarker")
    query005.destroy()
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setStencilReference(1);
    buffer0015.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0070.pushDebugGroup("group_marker");
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query003.destroy()
    buffer006.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query005
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query005.destroy()
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setStencilReference(1);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.setPipeline(render_pipeline001);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.5, -1.0, 1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.25, 0.5, 0.5, -0.5, -0.75, -0.75, 0.5, 0.75, 1.0, -1.0, -0.5, 0.0, 0.75, -0.5, -0.25, -0.75, 1.0, -0.25, -1.0, 0.0, 0.5, 0.5, -0.25, 0.5, -0.25, -0.25, -0.25, -1.0, -0.5, 0.5, -0.5, 0.25, -1.0, 0.0, -0.25, 1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 0.5, 1.0, -0.5, 0.0, -0.25, -1.0, 0.25, 0.5, 0.25, 0.0, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, -0.5, -1.0, 0.25, -0.75, 0.0, -0.25, 0.75, 0.5, 0.5, -0.75, -1.0, 0.75, -0.25, 0.75, 0.5, -1.0, -0.75, -0.5, -0.25, -0.5, 0.75, -0.5, -1.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, -0.75, 0.75, -0.5, 0.5, -0.25, 0.0, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
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
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0070.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    buffer0019.destroy()
    buffer009.destroy()
    
    
    
    render_pass_encoder0080.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0080.setPipeline(render_pipeline001);
    render_pass_encoder0060.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    query005.destroy()
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-0.5, 0.5, -0.5, -0.25, 0.0, 1.0, -0.75, 1.0, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, 1.0, 0.75, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, -0.25, 0.0, -0.75, 0.0, -1.0, 0.25, 0.75, -0.5, -1.0, 0.0, 1.0, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.75, 1.0, 1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.75, 1.0, -1.0, 0.5, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, -0.25, -1.0, 0.25, -0.25, -0.75, -0.25, -0.75, -0.75, 0.75, 0.75, -1.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -1.0, 1.0, -1.0, 0.0, -0.25, -0.75, -0.25, 0.75, -1.0, 0.75, 1.0, 1.0, -0.5, -0.5, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, ]);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query004.destroy()
    
    render_pass_encoder0050.setStencilReference(1);
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.popDebugGroup();
    const array7 = new Float32Array([0.5, 0.25, -1.0, 0.5, 0.0, -0.5, 0.0, -0.5, 0.5, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 0.0, -0.5, -0.5, 0.5, -0.5, -0.75, -0.75, 0.5, 0.75, -0.75, 0.75, 1.0, -0.5, -0.5, -0.5, -1.0, -0.25, -0.75, 0.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, -0.25, -0.75, -0.5, 0.0, 1.0, 0.25, -0.25, -0.75, -0.5, 0.0, -1.0, -0.75, 0.5, -0.75, 1.0, -1.0, -0.75, 1.0, 1.0, 1.0, -0.75, 0.25, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.5, 0.0, 0.0, 0.75, 0.25, 0.75, 0.25, -0.25, 1.0, 0.5, 1.0, 0.5, 0.75, -0.25, -0.5, 0.75, 1.0, -1.0, 1.0, 0.75, -0.75, -1.0, -0.75, 0.25, 1.0, -0.5, ]);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group009);
    
    render_pass_encoder0070.pushDebugGroup("group_marker");
    query006.destroy()
    buffer0013.destroy()
    render_pass_encoder0060.setStencilReference(1);
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
    });
    texture004.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query005.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    query005.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0090.setPipeline(render_pipeline002);
    render_pass_encoder0090.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0070.popDebugGroup();
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0080.setBindGroup(0, bind_group0010);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    buffer0025.destroy()
    query000.destroy()
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    buffer0020.destroy()
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder0070.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0040.popDebugGroup();
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0090.setBindGroup(0, bind_group0011);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group0012);
}