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
    
    const array0 = new Float32Array([-1.0, 1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.75, -0.75, 0.5, -0.25, 1.0, -0.75, -0.75, 0.5, -0.5, -0.25, 0.0, 0.5, 0.5, 1.0, 0.25, 1.0, -1.0, 0.0, -1.0, -0.5, -0.5, -0.5, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 0.0, -0.25, 1.0, 0.0, -0.5, -0.5, -0.5, 0.5, 0.0, -1.0, -1.0, -0.75, 0.0, -0.5, -0.75, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, -0.25, -0.75, 0.0, -0.75, -0.75, -0.75, -0.5, -1.0, 0.25, 0.75, -0.5, 0.75, 0.0, 0.75, 0.5, -1.0, -1.0, 0.0, -0.75, 1.0, 0.0, -0.75, 0.25, 0.0, -0.25, -0.75, 1.0, ]);
    const array1 = new Float32Array([0.25, 1.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.25, -1.0, 1.0, -0.75, 0.5, 0.25, -1.0, 0.75, -0.75, 0.75, 1.0, 0.5, 0.25, 0.25, 0.75, 0.0, 0.25, 0.0, 1.0, -0.75, -0.25, -0.75, -1.0, -1.0, -0.25, -0.25, -0.25, -0.75, 0.0, -0.75, 1.0, -0.75, -0.5, -0.25, 0.25, -1.0, 0.75, 1.0, 0.0, 0.0, 0.75, 0.5, 0.25, 0.5, 0.0, 0.75, 0.0, 0.5, 0.75, -0.25, -0.75, 1.0, -1.0, 0.25, -0.5, 0.25, 0.25, -1.0, 1.0, -0.25, -0.75, -1.0, -0.75, 0.75, -0.5, 1.0, -1.0, -0.5, -0.25, 0.75, 0.25, 0.0, 0.75, 1.0, -0.75, 1.0, 0.25, -0.25, -0.75, 1.0, -0.25, -1.0, 0.0, 0.0, -1.0, -0.5, 0.75, -0.25, -0.5, -0.25, -1.0, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.0, 0.25, -1.0, 0.0, -0.5, 0.75, 1.0, -1.0, 0.5, 0.5, 1.0, -1.0, 1.0, -1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.0, 0.0, -0.25, -0.25, -0.25, 0.75, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, -1.0, -0.75, 1.0, -1.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.25, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.25, 0.25, 1.0, -0.5, -0.5, -0.5, 1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.25, 1.0, -0.25, 1.0, 0.75, 0.25, 0.5, -0.25, -1.0, 0.25, -1.0, 1.0, 0.5, 0.75, 0.0, 0.5, 0.5, 0.75, 0.75, -0.75, 0.75, -1.0, -1.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.75, -0.5, -0.5, -0.5, 0.25, 1.0, -0.25, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    device10.destroy();
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    texture300.destroy();
    
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    
    device20.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.pushErrorScope("internal");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder000.insertDebugMarker("mymarker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    buffer400.destroy()
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    
    command_encoder401.clearBuffer(buffer401);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    texture301.destroy();
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query000.destroy()
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_bundle_encoder001.insertDebugMarker("marker");
    texture001.destroy();
    buffer000.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    device30.pushErrorScope("internal");
    buffer301.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    buffer401.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder0010.executeBundles([])
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture002.destroy();
    buffer402.destroy()
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.executeBundles([])
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query400.destroy()
    
    
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setStencilReference(1);
    const command_buffer402 = command_encoder402.finish();
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query000.destroy()
    render_pass_encoder0010.popDebugGroup();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device40.pushErrorScope("validation");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    query400.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder000.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3020.setStencilReference(1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
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
    buffer600.destroy()
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    query000.destroy()
    const array3 = new Float32Array([0.0, 0.75, 0.5, -0.25, 0.75, 0.5, 0.5, 1.0, -0.25, -1.0, 0.75, 0.75, 0.5, -1.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.75, 0.5, 0.75, 0.5, 0.5, -1.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.25, 0.5, -0.5, -0.5, -0.5, 0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.75, -0.75, -0.5, -0.5, 0.5, 0.0, 0.5, -0.5, 0.25, -0.25, -1.0, -1.0, 0.75, -1.0, 0.0, 0.5, 1.0, 0.5, -0.75, -0.75, -0.5, -1.0, -0.5, 1.0, -0.25, -0.75, 0.75, 1.0, 0.5, -0.5, 0.75, 0.5, 0.5, 0.0, 0.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 1.0, -1.0, -0.75, -0.25, -0.5, -0.5, -1.0, -0.5, 0.75, 0.25, ]);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.pushErrorScope("validation");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer003.destroy()
    render_pass_encoder3010.executeBundles([])
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const array4 = new Float32Array([1.0, 1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 1.0, -0.25, -0.75, 1.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.25, -0.25, 0.0, 0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, -0.25, -1.0, 0.5, 0.75, 0.0, 0.75, -0.75, -1.0, 0.75, -1.0, -1.0, -0.25, -1.0, -0.75, 0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.75, 1.0, 0.5, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.75, 0.5, -0.75, 0.25, -1.0, -0.25, 1.0, 0.5, 0.75, 0.0, -1.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.0, -0.5, 0.0, -0.75, -0.75, 0.75, 0.5, 0.75, -0.5, -0.25, 0.5, 0.75, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, 0.75, -0.25, -0.5, 0.5, -1.0, ]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0020.setStencilReference(1);
    buffer001.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline001);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    buffer404.destroy()
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([-0.5, 0.25, 0.75, 1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -1.0, -1.0, 0.5, -0.75, 0.0, 0.0, -0.25, 0.25, 0.0, -1.0, -0.5, -0.75, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.25, -1.0, 1.0, -0.5, 0.25, 0.0, -0.75, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, -1.0, 1.0, 0.25, 0.75, -0.5, 0.25, -0.25, 1.0, 0.25, -0.25, 0.25, 0.5, 1.0, 1.0, -0.25, -0.75, -0.25, -0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 0.5, 0.0, 0.5, 0.25, 0.25, -0.75, -0.25, 0.25, -0.5, 0.0, -1.0, 1.0, 0.75, -0.75, -0.25, -1.0, 1.0, 0.5, 0.75, 0.0, 0.75, ]);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout303]
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder3020.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    texture401.destroy();
    texture302.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const array6 = new Float32Array([0.25, 0.0, 0.25, -1.0, -0.25, 0.75, 0.0, -1.0, 0.0, 0.75, 0.0, -0.25, 1.0, 0.0, 0.0, 0.75, -0.25, -0.25, 1.0, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, 0.5, -0.25, 0.75, -0.25, 0.0, 0.25, -1.0, -0.75, -0.75, -0.75, 0.25, 0.25, -1.0, -0.25, 0.25, 0.75, -1.0, 0.5, -0.75, -0.75, 0.25, 0.5, 1.0, 0.25, 0.5, 1.0, 0.25, 0.75, -0.25, -0.25, 1.0, 1.0, 0.5, 1.0, 0.75, 0.0, 0.5, 0.75, 0.5, -0.75, 0.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.75, 1.0, 0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 0.5, -0.75, -0.25, -0.25, 0.75, -1.0, 0.25, 0.75, 0.0, -1.0, 1.0, -0.75, -0.25, 0.0, 0.75, ]);
    device00.pushErrorScope("validation");
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer002.destroy()
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder4010.popDebugGroup()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer403.destroy()
    
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setStencilReference(1);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    render_pass_encoder0030.setPipeline(render_pipeline002);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture304.destroy();
    render_pass_encoder3020.executeBundles([])
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder0010.setStencilReference(1);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer004, ]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder0010.setVertexBuffer(0, buffer006);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    
    query300.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder3030.insertDebugMarker("marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.destroy();
    texture003.destroy();
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    buffer007.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline300);
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
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
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group300);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    query400.destroy()
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
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

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    render_pass_encoder3030.setStencilReference(1);
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    texture000.destroy();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer005.destroy()
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder0020.popDebugGroup();
    texture600.destroy();
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device30.pushErrorScope("out-of-memory");
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer0010.destroy()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
    const command_buffer700 = command_encoder700.finish();
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    render_pass_encoder3010.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder0030.setVertexBuffer(0, buffer006);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group301);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setVertexBuffer(0, buffer303);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder0030.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    compute_pass_encoder3000.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder3030.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3020.setVertexBuffer(0, buffer303);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3010.setVertexBuffer(0, buffer303);
    render_pass_encoder3020.end();
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3010.end();
    render_pass_encoder0010.draw(3);
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    command_encoder301.popDebugGroup()
    render_pass_encoder0020.end();
    const command_buffer301 = command_encoder301.finish();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer301, ]);
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device30.queue.submit([command_buffer302, ]);
}