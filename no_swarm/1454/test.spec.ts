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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("validation");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder001.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer000,
        0,
        400
    );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder001.clearBuffer(buffer000);
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.5, 0.5, -0.75, 0.5, -1.0, 0.25, 0.75, -0.5, 0.5, -1.0, 0.0, -0.75, -0.5, -1.0, 0.0, 1.0, -0.75, -0.25, 0.0, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, -0.75, -0.75, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, -0.75, 0.75, 1.0, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, 0.5, -1.0, 0.0, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, -1.0, 0.75, -0.75, -0.25, 0.5, -0.75, -1.0, -0.25, 1.0, 0.25, 0.25, 0.75, 0.5, -0.75, -0.25, 0.5, 1.0, -0.25, 0.5, -0.75, -0.75, -0.5, -1.0, 0.25, 0.0, -1.0, 0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    command_encoder001.clearBuffer(buffer000);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    
    query000.destroy()
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer000,
        0,
        400
    );
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
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
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    device00.pushErrorScope("out-of-memory");
    
    buffer002.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture000.destroy();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    
    buffer001.destroy()
    query000.destroy()
    
    
    
    buffer000.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    command_encoder002.insertDebugMarker("mymarker");
    
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    const query302 = device30.createQuerySet({
        label: "query302",
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
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    query300.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query302.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_buffer000 = command_encoder000.finish();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline002);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    
    query302.destroy()
    query303.destroy()
    
    query000.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder0020.setPipeline(compute_pipeline003);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query303.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.clearBuffer(buffer001);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    query300.destroy()
    texture001.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer003.destroy()
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    
    
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    
    
    compute_pass_encoder0011.setPipeline(compute_pipeline003);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setPipeline(render_pipeline000);
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder302.resolveQuerySet(
        query303,
        0,
        32,
        buffer300,
        0
    )
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture301.destroy();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    command_encoder301.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder302.clearBuffer(buffer300);
    query302.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    compute_pass_encoder0001.popDebugGroup()
    texture303.destroy();
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
        occlusionQuerySet: query001
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    compute_pass_encoder0020.popDebugGroup()
    texture302.destroy();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder302.copyTextureToTexture(
        {
            texture: texture300
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer005.destroy()
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query001.destroy()
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder3000.setStencilReference(1);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
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
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.executeBundles([])
    query001.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder0011.insertDebugMarker("marker")
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
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group002);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query304.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder0020.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setStencilReference(1);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.setPipeline(render_pipeline002);
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture400.destroy();
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder3020.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.pushErrorScope("validation");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0030.setPipeline(render_pipeline002);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query005
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer0011.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline003);
    
    render_pass_encoder3030.executeBundles([])
    
    buffer007.destroy()
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    render_pass_encoder3010.insertDebugMarker("marker");
    query004.destroy()
    compute_pass_encoder0011.pushDebugGroup("group_marker")
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
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    buffer0010.destroy()
    compute_pass_encoder0010.popDebugGroup()
    
    
    
    render_pass_encoder0041.setPipeline(render_pipeline003);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder004.copyBufferToBuffer(
        buffer006,
        0,
        buffer009,
        0,
        400
    );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query304
    });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder3030.executeBundles([])
    query000.destroy()
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0011.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    buffer0012.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0014, 0);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setPipeline(render_pipeline301);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3021.executeBundles([])
    
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder0011.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder3030.executeBundles([])
    texture100.destroy();
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder3021.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    texture003.destroy();
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder001.setVertexBuffer(0, buffer0012);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_pass_encoder3020.setPipeline(render_pipeline300);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.pushErrorScope("out-of-memory");
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0011.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    
    buffer301.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder3030.setStencilReference(1);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3001.setPipeline(render_pipeline300);
    render_pass_encoder3010.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group300);
    buffer008.destroy()
    render_pass_encoder0011.setPipeline(render_pipeline000);
    compute_pass_encoder0040.setPipeline(compute_pipeline007);
    const array1 = new Float32Array([1.0, -0.75, 0.25, 1.0, -0.75, -0.25, -0.75, 0.5, 0.0, 1.0, -0.5, -0.25, 0.5, 1.0, 1.0, 0.75, -0.25, -0.5, -1.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 0.0, 0.75, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, -0.25, -1.0, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, 0.0, -0.25, 0.5, 1.0, 0.5, -1.0, 0.0, -0.75, -1.0, -0.75, -0.25, 0.25, 0.0, 0.25, -0.75, 0.75, 0.75, 0.75, 1.0, -0.25, -0.5, 1.0, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, -0.5, -0.75, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, 0.5, 0.5, -0.75, -0.25, 0.5, 0.25, -0.5, -1.0, 0.25, 0.25, -0.25, 0.5, 0.5, -0.75, 0.5, 0.75, 0.0, -0.5, ]);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_pass_encoder3021.endOcclusionQuery()
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3020.popDebugGroup();
    query303.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3020.setStencilReference(1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer005.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
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
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0041.popDebugGroup();
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group301);
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    render_pass_encoder0011.popDebugGroup();
    command_encoder001.popDebugGroup()
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3021.setPipeline(render_pipeline300);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.setVertexBuffer(0, buffer005);
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
        layout: compute_pipeline007.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group006);
    render_pass_encoder3031.endOcclusionQuery()
    render_pass_encoder3021.endOcclusionQuery()
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

    render_pass_encoder0010.setBindGroup(0, bind_group008);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0010);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.setVertexBuffer(0, buffer009);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.setVertexBuffer(0, buffer0020);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group0011);
    render_pass_encoder3031.setPipeline(render_pipeline301);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3031.setBindGroup(0, bind_group303);
    render_pass_encoder0041.setVertexBuffer(0, buffer0019);
    render_pass_encoder0041.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3031.setVertexBuffer(0, buffer308);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
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

    render_pass_encoder3001.setBindGroup(0, bind_group304);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.setPipeline(render_pipeline301);
    device50.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer307, 0);
    const command_buffer401 = command_encoder401.finish();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0030, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group305);
    render_pass_encoder3021.setVertexBuffer(0, buffer305);
    render_pass_encoder0041.end();
    compute_pass_encoder0010.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder3021.draw(3);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0032, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder0011.setVertexBuffer(0, buffer0010);
    render_pass_encoder3001.setVertexBuffer(0, buffer307);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    render_pass_encoder3030.endOcclusionQuery()
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder3020.setVertexBuffer(0, buffer303);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0012);
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0013);
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer303);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3000.endOcclusionQuery()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    command_encoder300.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.end();
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group306);
    render_pass_encoder3030.setVertexBuffer(0, buffer306);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0014);
    render_pass_encoder3020.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder3030.end();
    compute_pass_encoder0040.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer3015);
    render_pass_encoder3000.end();
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer3015, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0011.end();
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder3021.end();
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0015);
    render_pass_encoder3010.end();
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0040, "uint16");
    const command_buffer001 = command_encoder001.finish();
    command_encoder302.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    compute_pass_encoder0040.popDebugGroup()
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0017);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder3021.drawIndirect(buffer3015, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0048, 0);
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3012, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder3021.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3031.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0041.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3031.drawIndirect(buffer300, 0);
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder0011.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    device50.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3015, 0);
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
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0019);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0053, "uint16");
    compute_pass_encoder0011.end();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
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
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0020);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3010.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.end();
    device50.queue.submit([]);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3031.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0061, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3031.draw(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    device40.queue.submit([command_buffer402, ]);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
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
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder3010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3031.end();
    device00.queue.submit([command_buffer004, ]);
    device40.queue.submit([]);
    compute_pass_encoder0001.end();
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0066, 0);
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    render_pass_encoder3031.drawIndexed(3);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.popDebugGroup();
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
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    render_pass_encoder3001.endOcclusionQuery()
    device50.queue.submit([]);
    render_pass_encoder3001.end();
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3031.drawIndirect(buffer3013, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.draw(3);
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
    render_pass_encoder0041.setIndexBuffer(buffer0064, "uint16");
    compute_pass_encoder0010.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
    device50.queue.submit([]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
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
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    render_pass_encoder3030.drawIndexedIndirect(buffer3013, 0);
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0026);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndirect(buffer0037, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0076, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0076, 0);
    compute_pass_encoder4020.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
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
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder0041.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    device50.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0040.endOcclusionQuery()
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0028);
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0029);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3000.popDebugGroup();
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
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
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0030);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    device40.queue.submit([]);
    render_pass_encoder3031.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer306, 0);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
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
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0032);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0072, 0);
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0033);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer302, 0);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0034);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder3010.drawIndirect(buffer3011, 0);
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0084, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0093, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0075, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0094, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0094, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    compute_pass_encoder0020.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0095, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0095, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0096, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([]);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0035);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0070, 0);
    render_pass_encoder3010.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
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
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline007.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0036);
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer0086, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0094, 0);
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
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline007.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0037);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0062, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder3021.drawIndexed(3);
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
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0038);
    render_pass_encoder3031.drawIndirect(buffer303, 0);
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
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    render_pass_encoder3010.drawIndexed(3);
    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00107,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0039);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3031.drawIndirect(buffer308, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
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
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0040);
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndirect(buffer0082, 0);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndirect(buffer0094, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0041);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00113,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0042);
    render_pass_encoder3031.drawIndirect(buffer3015, 0);
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3031.drawIndirect(buffer307, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
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
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0043);
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3001.drawIndirect(buffer308, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
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
                    buffer: buffer00116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00117,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0044);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
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
                    buffer: buffer00118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00119,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0045);
    render_pass_encoder3031.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    compute_pass_encoder0001.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3012, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer00109, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer001, ]);
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3021.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    compute_pass_encoder0001.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00120, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00120, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3030.draw(3);
    render_pass_encoder3000.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00109, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer002, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00121, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00121, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder3021.drawIndirect(buffer3011, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device40.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0040.drawIndirect(buffer0096, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00122, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00122, 0);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder3021.drawIndirect(buffer304, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00123, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00123, 0);
    render_pass_encoder0030.end();
    render_pass_encoder3030.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3020.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00124, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder0030.drawIndirect(buffer00123, 0);
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
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline007.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0046);
    render_pass_encoder3010.end();
    compute_pass_encoder0001.end();
    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00128,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0047);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00106, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0071, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    render_pass_encoder3030.draw(3);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3000.end();
    render_pass_encoder0041.draw(3);
    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00130,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0048);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer00103, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.end();
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0095, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0051, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3020.drawIndirect(buffer307, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3030.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0095, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3031.drawIndexed(3);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0011.drawIndirect(buffer007, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder0010.end();
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00120, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0095, 0);
    render_pass_encoder3021.drawIndirect(buffer303, 0);
    render_pass_encoder0011.end();
    device40.queue.submit([]);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0041.drawIndirect(buffer00121, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00131, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00132, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00132, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3030.draw(3);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer00120, 0);
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
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0049);
    render_pass_encoder0030.setIndexBuffer(buffer0094, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0076, 0);
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
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0050);
    render_pass_encoder3001.end();
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0051);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0040.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer00122, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0091, 0);
    render_pass_encoder3020.popDebugGroup();
    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00140,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0052);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3015, 0);
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
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0053);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00105, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00143, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00143, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0041.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00145,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0054);
    render_pass_encoder0011.drawIndirect(buffer00105, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer0095, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00131, 0);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0030.drawIndirect(buffer0085, 0);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00147,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0055);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder3030.draw(3);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00148, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00148, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00149, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00149, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
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
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder0010.end();
    compute_pass_encoder0020.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3015, 0);
    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00152,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0056);
    render_pass_encoder0040.drawIndirect(buffer00136, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0080, "uint16");
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0011.draw(3);
    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00154,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0057);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0011.drawIndirect(buffer00124, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00155, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00155, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndirect(buffer00135, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00123, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer00130, 0);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0040.popDebugGroup();
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
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder3030.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00157, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00149, 0);
    render_pass_encoder0040.drawIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndirect(buffer00133, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3021.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder3021.drawIndirect(buffer304, 0);
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3031.drawIndirect(buffer300, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00158, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00158, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3021.drawIndirect(buffer305, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00152, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00155, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder3001.end();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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
    render_pass_encoder3021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0030.end();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00131, 0);
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0059);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3001.drawIndirect(buffer3012, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndirect(buffer0071, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00141, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00122, 0);
    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00164,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0060);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer00120, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder3030.drawIndirect(buffer3011, 0);
    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00166,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0061);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0070, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00167, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00167, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0041.drawIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00124, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0062);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndirect(buffer00120, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder0041.popDebugGroup();
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0063);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder3000.draw(3);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0064);
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.end();
    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00174,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00175,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0065);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00135, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer302, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3001.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00168, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00105, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00176, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00176, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00177, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00177, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00125, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3021.setIndexBuffer(buffer308, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00158, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00178, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00178, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00180,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0066);
    render_pass_encoder0011.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder3031.drawIndirect(buffer302, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0010.drawIndirect(buffer00167, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0040.drawIndirect(buffer00120, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndirect(buffer0091, 0);
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0030.drawIndirect(buffer00142, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00122, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0040.drawIndirect(buffer00148, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00181, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00182, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00182, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3031.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer00178, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00183,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00184,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0067);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00131, 0);
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00132, 0);
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00162, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer3013, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3011, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00185, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00185, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00174, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00155, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00186, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00186, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder0011.drawIndirect(buffer00124, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3014, "uint16");
    compute_pass_encoder0011.end();
    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00188,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0068);
    render_pass_encoder0010.drawIndirect(buffer00110, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00178, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer00109, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer00185, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer00137, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3021.draw(3);
    device50.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00118, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder3001.drawIndirect(buffer302, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder3001.drawIndirect(buffer3014, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    compute_pass_encoder0001.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00189, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00189, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0041.setIndexBuffer(buffer00188, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3031.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00190, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00190, 0);
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00191,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00192,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0069);
    render_pass_encoder0041.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    device50.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0010.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00167, 0);
    compute_pass_encoder0010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00190, 0);
    device30.queue.submit([]);
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder3010.endOcclusionQuery()
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00193, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00193, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.drawIndirect(buffer0071, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder3010.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder3031.drawIndexed(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00121, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00195,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0070);
    render_pass_encoder3031.drawIndirect(buffer302, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.drawIndirect(buffer00157, 0);
    render_pass_encoder0020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00169, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00196, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00196, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3030.endOcclusionQuery()
    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00197,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00198,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0071);
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0076, "uint16");
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer307, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00104, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3021.drawIndirect(buffer305, 0);
    render_pass_encoder0040.drawIndirect(buffer00190, 0);
    render_pass_encoder0041.drawIndirect(buffer00158, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3001.draw(3);
    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00199,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00200,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0072);
    render_pass_encoder3021.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00201, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00201, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder3020.drawIndirect(buffer3011, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00178, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0070, 0);
    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00203,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0073);
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0085, 0);
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndirect(buffer00157, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00172, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0010.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0020.drawIndirect(buffer0087, 0);
    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00205,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0074);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00207,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0075);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00162, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0082, 0);
    render_pass_encoder0041.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.end();
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3011, 0);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00201, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder3021.drawIndirect(buffer307, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00208, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00208, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00209, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00209, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00210, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00210, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3031.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00211,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00212,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0076);
    render_pass_encoder3020.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer00148, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder0020.setIndexBuffer(buffer00144, "uint16");
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00213,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00214,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0077);
    render_pass_encoder0040.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0040.drawIndirect(buffer00167, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00176, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0082, "uint16");
    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00215,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00216,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0078);
    render_pass_encoder0041.endOcclusionQuery()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00217, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00217, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00176, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00209, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder3001.draw(3);
    device30.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00132, 0);
    const buffer00218 = device00.createBuffer({
        label: "buffer00218",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00219 = device00.createBuffer({
        label: "buffer00219",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00218,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00219,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0079);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00200, 0);
    const buffer00220 = device00.createBuffer({
        label: "buffer00220",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00221 = device00.createBuffer({
        label: "buffer00221",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00220,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00221,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0080);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0020.drawIndirect(buffer00180, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00181, 0);
    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00222,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00223,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0081);
    render_pass_encoder0011.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder4020.popDebugGroup()
    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00224,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00225,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0082);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3000.draw(3);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00226, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00226, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndirect(buffer00121, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00199, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00186, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0010.drawIndirect(buffer00155, 0);
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer00121, 0);
    const buffer00227 = device00.createBuffer({
        label: "buffer00227",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00228 = device00.createBuffer({
        label: "buffer00228",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00227,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00228,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0083);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder0010.drawIndirect(buffer00196, 0);
    render_pass_encoder0020.end();
    device50.queue.submit([]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00229, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00229, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00230, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00230, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder3000.draw(3);
    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00231,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00232,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0084);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00233,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00234,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0085);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.end();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0041.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00197, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    device30.queue.submit([command_buffer300, ]);
    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00235,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00236,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0086);
    render_pass_encoder3031.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00216, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0094, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder3020.drawIndirect(buffer3010, 0);
    render_pass_encoder0040.drawIndirect(buffer00150, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer00148, 0);
    compute_pass_encoder0000.end();
    const buffer00237 = device00.createBuffer({
        label: "buffer00237",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00238 = device00.createBuffer({
        label: "buffer00238",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00237,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00238,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0087);
    const buffer00239 = device00.createBuffer({
        label: "buffer00239",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00240 = device00.createBuffer({
        label: "buffer00240",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00239,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00240,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0088);
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    const buffer00241 = device00.createBuffer({
        label: "buffer00241",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00242 = device00.createBuffer({
        label: "buffer00242",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00241,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00242,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0089);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00243, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00243, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder3021.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00244,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00245,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0090);
    render_pass_encoder0010.setIndexBuffer(buffer00239, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndirect(buffer00210, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00196, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3001.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3031.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00246,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00247,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0091);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.drawIndirect(buffer00196, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00209, 0);
    render_pass_encoder0010.drawIndirect(buffer00177, 0);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3021.end();
    compute_pass_encoder0040.end();
    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00248,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00249,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0092);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer00121, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0011.drawIndirect(buffer00182, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer00140, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0011.drawIndirect(buffer00185, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0040.drawIndirect(buffer00159, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3021.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00156, 0);
    render_pass_encoder3021.drawIndirect(buffer3014, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00250, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00250, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer00185, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0040.drawIndirect(buffer0070, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00248, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer00189, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00224, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder3000.end();
    compute_pass_encoder0011.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0030.end();
    render_pass_encoder3010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00121, 0);
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00120, 0);
    const buffer00251 = device00.createBuffer({
        label: "buffer00251",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00252 = device00.createBuffer({
        label: "buffer00252",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00251,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00252,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0093);
    render_pass_encoder3000.end();
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00134, "uint16");
    device40.queue.submit([]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00120, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0041.popDebugGroup();
    const buffer00253 = device00.createBuffer({
        label: "buffer00253",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00254 = device00.createBuffer({
        label: "buffer00254",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00253,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00254,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0094);
    render_pass_encoder0030.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0041.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00255, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00255, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00177, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3000.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0011.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder0011.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00111, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00256, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00256, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00149, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00250, 0);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0062, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00257, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00257, 0);
    render_pass_encoder0040.drawIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00236, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00144, 0);
    device50.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00258,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00259,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0095);
    render_pass_encoder0020.drawIndexedIndirect(buffer00145, 0);
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder3031.popDebugGroup();
    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00260,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00261,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0096);
    render_pass_encoder0040.drawIndirect(buffer00231, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00211, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00257, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00262, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00262, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0030.drawIndirect(buffer00250, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00186, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00201, 0);
    const buffer00263 = device00.createBuffer({
        label: "buffer00263",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00264 = device00.createBuffer({
        label: "buffer00264",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0097 = device00.createBindGroup({
        label: "bind_group0097",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00263,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00264,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0097);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer00243, 0);
    render_pass_encoder0011.drawIndirect(buffer00229, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0040.drawIndirect(buffer00150, 0);
    render_pass_encoder0040.drawIndirect(buffer00231, 0);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00265, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00265, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0020.drawIndirect(buffer00112, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00266, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00266, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0095, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00267 = device00.createBuffer({
        label: "buffer00267",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00267, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00267, 0);
    render_pass_encoder0041.drawIndirect(buffer00177, 0);
    render_pass_encoder0020.drawIndirect(buffer00190, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0011.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer00250, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0095, 0);
    render_pass_encoder3031.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00160, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndirect(buffer00176, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0020.drawIndirect(buffer00177, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00230, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00265, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer00268 = device00.createBuffer({
        label: "buffer00268",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00269 = device00.createBuffer({
        label: "buffer00269",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0098 = device00.createBindGroup({
        label: "bind_group0098",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00268,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00269,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0098);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00151, "uint16");
    render_pass_encoder3020.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder3031.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0020.drawIndirect(buffer00208, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.end();
    device50.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00181, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder3001.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    const buffer00270 = device00.createBuffer({
        label: "buffer00270",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00271 = device00.createBuffer({
        label: "buffer00271",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0099 = device00.createBindGroup({
        label: "bind_group0099",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00270,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00271,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0099);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00272 = device00.createBuffer({
        label: "buffer00272",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00272, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00272, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00103, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    const buffer00273 = device00.createBuffer({
        label: "buffer00273",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00274 = device00.createBuffer({
        label: "buffer00274",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00100 = device00.createBindGroup({
        label: "bind_group00100",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00273,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00274,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00100);
    render_pass_encoder0041.setIndexBuffer(buffer00231, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00177, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00217, 0);
    const buffer00275 = device00.createBuffer({
        label: "buffer00275",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00276 = device00.createBuffer({
        label: "buffer00276",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00101 = device00.createBindGroup({
        label: "bind_group00101",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00275,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00276,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00101);
    render_pass_encoder0020.drawIndexedIndirect(buffer00230, 0);
    const buffer00277 = device00.createBuffer({
        label: "buffer00277",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00278 = device00.createBuffer({
        label: "buffer00278",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00102 = device00.createBindGroup({
        label: "bind_group00102",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00277,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00278,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00102);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00208, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00279 = device00.createBuffer({
        label: "buffer00279",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00279, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00279, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00267, 0);
    const buffer00280 = device00.createBuffer({
        label: "buffer00280",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00281 = device00.createBuffer({
        label: "buffer00281",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00103 = device00.createBindGroup({
        label: "bind_group00103",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00280,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00281,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00103);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00282 = device00.createBuffer({
        label: "buffer00282",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00282, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00282, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0041.drawIndirect(buffer00267, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00234, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder3031.drawIndirect(buffer308, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00236, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00265, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00283 = device00.createBuffer({
        label: "buffer00283",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00283, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00283, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00284 = device00.createBuffer({
        label: "buffer00284",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00284, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00284, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00181, 0);
    const buffer00285 = device00.createBuffer({
        label: "buffer00285",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00286 = device00.createBuffer({
        label: "buffer00286",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00104 = device00.createBindGroup({
        label: "bind_group00104",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00285,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00286,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00104);
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00208, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00230, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder3031.drawIndirect(buffer307, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00250, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00287 = device00.createBuffer({
        label: "buffer00287",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00287, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00287, 0);
    render_pass_encoder0020.drawIndirect(buffer00156, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00256, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0030.drawIndirect(buffer00197, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.drawIndirect(buffer00100, 0);
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00190, 0);
    const buffer00288 = device00.createBuffer({
        label: "buffer00288",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00289 = device00.createBuffer({
        label: "buffer00289",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00105 = device00.createBindGroup({
        label: "bind_group00105",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00288,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00289,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00105);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder3031.drawIndexed(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexedIndirect(buffer308, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00290 = device00.createBuffer({
        label: "buffer00290",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00290, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00290, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00169, 0);
    const buffer00291 = device00.createBuffer({
        label: "buffer00291",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00292 = device00.createBuffer({
        label: "buffer00292",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00106 = device00.createBindGroup({
        label: "bind_group00106",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00291,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00292,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00106);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00193, 0);
    render_pass_encoder0010.drawIndirect(buffer0096, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00262, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00151, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00293 = device00.createBuffer({
        label: "buffer00293",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00293, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00293, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder3010.draw(3);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00158, 0);
    render_pass_encoder0041.drawIndirect(buffer00157, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0020.drawIndirect(buffer00189, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer0071, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder3001.drawIndirect(buffer305, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00200, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00282, 0);
    compute_pass_encoder0020.end();
    const buffer00294 = device00.createBuffer({
        label: "buffer00294",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00295 = device00.createBuffer({
        label: "buffer00295",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00107 = device00.createBindGroup({
        label: "bind_group00107",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00294,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00295,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00107);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3010, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00198, "uint16");
    const buffer00296 = device00.createBuffer({
        label: "buffer00296",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00297 = device00.createBuffer({
        label: "buffer00297",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00108 = device00.createBindGroup({
        label: "bind_group00108",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00296,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00297,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00108);
    render_pass_encoder0040.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    render_pass_encoder3001.popDebugGroup();
    device30.queue.submit([]);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder3021.drawIndirect(buffer302, 0);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00172, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer00188, 0);
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    const buffer00298 = device00.createBuffer({
        label: "buffer00298",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00299 = device00.createBuffer({
        label: "buffer00299",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00109 = device00.createBindGroup({
        label: "bind_group00109",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00298,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00299,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00109);
    render_pass_encoder0030.drawIndexedIndirect(buffer00272, 0);
    const buffer00300 = device00.createBuffer({
        label: "buffer00300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00301 = device00.createBuffer({
        label: "buffer00301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00110 = device00.createBindGroup({
        label: "bind_group00110",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00301,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00110);
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00167, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3021.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00187, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00246, 0);
    render_pass_encoder0020.drawIndirect(buffer00182, 0);
    render_pass_encoder0041.drawIndirect(buffer00290, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00124, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00265, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    compute_pass_encoder0010.end();
    const buffer00302 = device00.createBuffer({
        label: "buffer00302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00303 = device00.createBuffer({
        label: "buffer00303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00111 = device00.createBindGroup({
        label: "bind_group00111",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00303,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00111);
    render_pass_encoder0011.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer302, 0);
    const buffer00304 = device00.createBuffer({
        label: "buffer00304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00305 = device00.createBuffer({
        label: "buffer00305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00112 = device00.createBindGroup({
        label: "bind_group00112",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00305,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00112);
    render_pass_encoder0041.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00267, 0);
    render_pass_encoder0011.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder0030.drawIndirect(buffer00178, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00274, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00196, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0011.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer00189, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00156, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder3010.popDebugGroup();
    const buffer00306 = device00.createBuffer({
        label: "buffer00306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00307 = device00.createBuffer({
        label: "buffer00307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00113 = device00.createBindGroup({
        label: "bind_group00113",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00307,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00113);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3021.drawIndexed(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00239, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00283, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00159, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00153, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3000.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00277, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0041.drawIndirect(buffer00211, 0);
    render_pass_encoder0010.drawIndirect(buffer00112, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00256, "uint16");
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00308 = device00.createBuffer({
        label: "buffer00308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00308, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00308, 0);
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00272, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00255, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00120, 0);
    const buffer00309 = device00.createBuffer({
        label: "buffer00309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00310 = device00.createBuffer({
        label: "buffer00310",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00114 = device00.createBindGroup({
        label: "bind_group00114",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00310,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00114);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00226, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    render_pass_encoder3021.drawIndirect(buffer3010, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    const buffer00311 = device00.createBuffer({
        label: "buffer00311",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00312 = device00.createBuffer({
        label: "buffer00312",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00115 = device00.createBindGroup({
        label: "bind_group00115",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00311,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00312,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00115);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00313 = device00.createBuffer({
        label: "buffer00313",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00313, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00313, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndirect(buffer00185, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00261, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    device00.queue.submit([]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0040.drawIndirect(buffer00282, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3001.end();
    render_pass_encoder3000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder3031.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer00210, 0);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00299, 0);
    render_pass_encoder3031.drawIndirect(buffer302, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00132, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00314 = device00.createBuffer({
        label: "buffer00314",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00314, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00314, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0040.setIndexBuffer(buffer00185, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndirect(buffer00214, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer00245, 0);
    const buffer00315 = device00.createBuffer({
        label: "buffer00315",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00316 = device00.createBuffer({
        label: "buffer00316",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00116 = device00.createBindGroup({
        label: "bind_group00116",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00315,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00316,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00116);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    const buffer00317 = device00.createBuffer({
        label: "buffer00317",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00318 = device00.createBuffer({
        label: "buffer00318",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00117 = device00.createBindGroup({
        label: "bind_group00117",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00317,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00318,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00117);
    compute_pass_encoder4000.popDebugGroup()
    const buffer00319 = device00.createBuffer({
        label: "buffer00319",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00320 = device00.createBuffer({
        label: "buffer00320",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00118 = device00.createBindGroup({
        label: "bind_group00118",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00319,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00320,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00118);
    render_pass_encoder0040.drawIndirect(buffer00293, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00266, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0040, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00284, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder0001.popDebugGroup()
    const buffer00321 = device00.createBuffer({
        label: "buffer00321",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00322 = device00.createBuffer({
        label: "buffer00322",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00119 = device00.createBindGroup({
        label: "bind_group00119",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00321,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00322,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00119);
    render_pass_encoder3020.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.end();
    const buffer00323 = device00.createBuffer({
        label: "buffer00323",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00324 = device00.createBuffer({
        label: "buffer00324",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00120 = device00.createBindGroup({
        label: "bind_group00120",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00323,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00324,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00120);
    render_pass_encoder3021.drawIndirect(buffer3012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00132, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder0030.drawIndirect(buffer0095, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3020.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00158, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, ]);
    render_pass_encoder0040.drawIndirect(buffer0071, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00186, 0);
    render_pass_encoder0030.drawIndirect(buffer00250, 0);
    compute_pass_encoder0011.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00325 = device00.createBuffer({
        label: "buffer00325",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00325, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00325, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    const buffer00326 = device00.createBuffer({
        label: "buffer00326",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00327 = device00.createBuffer({
        label: "buffer00327",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00121 = device00.createBindGroup({
        label: "bind_group00121",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00326,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00327,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00121);
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00201, 0);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00287, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00311, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00290, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0040.drawIndirect(buffer00290, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00304, 0);
    const buffer00328 = device00.createBuffer({
        label: "buffer00328",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00329 = device00.createBuffer({
        label: "buffer00329",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00122 = device00.createBindGroup({
        label: "bind_group00122",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00328,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00329,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00122);
    render_pass_encoder0030.drawIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00177, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00330 = device00.createBuffer({
        label: "buffer00330",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00330, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00330, 0);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0010.end();
    render_pass_encoder0041.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00209, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00120, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00161, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0040.drawIndirect(buffer00307, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0011.drawIndirect(buffer00308, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3021.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00293, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0010.drawIndirect(buffer00215, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00208, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3030.drawIndirect(buffer3014, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    const buffer00331 = device00.createBuffer({
        label: "buffer00331",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00332 = device00.createBuffer({
        label: "buffer00332",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00123 = device00.createBindGroup({
        label: "bind_group00123",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00331,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00332,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00123);
    render_pass_encoder0030.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00222, 0);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer302, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer00267, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00193, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00312, 0);
    render_pass_encoder0030.drawIndirect(buffer00279, 0);
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00177, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3031.drawIndexedIndirect(buffer3012, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3010, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00210, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3031.drawIndirect(buffer3011, 0);
    render_pass_encoder0020.drawIndirect(buffer00308, 0);
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00190, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder0011.setIndexBuffer(buffer00324, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00333 = device00.createBuffer({
        label: "buffer00333",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00333, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00333, 0);
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3015, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    device50.queue.submit([]);
    render_pass_encoder0030.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0011.drawIndirect(buffer00223, 0);
    render_pass_encoder3031.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00334 = device00.createBuffer({
        label: "buffer00334",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00334, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00334, 0);
    render_pass_encoder0011.drawIndirect(buffer00257, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00243, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder0011.drawIndirect(buffer00217, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder3021.drawIndexed(3);
    const buffer00335 = device00.createBuffer({
        label: "buffer00335",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00336 = device00.createBuffer({
        label: "buffer00336",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00124 = device00.createBindGroup({
        label: "bind_group00124",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00335,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00336,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00124);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer00296, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00318, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder0001.popDebugGroup()
    const buffer00337 = device00.createBuffer({
        label: "buffer00337",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00338 = device00.createBuffer({
        label: "buffer00338",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00125 = device00.createBindGroup({
        label: "bind_group00125",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00337,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00338,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00125);
    render_pass_encoder0030.drawIndirect(buffer00295, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00177, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00339 = device00.createBuffer({
        label: "buffer00339",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00339, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00339, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.end();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00265, 0);
    const buffer00340 = device00.createBuffer({
        label: "buffer00340",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00341 = device00.createBuffer({
        label: "buffer00341",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00126 = device00.createBindGroup({
        label: "bind_group00126",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00340,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00341,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00126);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00254, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer00285, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00265, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0041.drawIndirect(buffer00110, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3021.drawIndirect(buffer307, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00342 = device00.createBuffer({
        label: "buffer00342",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00342, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00342, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndirect(buffer00325, 0);
    render_pass_encoder0020.drawIndirect(buffer0087, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00340, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0096, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00343 = device00.createBuffer({
        label: "buffer00343",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00343, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00343, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00273, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00178, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder0010.drawIndirect(buffer00267, 0);
    render_pass_encoder0010.drawIndirect(buffer00123, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00149, 0);
    render_pass_encoder0030.drawIndirect(buffer00262, 0);
    render_pass_encoder0030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00230, 0);
    device40.queue.submit([command_buffer400, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00344 = device00.createBuffer({
        label: "buffer00344",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00344, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00344, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder0041.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00345 = device00.createBuffer({
        label: "buffer00345",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00345, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00345, 0);
    const buffer00346 = device00.createBuffer({
        label: "buffer00346",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00347 = device00.createBuffer({
        label: "buffer00347",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00127 = device00.createBindGroup({
        label: "bind_group00127",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00346,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00347,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00127);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00290, 0);
    render_pass_encoder3021.drawIndirect(buffer306, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3031.drawIndirect(buffer307, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00148, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00265, 0);
    const buffer00348 = device00.createBuffer({
        label: "buffer00348",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00349 = device00.createBuffer({
        label: "buffer00349",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00128 = device00.createBindGroup({
        label: "bind_group00128",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00348,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00349,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00128);
    render_pass_encoder0020.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0011.drawIndirect(buffer00177, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0041.drawIndirect(buffer00339, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    const buffer00350 = device00.createBuffer({
        label: "buffer00350",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00351 = device00.createBuffer({
        label: "buffer00351",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00129 = device00.createBindGroup({
        label: "bind_group00129",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00350,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00351,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00129);
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00352 = device00.createBuffer({
        label: "buffer00352",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00352, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00352, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer00293, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0011.drawIndirect(buffer00157, 0);
    const buffer00353 = device00.createBuffer({
        label: "buffer00353",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00354 = device00.createBuffer({
        label: "buffer00354",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00130 = device00.createBindGroup({
        label: "bind_group00130",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00353,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00354,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00130);
    render_pass_encoder0041.drawIndirect(buffer00198, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3013, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndirect(buffer00319, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00293, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0011.drawIndirect(buffer00193, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder3020.draw(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0067, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00355 = device00.createBuffer({
        label: "buffer00355",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00355, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00355, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00229, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00356 = device00.createBuffer({
        label: "buffer00356",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00356, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00356, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder3031.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0041.drawIndirect(buffer00356, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00352, 0);
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00279, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0040.drawIndirect(buffer00143, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0030.drawIndirect(buffer00210, 0);
    render_pass_encoder0041.drawIndirect(buffer00284, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00282, 0);
    device40.queue.submit([command_buffer402, ]);
    const buffer00357 = device00.createBuffer({
        label: "buffer00357",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00358 = device00.createBuffer({
        label: "buffer00358",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00131 = device00.createBindGroup({
        label: "bind_group00131",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00357,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00358,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00131);
    render_pass_encoder0010.drawIndirect(buffer00272, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer00184, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00359 = device00.createBuffer({
        label: "buffer00359",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00359, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00359, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder0041.drawIndirect(buffer00176, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer00302, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00217, 0);
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00344, 0);
    render_pass_encoder0030.drawIndirect(buffer00355, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00201, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00352, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00360 = device00.createBuffer({
        label: "buffer00360",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00360, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00360, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00229, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.setIndexBuffer(buffer00152, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00283, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00294, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3010, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder0010.drawIndirect(buffer00261, 0);
    render_pass_encoder0020.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3030.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder3010.drawIndexed(3);
    device50.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00229, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00344, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndirect(buffer00267, 0);
    render_pass_encoder0011.drawIndirect(buffer00324, 0);
    const buffer00361 = device00.createBuffer({
        label: "buffer00361",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00362 = device00.createBuffer({
        label: "buffer00362",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00132 = device00.createBindGroup({
        label: "bind_group00132",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00361,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00362,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00132);
    render_pass_encoder0041.drawIndirect(buffer00158, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer00313, 0);
    render_pass_encoder0040.drawIndirect(buffer00360, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00208, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00334, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00249, "uint16");
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00217, 0);
    device50.queue.submit([]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00317, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00160, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00217, 0);
    render_pass_encoder3021.setIndexBuffer(buffer305, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00217, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    const buffer00363 = device00.createBuffer({
        label: "buffer00363",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00364 = device00.createBuffer({
        label: "buffer00364",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00133 = device00.createBindGroup({
        label: "bind_group00133",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00363,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00364,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00133);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00172, "uint16");
    const buffer00365 = device00.createBuffer({
        label: "buffer00365",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00366 = device00.createBuffer({
        label: "buffer00366",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00134 = device00.createBindGroup({
        label: "bind_group00134",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00365,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00366,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00134);
    render_pass_encoder0030.setIndexBuffer(buffer0054, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0030.end();
    render_pass_encoder3001.draw(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00251, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer00313, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00205, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer00337, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    compute_pass_encoder0020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3001.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00366, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0040.drawIndirect(buffer00360, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00132, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00261, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00122, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer00364, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer00362, 0);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder3031.popDebugGroup();
    const buffer00367 = device00.createBuffer({
        label: "buffer00367",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00368 = device00.createBuffer({
        label: "buffer00368",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00135 = device00.createBindGroup({
        label: "bind_group00135",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00367,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00368,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00135);
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0020.drawIndirect(buffer00355, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00121, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00208, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00369 = device00.createBuffer({
        label: "buffer00369",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00369, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00369, 0);
    render_pass_encoder0041.drawIndirect(buffer00313, 0);
    render_pass_encoder0010.drawIndirect(buffer00334, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3010, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00149, "uint16");
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00271, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00370 = device00.createBuffer({
        label: "buffer00370",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00370, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00370, 0);
    render_pass_encoder0020.drawIndirect(buffer00287, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00190, 0);
    device40.queue.submit([]);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3031.end();
    render_pass_encoder0010.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer00334, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder0041.drawIndirect(buffer00172, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00348, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00341, 0);
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00193, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer00233, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3001.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00371 = device00.createBuffer({
        label: "buffer00371",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00371, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00371, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer00185, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00241, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndirect(buffer00209, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00141, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00370, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder3010.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00372 = device00.createBuffer({
        label: "buffer00372",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00372, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00372, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0040.drawIndirect(buffer00190, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00373 = device00.createBuffer({
        label: "buffer00373",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00373, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00373, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00373, 0);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0040.drawIndirect(buffer00265, 0);
    render_pass_encoder0010.drawIndirect(buffer00283, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0011.drawIndirect(buffer00344, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndirect(buffer3015, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3015, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00374 = device00.createBuffer({
        label: "buffer00374",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00374, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00374, 0);
    const buffer00375 = device00.createBuffer({
        label: "buffer00375",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00376 = device00.createBuffer({
        label: "buffer00376",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00136 = device00.createBindGroup({
        label: "bind_group00136",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00375,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00376,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00136);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3031.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer00257, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer00330, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer00287, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00317, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder3000.drawIndirect(buffer306, 0);
    render_pass_encoder3031.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00359, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00344, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00343, 0);
    device00.queue.submit([command_buffer004, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndirect(buffer00266, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00313, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00181, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00377 = device00.createBuffer({
        label: "buffer00377",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00377, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00377, 0);
    render_pass_encoder0040.drawIndirect(buffer00182, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer3015, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00378 = device00.createBuffer({
        label: "buffer00378",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00378, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00378, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00157, "uint16");
    const buffer00379 = device00.createBuffer({
        label: "buffer00379",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00380 = device00.createBuffer({
        label: "buffer00380",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00137 = device00.createBindGroup({
        label: "bind_group00137",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00379,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00380,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00137);
    render_pass_encoder3010.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder3021.popDebugGroup();
    const buffer00381 = device00.createBuffer({
        label: "buffer00381",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00382 = device00.createBuffer({
        label: "buffer00382",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00138 = device00.createBindGroup({
        label: "bind_group00138",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00381,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00382,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00138);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00383 = device00.createBuffer({
        label: "buffer00383",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00383, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00383, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0020.drawIndirect(buffer00314, 0);
    render_pass_encoder0041.drawIndirect(buffer00267, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00150, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3031.endOcclusionQuery()
    compute_pass_encoder0010.end();
    render_pass_encoder3021.end();
    render_pass_encoder3021.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00185, 0);
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    render_pass_encoder0040.drawIndirect(buffer0094, 0);
    const buffer00384 = device00.createBuffer({
        label: "buffer00384",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00385 = device00.createBuffer({
        label: "buffer00385",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00139 = device00.createBindGroup({
        label: "bind_group00139",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00384,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00385,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00139);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    const buffer00386 = device00.createBuffer({
        label: "buffer00386",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00387 = device00.createBuffer({
        label: "buffer00387",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00140 = device00.createBindGroup({
        label: "bind_group00140",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00386,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00387,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00140);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00249, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder0010.drawIndirect(buffer00189, 0);
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00360, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00388 = device00.createBuffer({
        label: "buffer00388",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00388, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00388, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00389 = device00.createBuffer({
        label: "buffer00389",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00389, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00389, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00383, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00243, 0);
    render_pass_encoder0041.drawIndirect(buffer00178, 0);
    render_pass_encoder0010.drawIndirect(buffer00186, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00374, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3015, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00160, "uint16");
    const buffer00390 = device00.createBuffer({
        label: "buffer00390",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00391 = device00.createBuffer({
        label: "buffer00391",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00141 = device00.createBindGroup({
        label: "bind_group00141",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00390,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00391,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00141);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00192, "uint16");
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder0011.drawIndirect(buffer00133, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3021.drawIndirect(buffer3011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer00368, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00392 = device00.createBuffer({
        label: "buffer00392",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00392, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00392, 0);
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    render_pass_encoder0011.drawIndirect(buffer00344, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndirect(buffer00314, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00267, 0);
    render_pass_encoder0030.drawIndirect(buffer00208, 0);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00334, 0);
    render_pass_encoder0041.drawIndirect(buffer00345, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00287, 0);
    render_pass_encoder0011.drawIndirect(buffer00370, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer00383, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3031.end();
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00219, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndirect(buffer00375, 0);
    render_pass_encoder0020.end();
    const buffer00393 = device00.createBuffer({
        label: "buffer00393",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00394 = device00.createBuffer({
        label: "buffer00394",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00142 = device00.createBindGroup({
        label: "bind_group00142",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00393,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00394,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00142);
    render_pass_encoder0041.drawIndirect(buffer00371, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00267, 0);
    render_pass_encoder3000.popDebugGroup();
    const buffer00395 = device00.createBuffer({
        label: "buffer00395",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00396 = device00.createBuffer({
        label: "buffer00396",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00143 = device00.createBindGroup({
        label: "bind_group00143",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00395,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00396,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00143);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndirect(buffer00266, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00208, 0);
    device50.queue.submit([]);
    render_pass_encoder3021.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0095, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00389, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00179, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder0020.drawIndirect(buffer00362, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    device40.queue.submit([]);
    compute_pass_encoder0001.end();
    render_pass_encoder3010.drawIndirect(buffer3013, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00397 = device00.createBuffer({
        label: "buffer00397",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00397, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00397, 0);
    render_pass_encoder0041.drawIndirect(buffer00209, 0);
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00398 = device00.createBuffer({
        label: "buffer00398",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00398, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00398, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer00392, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0030.end();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00399 = device00.createBuffer({
        label: "buffer00399",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00399, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00399, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00375, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer00330, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00155, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00400 = device00.createBuffer({
        label: "buffer00400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00400, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00400, 0);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00313, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00378, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00401 = device00.createBuffer({
        label: "buffer00401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00401, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00401, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndirect(buffer00313, 0);
    const buffer00402 = device00.createBuffer({
        label: "buffer00402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00403 = device00.createBuffer({
        label: "buffer00403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00144 = device00.createBindGroup({
        label: "bind_group00144",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00403,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00144);
    render_pass_encoder0011.drawIndirect(buffer00150, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00228, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00217, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00102, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00360, 0);
    render_pass_encoder0020.drawIndirect(buffer00217, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    device40.queue.submit([]);
    render_pass_encoder3001.drawIndirect(buffer3010, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0041.drawIndirect(buffer00333, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00346, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00374, 0);
    const buffer00404 = device00.createBuffer({
        label: "buffer00404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00405 = device00.createBuffer({
        label: "buffer00405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00145 = device00.createBindGroup({
        label: "bind_group00145",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00405,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00145);
    render_pass_encoder0020.drawIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndirect(buffer00168, 0);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([]);
    render_pass_encoder0040.end();
    compute_pass_encoder0040.end();
    compute_pass_encoder0011.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00343, 0);
    render_pass_encoder0041.drawIndirect(buffer00177, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3031.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0030.drawIndirect(buffer00202, 0);
    render_pass_encoder3000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00406 = device00.createBuffer({
        label: "buffer00406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00406, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00406, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0011.drawIndirect(buffer00330, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00190, "uint16");
    const buffer00407 = device00.createBuffer({
        label: "buffer00407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00408 = device00.createBuffer({
        label: "buffer00408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00146 = device00.createBindGroup({
        label: "bind_group00146",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00408,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00146);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer00345, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00226, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer00267, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0010.drawIndirect(buffer00248, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3021.endOcclusionQuery()
    render_pass_encoder0020.setIndexBuffer(buffer00281, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3013, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer00284, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder0030.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00409 = device00.createBuffer({
        label: "buffer00409",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00409, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00409, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0001.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0041.drawIndirect(buffer00179, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0041.drawIndirect(buffer00241, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0040.drawIndirect(buffer00195, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00148, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    const buffer00410 = device00.createBuffer({
        label: "buffer00410",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00411 = device00.createBuffer({
        label: "buffer00411",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00147 = device00.createBindGroup({
        label: "bind_group00147",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00410,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00411,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00147);
    render_pass_encoder0011.drawIndirect(buffer00230, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00190, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    render_pass_encoder0010.drawIndirect(buffer00188, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00339, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0030.drawIndirect(buffer0095, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00398, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00379, 0);
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    render_pass_encoder3020.drawIndirect(buffer3013, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00120, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    const buffer00412 = device00.createBuffer({
        label: "buffer00412",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00413 = device00.createBuffer({
        label: "buffer00413",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00148 = device00.createBindGroup({
        label: "bind_group00148",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00412,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00413,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00148);
    render_pass_encoder0011.drawIndirect(buffer00111, 0);
    render_pass_encoder0020.drawIndirect(buffer00308, 0);
    render_pass_encoder0040.drawIndirect(buffer00140, 0);
    render_pass_encoder0010.drawIndirect(buffer00308, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00241, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer00414 = device00.createBuffer({
        label: "buffer00414",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00415 = device00.createBuffer({
        label: "buffer00415",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00149 = device00.createBindGroup({
        label: "bind_group00149",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00414,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00415,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00149);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3014, "uint16");
    device50.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0020.drawIndirect(buffer00149, 0);
    render_pass_encoder3021.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00370, 0);
    render_pass_encoder0041.drawIndirect(buffer00308, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00416 = device00.createBuffer({
        label: "buffer00416",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00416, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00416, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00417 = device00.createBuffer({
        label: "buffer00417",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00417, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00417, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00247, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer00114, 0);
    render_pass_encoder0040.drawIndirect(buffer00333, 0);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00409, 0);
    render_pass_encoder0030.drawIndirect(buffer00180, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00267, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00401, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3030.end();
    const buffer00418 = device00.createBuffer({
        label: "buffer00418",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00419 = device00.createBuffer({
        label: "buffer00419",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00150 = device00.createBindGroup({
        label: "bind_group00150",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00418,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00419,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00150);
    render_pass_encoder0030.drawIndirect(buffer00149, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00162, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder0041.drawIndirect(buffer00416, 0);
    render_pass_encoder0011.drawIndirect(buffer00266, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00417, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00248, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00394, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder3021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    const buffer00420 = device00.createBuffer({
        label: "buffer00420",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00421 = device00.createBuffer({
        label: "buffer00421",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00151 = device00.createBindGroup({
        label: "bind_group00151",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00420,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00421,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00151);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer00286, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00150, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00247, "uint16");
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00301, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00422 = device00.createBuffer({
        label: "buffer00422",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00422, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00422, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00334, 0);
    render_pass_encoder0011.drawIndirect(buffer00120, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder3010.drawIndexed(3);
    const buffer00423 = device00.createBuffer({
        label: "buffer00423",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00424 = device00.createBuffer({
        label: "buffer00424",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00152 = device00.createBindGroup({
        label: "bind_group00152",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00423,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00424,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00152);
    render_pass_encoder0041.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00372, 0);
    render_pass_encoder0011.drawIndirect(buffer00374, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00320, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00425 = device00.createBuffer({
        label: "buffer00425",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00425, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00425, 0);
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00372, 0);
    const buffer00426 = device00.createBuffer({
        label: "buffer00426",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00427 = device00.createBuffer({
        label: "buffer00427",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00153 = device00.createBindGroup({
        label: "bind_group00153",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00426,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00427,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00153);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00181, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer00413, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00393, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00333, 0);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.drawIndirect(buffer00360, 0);
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00416, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00256, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00360, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0040.drawIndirect(buffer00176, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00355, 0);
    render_pass_encoder0010.drawIndirect(buffer00189, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer00409, 0);
    render_pass_encoder0040.drawIndirect(buffer00257, 0);
    const buffer00428 = device00.createBuffer({
        label: "buffer00428",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00429 = device00.createBuffer({
        label: "buffer00429",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00154 = device00.createBindGroup({
        label: "bind_group00154",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00428,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00429,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00154);
    render_pass_encoder0011.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer307, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00430 = device00.createBuffer({
        label: "buffer00430",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00430, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00430, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00409, 0);
    render_pass_encoder0040.drawIndirect(buffer00132, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.drawIndexed(3);
    const buffer00431 = device00.createBuffer({
        label: "buffer00431",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00432 = device00.createBuffer({
        label: "buffer00432",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00155 = device00.createBindGroup({
        label: "bind_group00155",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00431,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00432,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00155);
    render_pass_encoder0041.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0030.drawIndirect(buffer00205, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00344, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00433 = device00.createBuffer({
        label: "buffer00433",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00433, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00433, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00272, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer00355, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00290, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0011.popDebugGroup()
    const buffer00434 = device00.createBuffer({
        label: "buffer00434",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00435 = device00.createBuffer({
        label: "buffer00435",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00156 = device00.createBindGroup({
        label: "bind_group00156",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00434,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00435,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00156);
    render_pass_encoder0011.setIndexBuffer(buffer00431, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00355, 0);
    device30.queue.submit([command_buffer301, ]);
    const buffer00436 = device00.createBuffer({
        label: "buffer00436",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00437 = device00.createBuffer({
        label: "buffer00437",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00157 = device00.createBindGroup({
        label: "bind_group00157",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00436,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00437,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00157);
    render_pass_encoder0011.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3030.end();
    render_pass_encoder0041.drawIndirect(buffer00266, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0010.drawIndirect(buffer00190, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00303, 0);
    render_pass_encoder0010.drawIndirect(buffer00313, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0095, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00438 = device00.createBuffer({
        label: "buffer00438",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00438, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00438, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00439 = device00.createBuffer({
        label: "buffer00439",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00439, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00439, 0);
    const buffer00440 = device00.createBuffer({
        label: "buffer00440",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00441 = device00.createBuffer({
        label: "buffer00441",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00158 = device00.createBindGroup({
        label: "bind_group00158",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00440,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00441,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00158);
    render_pass_encoder0041.drawIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    render_pass_encoder0011.drawIndirect(buffer0095, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0030.drawIndirect(buffer00146, 0);
    render_pass_encoder0020.drawIndirect(buffer00149, 0);
    const buffer00442 = device00.createBuffer({
        label: "buffer00442",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00443 = device00.createBuffer({
        label: "buffer00443",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00159 = device00.createBindGroup({
        label: "bind_group00159",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00442,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00443,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00159);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer00323, 0);
    render_pass_encoder0011.drawIndirect(buffer00209, 0);
    render_pass_encoder0020.drawIndirect(buffer00323, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00444 = device00.createBuffer({
        label: "buffer00444",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00444, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00444, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer00171, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder3001.end();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00392, 0);
    const buffer00445 = device00.createBuffer({
        label: "buffer00445",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00446 = device00.createBuffer({
        label: "buffer00446",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00160 = device00.createBindGroup({
        label: "bind_group00160",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00445,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00446,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00160);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00294, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0030.drawIndirect(buffer00266, 0);
    render_pass_encoder0011.drawIndirect(buffer00356, 0);
    render_pass_encoder0010.drawIndirect(buffer00339, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer00284, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00371, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00439, 0);
    render_pass_encoder3021.end();
    const buffer00447 = device00.createBuffer({
        label: "buffer00447",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00448 = device00.createBuffer({
        label: "buffer00448",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00161 = device00.createBindGroup({
        label: "bind_group00161",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00447,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00448,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00161);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer00274, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00358, "uint16");
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder0020.drawIndirect(buffer00289, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0010.drawIndirect(buffer00406, 0);
    render_pass_encoder0011.drawIndirect(buffer00309, 0);
    render_pass_encoder0030.drawIndirect(buffer00267, 0);
    render_pass_encoder0020.drawIndirect(buffer00210, 0);
    render_pass_encoder0040.drawIndirect(buffer00401, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    const buffer00449 = device00.createBuffer({
        label: "buffer00449",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00450 = device00.createBuffer({
        label: "buffer00450",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00162 = device00.createBindGroup({
        label: "bind_group00162",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00449,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00450,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00162);
    render_pass_encoder3010.draw(3);
    const buffer00451 = device00.createBuffer({
        label: "buffer00451",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00452 = device00.createBuffer({
        label: "buffer00452",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00163 = device00.createBindGroup({
        label: "bind_group00163",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00451,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00452,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00163);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer00150, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndirect(buffer00182, 0);
    render_pass_encoder0020.end();
    const buffer00453 = device00.createBuffer({
        label: "buffer00453",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00454 = device00.createBuffer({
        label: "buffer00454",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00164 = device00.createBindGroup({
        label: "bind_group00164",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00453,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00454,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00164);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    const buffer00455 = device00.createBuffer({
        label: "buffer00455",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00456 = device00.createBuffer({
        label: "buffer00456",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00165 = device00.createBindGroup({
        label: "bind_group00165",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00455,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00456,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00165);
    render_pass_encoder0040.setIndexBuffer(buffer00188, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00383, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer00399, 0);
    const buffer00457 = device00.createBuffer({
        label: "buffer00457",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00458 = device00.createBuffer({
        label: "buffer00458",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00166 = device00.createBindGroup({
        label: "bind_group00166",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00457,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00458,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00166);
    render_pass_encoder0041.drawIndirect(buffer00433, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00333, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder0041.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0010.drawIndirect(buffer00397, 0);
    const buffer00459 = device00.createBuffer({
        label: "buffer00459",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00460 = device00.createBuffer({
        label: "buffer00460",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00167 = device00.createBindGroup({
        label: "bind_group00167",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00459,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00460,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00167);
    render_pass_encoder0010.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0020.drawIndirect(buffer00148, 0);
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00357, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00306, "uint16");
    compute_pass_encoder0001.end();
    render_pass_encoder3020.draw(3);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00461 = device00.createBuffer({
        label: "buffer00461",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00461, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00461, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0041.drawIndirect(buffer00219, 0);
    render_pass_encoder0010.drawIndirect(buffer00372, 0);
    const buffer00462 = device00.createBuffer({
        label: "buffer00462",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00463 = device00.createBuffer({
        label: "buffer00463",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00168 = device00.createBindGroup({
        label: "bind_group00168",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00462,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00463,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00168);
    compute_pass_encoder0010.popDebugGroup()
    const buffer00464 = device00.createBuffer({
        label: "buffer00464",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00465 = device00.createBuffer({
        label: "buffer00465",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00169 = device00.createBindGroup({
        label: "bind_group00169",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00464,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00465,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00169);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00461, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3031.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00158, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00190, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00312, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00321, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder0030.drawIndirect(buffer00461, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00459, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00261, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00229, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00437, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00406, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00466 = device00.createBuffer({
        label: "buffer00466",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00466, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00466, 0);
    render_pass_encoder0011.drawIndirect(buffer00145, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder0040.drawIndirect(buffer00313, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00282, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00461, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0041.drawIndirect(buffer00204, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3001.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00345, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00370, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0020.drawIndirect(buffer00207, 0);
    const buffer00467 = device00.createBuffer({
        label: "buffer00467",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00468 = device00.createBuffer({
        label: "buffer00468",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00170 = device00.createBindGroup({
        label: "bind_group00170",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00467,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00468,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00170);
    render_pass_encoder0030.drawIndirect(buffer00352, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00201, 0);
    const buffer00469 = device00.createBuffer({
        label: "buffer00469",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00470 = device00.createBuffer({
        label: "buffer00470",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00171 = device00.createBindGroup({
        label: "bind_group00171",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00469,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00470,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00171);
    render_pass_encoder0040.drawIndirect(buffer00400, 0);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00265, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0041.drawIndirect(buffer00112, 0);
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00177, "uint16");
    const buffer00471 = device00.createBuffer({
        label: "buffer00471",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00472 = device00.createBuffer({
        label: "buffer00472",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00172 = device00.createBindGroup({
        label: "bind_group00172",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00471,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00472,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00172);
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00473 = device00.createBuffer({
        label: "buffer00473",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00473, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00473, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3031.drawIndexed(3);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00356, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00155, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3021.drawIndexed(3);
    compute_pass_encoder0001.end();
    render_pass_encoder0030.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder3021.drawIndirect(buffer3013, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer00474 = device00.createBuffer({
        label: "buffer00474",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00475 = device00.createBuffer({
        label: "buffer00475",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00173 = device00.createBindGroup({
        label: "bind_group00173",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00474,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00475,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00173);
    render_pass_encoder0030.drawIndirect(buffer00230, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00398, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder0041.drawIndirect(buffer00325, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00124, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndirect(buffer00417, 0);
    render_pass_encoder0040.drawIndirect(buffer00226, 0);
    render_pass_encoder0040.drawIndirect(buffer00374, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00234, "uint16");
    device50.queue.submit([]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00308, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00461, 0);
    const buffer00476 = device00.createBuffer({
        label: "buffer00476",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00477 = device00.createBuffer({
        label: "buffer00477",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00174 = device00.createBindGroup({
        label: "bind_group00174",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00476,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00477,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00174);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder0041.popDebugGroup();
    const buffer00478 = device00.createBuffer({
        label: "buffer00478",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00479 = device00.createBuffer({
        label: "buffer00479",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00175 = device00.createBindGroup({
        label: "bind_group00175",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00478,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00479,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00175);
    render_pass_encoder0020.drawIndirect(buffer00278, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00348, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00147, 0);
    const buffer00480 = device00.createBuffer({
        label: "buffer00480",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00481 = device00.createBuffer({
        label: "buffer00481",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00176 = device00.createBindGroup({
        label: "bind_group00176",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00480,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00481,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00176);
    render_pass_encoder3010.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder0011.drawIndirect(buffer00223, 0);
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    device00.queue.submit([command_buffer004, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00482 = device00.createBuffer({
        label: "buffer00482",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00482, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00482, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00212, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00352, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0040.drawIndirect(buffer00319, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3000.end();
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0041.drawIndirect(buffer00398, 0);
    const buffer00483 = device00.createBuffer({
        label: "buffer00483",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00484 = device00.createBuffer({
        label: "buffer00484",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00177 = device00.createBindGroup({
        label: "bind_group00177",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00483,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00484,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00177);
    render_pass_encoder0020.drawIndirect(buffer00447, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00417, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0030.drawIndirect(buffer00185, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00108, "uint16");
    const buffer00485 = device00.createBuffer({
        label: "buffer00485",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00486 = device00.createBuffer({
        label: "buffer00486",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00178 = device00.createBindGroup({
        label: "bind_group00178",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00485,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00486,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00178);
    render_pass_encoder0020.drawIndirect(buffer00343, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00261, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00370, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0040.popDebugGroup()
    const buffer00487 = device00.createBuffer({
        label: "buffer00487",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00488 = device00.createBuffer({
        label: "buffer00488",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00179 = device00.createBindGroup({
        label: "bind_group00179",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00487,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00488,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00179);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00285, 0);
    render_pass_encoder0011.drawIndirect(buffer00229, 0);
    render_pass_encoder0011.drawIndirect(buffer00444, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00164, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer00229, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0010.end();
    render_pass_encoder3000.drawIndirect(buffer3011, 0);
    const buffer00489 = device00.createBuffer({
        label: "buffer00489",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00490 = device00.createBuffer({
        label: "buffer00490",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00180 = device00.createBindGroup({
        label: "bind_group00180",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00489,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00490,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00180);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00491 = device00.createBuffer({
        label: "buffer00491",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00491, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00491, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00430, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndirect(buffer00438, 0);
    const buffer00492 = device00.createBuffer({
        label: "buffer00492",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00493 = device00.createBuffer({
        label: "buffer00493",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00181 = device00.createBindGroup({
        label: "bind_group00181",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00492,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00493,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00181);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00494 = device00.createBuffer({
        label: "buffer00494",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00494, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00494, 0);
    render_pass_encoder0010.drawIndirect(buffer00430, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00495 = device00.createBuffer({
        label: "buffer00495",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00495, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00495, 0);
    render_pass_encoder0041.drawIndirect(buffer00447, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00388, 0);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00424, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3031.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3021.drawIndirect(buffer308, 0);
    render_pass_encoder0020.drawIndirect(buffer00383, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00496 = device00.createBuffer({
        label: "buffer00496",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00496, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00496, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndirect(buffer00355, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer308, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00497 = device00.createBuffer({
        label: "buffer00497",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00497, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00497, 0);
    device40.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0099, 0);
    render_pass_encoder0030.drawIndirect(buffer00149, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00265, 0);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00282, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder3021.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00438, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00498 = device00.createBuffer({
        label: "buffer00498",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00498, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00498, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0011.drawIndirect(buffer00339, 0);
    render_pass_encoder0040.drawIndirect(buffer00256, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0020.drawIndirect(buffer00366, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3020.end();
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    const buffer00499 = device00.createBuffer({
        label: "buffer00499",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00500 = device00.createBuffer({
        label: "buffer00500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00182 = device00.createBindGroup({
        label: "bind_group00182",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00499,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00500,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00182);
    render_pass_encoder0011.setIndexBuffer(buffer0067, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00501 = device00.createBuffer({
        label: "buffer00501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00501, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00501, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00304, "uint16");
    render_pass_encoder3031.draw(3);
    const buffer00502 = device00.createBuffer({
        label: "buffer00502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00503 = device00.createBuffer({
        label: "buffer00503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00183 = device00.createBindGroup({
        label: "bind_group00183",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00503,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00183);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00406, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00189, 0);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00504 = device00.createBuffer({
        label: "buffer00504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00504, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00504, 0);
    const buffer00505 = device00.createBuffer({
        label: "buffer00505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00506 = device00.createBuffer({
        label: "buffer00506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00184 = device00.createBindGroup({
        label: "bind_group00184",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00506,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00184);
    render_pass_encoder0030.drawIndirect(buffer00425, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00183, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer00279, 0);
    render_pass_encoder0030.drawIndirect(buffer00163, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00507 = device00.createBuffer({
        label: "buffer00507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00507, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00507, 0);
    render_pass_encoder0010.drawIndirect(buffer00339, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer00177, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.end();
    const buffer00508 = device00.createBuffer({
        label: "buffer00508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00509 = device00.createBuffer({
        label: "buffer00509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00185 = device00.createBindGroup({
        label: "bind_group00185",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00509,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00185);
    device30.queue.submit([]);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer00209, 0);
    device00.queue.submit([]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00264, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00265, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00510 = device00.createBuffer({
        label: "buffer00510",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00510, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00510, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00254, "uint16");
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3001.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00464, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0011.setIndexBuffer(buffer00366, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00279, 0);
    render_pass_encoder0040.drawIndirect(buffer00262, 0);
    const buffer00511 = device00.createBuffer({
        label: "buffer00511",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00512 = device00.createBuffer({
        label: "buffer00512",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00186 = device00.createBindGroup({
        label: "bind_group00186",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00511,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00512,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00186);
    render_pass_encoder3021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer3014, 0);
    const buffer00513 = device00.createBuffer({
        label: "buffer00513",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00514 = device00.createBuffer({
        label: "buffer00514",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00187 = device00.createBindGroup({
        label: "bind_group00187",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00513,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00514,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00187);
    render_pass_encoder0020.drawIndexedIndirect(buffer00140, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00515 = device00.createBuffer({
        label: "buffer00515",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00515, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00515, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00421, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00167, 0);
    render_pass_encoder0011.drawIndirect(buffer00496, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00259, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3001.end();
    render_pass_encoder3020.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00133, 0);
    device50.queue.submit([]);
    render_pass_encoder3020.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00516 = device00.createBuffer({
        label: "buffer00516",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00516, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00516, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndirect(buffer00400, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00146, 0);
    const buffer00517 = device00.createBuffer({
        label: "buffer00517",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00518 = device00.createBuffer({
        label: "buffer00518",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00188 = device00.createBindGroup({
        label: "bind_group00188",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00517,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00518,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00188);
    render_pass_encoder0020.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0020.drawIndirect(buffer00182, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00167, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00516, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00417, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0095, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3031.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00498, 0);
    render_pass_encoder0020.drawIndirect(buffer00210, 0);
    render_pass_encoder3010.drawIndexed(3);
    const buffer00519 = device00.createBuffer({
        label: "buffer00519",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00520 = device00.createBuffer({
        label: "buffer00520",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00189 = device00.createBindGroup({
        label: "bind_group00189",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00519,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00520,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00189);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer003, ]);
    const buffer00521 = device00.createBuffer({
        label: "buffer00521",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00522 = device00.createBuffer({
        label: "buffer00522",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00190 = device00.createBindGroup({
        label: "bind_group00190",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00521,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00522,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00190);
    const buffer00523 = device00.createBuffer({
        label: "buffer00523",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00524 = device00.createBuffer({
        label: "buffer00524",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00191 = device00.createBindGroup({
        label: "bind_group00191",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00523,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00524,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00191);
    render_pass_encoder0020.drawIndexedIndirect(buffer00495, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0040.end();
    render_pass_encoder3031.drawIndirect(buffer309, 0);
    render_pass_encoder0041.drawIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0040.drawIndirect(buffer00416, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00525 = device00.createBuffer({
        label: "buffer00525",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00525, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00525, 0);
    render_pass_encoder3031.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder3010.end();
    render_pass_encoder3030.draw(3);
    const buffer00526 = device00.createBuffer({
        label: "buffer00526",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00527 = device00.createBuffer({
        label: "buffer00527",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00192 = device00.createBindGroup({
        label: "bind_group00192",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00526,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00527,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00192);
    render_pass_encoder0040.drawIndirect(buffer00439, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer00416, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00528 = device00.createBuffer({
        label: "buffer00528",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00528, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00528, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer00330, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0011.drawIndirect(buffer00282, 0);
    render_pass_encoder0010.drawIndirect(buffer00250, 0);
    render_pass_encoder0040.drawIndirect(buffer00409, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00421, 0);
    render_pass_encoder0041.drawIndirect(buffer00473, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer00498, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00528, 0);
    render_pass_encoder0010.drawIndirect(buffer00420, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00330, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00529 = device00.createBuffer({
        label: "buffer00529",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00529, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00529, 0);
    render_pass_encoder0041.drawIndirect(buffer00391, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00528, 0);
    render_pass_encoder0010.drawIndirect(buffer00142, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00287, 0);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    const buffer00530 = device00.createBuffer({
        label: "buffer00530",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00531 = device00.createBuffer({
        label: "buffer00531",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00193 = device00.createBindGroup({
        label: "bind_group00193",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00530,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00531,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00193);
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3010.end();
    const buffer00532 = device00.createBuffer({
        label: "buffer00532",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00533 = device00.createBuffer({
        label: "buffer00533",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00194 = device00.createBindGroup({
        label: "bind_group00194",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00532,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00533,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00194);
    const buffer00534 = device00.createBuffer({
        label: "buffer00534",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00535 = device00.createBuffer({
        label: "buffer00535",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00195 = device00.createBindGroup({
        label: "bind_group00195",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00534,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00535,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00195);
    render_pass_encoder0040.end();
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00356, 0);
    render_pass_encoder0030.drawIndirect(buffer00444, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3020.draw(3);
    const buffer00536 = device00.createBuffer({
        label: "buffer00536",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00537 = device00.createBuffer({
        label: "buffer00537",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00196 = device00.createBindGroup({
        label: "bind_group00196",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00536,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00537,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00196);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer308, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00538 = device00.createBuffer({
        label: "buffer00538",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00538, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00538, 0);
    compute_pass_encoder0020.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    const buffer00539 = device00.createBuffer({
        label: "buffer00539",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00540 = device00.createBuffer({
        label: "buffer00540",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00197 = device00.createBindGroup({
        label: "bind_group00197",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00539,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00540,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00197);
    render_pass_encoder0041.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0030.drawIndirect(buffer00314, 0);
    render_pass_encoder0020.drawIndirect(buffer00430, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00528, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00463, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00400, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder3021.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer00536, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0020.drawIndirect(buffer00473, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0041.drawIndirect(buffer00342, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00352, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00294, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00522, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00305, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00185, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder3030.end();
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder3031.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00211, "uint16");
    render_pass_encoder3001.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00265, 0);
    render_pass_encoder0041.drawIndirect(buffer00355, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00324, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00284, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00516, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0041.drawIndirect(buffer00166, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer304, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00376, 0);
    render_pass_encoder0020.drawIndirect(buffer00124, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder3030.setIndexBuffer(buffer303, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer3013, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.drawIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00178, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00416, 0);
    const buffer00541 = device00.createBuffer({
        label: "buffer00541",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00542 = device00.createBuffer({
        label: "buffer00542",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00198 = device00.createBindGroup({
        label: "bind_group00198",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00541,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00542,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00198);
    compute_pass_encoder0001.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00520, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00329, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00543 = device00.createBuffer({
        label: "buffer00543",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00543, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00543, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00544 = device00.createBuffer({
        label: "buffer00544",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00544, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00544, 0);
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3020.end();
    device40.queue.submit([]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00305, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer00260, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00284, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0020.drawIndirect(buffer00333, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndirect(buffer0079, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndirect(buffer0071, 0);
    render_pass_encoder0010.drawIndirect(buffer00250, 0);
    const buffer00545 = device00.createBuffer({
        label: "buffer00545",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00546 = device00.createBuffer({
        label: "buffer00546",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00199 = device00.createBindGroup({
        label: "bind_group00199",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00545,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00546,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00199);
    render_pass_encoder0040.drawIndirect(buffer00497, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0040.drawIndirect(buffer00440, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00258, "uint16");
    const buffer00547 = device00.createBuffer({
        label: "buffer00547",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00548 = device00.createBuffer({
        label: "buffer00548",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00200 = device00.createBindGroup({
        label: "bind_group00200",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00547,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00548,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00200);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00201, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00356, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndirect(buffer00371, 0);
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    const buffer00549 = device00.createBuffer({
        label: "buffer00549",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00550 = device00.createBuffer({
        label: "buffer00550",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00201 = device00.createBindGroup({
        label: "bind_group00201",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00549,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00550,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00201);
    device50.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder3001.end();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00369, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0020.drawIndirect(buffer00156, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    const buffer00551 = device00.createBuffer({
        label: "buffer00551",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00552 = device00.createBuffer({
        label: "buffer00552",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00202 = device00.createBindGroup({
        label: "bind_group00202",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00551,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00552,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00202);
    render_pass_encoder0030.drawIndirect(buffer00153, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3021.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00538, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00525, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00196, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer00380, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00530, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00433, 0);
    const buffer00553 = device00.createBuffer({
        label: "buffer00553",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00554 = device00.createBuffer({
        label: "buffer00554",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00203 = device00.createBindGroup({
        label: "bind_group00203",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00553,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00554,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00203);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndirect(buffer00256, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00267, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0041.drawIndirect(buffer00201, 0);
    render_pass_encoder0030.drawIndirect(buffer00243, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00181, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00555 = device00.createBuffer({
        label: "buffer00555",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00555, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00555, 0);
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00338, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer305, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00556 = device00.createBuffer({
        label: "buffer00556",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00556, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00556, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00196, 0);
    const buffer00557 = device00.createBuffer({
        label: "buffer00557",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00558 = device00.createBuffer({
        label: "buffer00558",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00204 = device00.createBindGroup({
        label: "bind_group00204",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00557,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00558,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00204);
    render_pass_encoder3000.endOcclusionQuery()
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder0010.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00559 = device00.createBuffer({
        label: "buffer00559",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00559, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00559, 0);
    compute_pass_encoder3010.popDebugGroup()
    const buffer00560 = device00.createBuffer({
        label: "buffer00560",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00561 = device00.createBuffer({
        label: "buffer00561",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00205 = device00.createBindGroup({
        label: "bind_group00205",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00560,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00561,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00205);
    render_pass_encoder0030.drawIndirect(buffer00249, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00422, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00515, 0);
    render_pass_encoder0020.drawIndirect(buffer00555, 0);
    render_pass_encoder3021.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0040.end();
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00118, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3021.end();
    render_pass_encoder0020.drawIndirect(buffer00219, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00472, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00271, 0);
    render_pass_encoder0010.drawIndirect(buffer00371, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00371, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00256, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00284, 0);
    render_pass_encoder0020.drawIndirect(buffer00468, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder3010.end();
    device50.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00372, 0);
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00345, 0);
    const buffer00562 = device00.createBuffer({
        label: "buffer00562",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00563 = device00.createBuffer({
        label: "buffer00563",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00206 = device00.createBindGroup({
        label: "bind_group00206",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00562,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00563,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00206);
    render_pass_encoder0041.end();
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder0010.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder0041.drawIndirect(buffer00504, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0041.drawIndirect(buffer00374, 0);
    render_pass_encoder0040.drawIndirect(buffer00555, 0);
    render_pass_encoder0040.popDebugGroup();
    const buffer00564 = device00.createBuffer({
        label: "buffer00564",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00565 = device00.createBuffer({
        label: "buffer00565",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00207 = device00.createBindGroup({
        label: "bind_group00207",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00564,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00565,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00207);
    render_pass_encoder3021.end();
    render_pass_encoder0011.drawIndirect(buffer00186, 0);
    compute_pass_encoder0001.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00566 = device00.createBuffer({
        label: "buffer00566",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00566, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00566, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00498, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00108, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00233, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer306, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndirect(buffer00176, 0);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0030.drawIndirect(buffer00279, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0020.drawIndirect(buffer00314, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00177, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00388, 0);
    device50.queue.submit([]);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00186, 0);
    render_pass_encoder3031.draw(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00369, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00528, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00155, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00452, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer00528, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0084, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00398, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00321, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00446, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00207, 0);
    render_pass_encoder0020.drawIndirect(buffer00243, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00567 = device00.createBuffer({
        label: "buffer00567",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00567, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00567, 0);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00177, 0);
    render_pass_encoder0041.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00325, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00568 = device00.createBuffer({
        label: "buffer00568",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00568, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00568, 0);
    render_pass_encoder0011.drawIndirect(buffer00226, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00417, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00290, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00366, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0020.end();
    render_pass_encoder3001.drawIndirect(buffer3010, 0);
    compute_pass_encoder0020.popDebugGroup()
    const buffer00569 = device00.createBuffer({
        label: "buffer00569",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00570 = device00.createBuffer({
        label: "buffer00570",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00208 = device00.createBindGroup({
        label: "bind_group00208",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00569,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00570,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00208);
    render_pass_encoder0040.setIndexBuffer(buffer00444, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00523, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00274, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3015, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00167, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00445, "uint16");
    const buffer00571 = device00.createBuffer({
        label: "buffer00571",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00572 = device00.createBuffer({
        label: "buffer00572",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00209 = device00.createBindGroup({
        label: "bind_group00209",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00571,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00572,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00209);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00482, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00518, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer00573 = device00.createBuffer({
        label: "buffer00573",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00574 = device00.createBuffer({
        label: "buffer00574",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00210 = device00.createBindGroup({
        label: "bind_group00210",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00573,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00574,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00210);
    render_pass_encoder0041.drawIndirect(buffer00398, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00256, 0);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3000.end();
    render_pass_encoder3030.draw(3);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00372, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0010.drawIndirect(buffer00374, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00299, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00409, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00515, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00373, 0);
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    compute_pass_encoder0010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndirect(buffer00336, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer00210, 0);
    render_pass_encoder0020.drawIndirect(buffer00256, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00575 = device00.createBuffer({
        label: "buffer00575",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00575, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00575, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder0010.setIndexBuffer(buffer00359, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00369, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00444, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00473, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00266, 0);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00525, 0);
    render_pass_encoder0010.drawIndirect(buffer00234, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00343, 0);
    device00.queue.submit([command_buffer004, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00356, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00258, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00525, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndirect(buffer00352, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00574, 0);
    render_pass_encoder0010.drawIndirect(buffer00497, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00287, 0);
    device00.queue.submit([command_buffer000, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00576 = device00.createBuffer({
        label: "buffer00576",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00576, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00576, 0);
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0020.drawIndirect(buffer00183, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00496, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00369, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer00496, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00106, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    device50.queue.submit([]);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder3030.end();
    device30.queue.submit([]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0040.drawIndirect(buffer00261, 0);
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer00359, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00559, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00265, 0);
    render_pass_encoder0011.drawIndirect(buffer00356, 0);
    render_pass_encoder3031.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer0091, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0041.drawIndirect(buffer00416, 0);
    render_pass_encoder0030.drawIndirect(buffer00342, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00134, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder0030.drawIndirect(buffer00439, 0);
    render_pass_encoder0030.drawIndirect(buffer00569, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00495, 0);
    render_pass_encoder3031.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00317, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0094, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00577 = device00.createBuffer({
        label: "buffer00577",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00577, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00577, 0);
    render_pass_encoder3031.drawIndirect(buffer3015, 0);
    render_pass_encoder3010.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndirect(buffer00297, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer00294, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00402, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00277, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3000.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder0010.drawIndirect(buffer00101, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00495, 0);
    render_pass_encoder0030.drawIndirect(buffer00559, 0);
    render_pass_encoder0010.drawIndirect(buffer00515, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0011.drawIndirect(buffer00149, 0);
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    render_pass_encoder0011.drawIndirect(buffer00313, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder0040.drawIndirect(buffer00287, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00342, 0);
    device00.queue.submit([command_buffer000, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00578 = device00.createBuffer({
        label: "buffer00578",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00578, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00578, 0);
    render_pass_encoder0041.drawIndirect(buffer00360, 0);
    device50.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer00531, 0);
    render_pass_encoder0030.drawIndirect(buffer00460, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder3021.drawIndirect(buffer303, 0);
    render_pass_encoder0020.drawIndirect(buffer00298, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00576, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer00201, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer00469, 0);
    render_pass_encoder3020.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00579 = device00.createBuffer({
        label: "buffer00579",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00579, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00579, 0);
    render_pass_encoder0041.drawIndirect(buffer00383, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00439, 0);
    render_pass_encoder0041.drawIndirect(buffer00360, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00397, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00257, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00438, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0040.drawIndirect(buffer00392, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00287, 0);
    compute_pass_encoder0010.end();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0041.drawIndirect(buffer00515, 0);
    render_pass_encoder0011.drawIndirect(buffer00572, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder0010.drawIndirect(buffer00579, 0);
    render_pass_encoder0010.drawIndirect(buffer00177, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00372, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00255, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3031.setIndexBuffer(buffer303, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00403, 0);
    render_pass_encoder0040.drawIndirect(buffer00377, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00209, 0);
    render_pass_encoder0010.drawIndirect(buffer00308, 0);
    render_pass_encoder0040.drawIndirect(buffer00417, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00525, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3012, 0);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00449, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder0011.drawIndirect(buffer00383, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00511, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00493, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00157, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0038, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00580 = device00.createBuffer({
        label: "buffer00580",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00580, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00580, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00330, 0);
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder0040.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00264, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00580, 0);
    render_pass_encoder0020.drawIndirect(buffer0098, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00577, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0020.drawIndirect(buffer00570, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00498, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00581 = device00.createBuffer({
        label: "buffer00581",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00581, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00581, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3014, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3011, 0);
    const buffer00582 = device00.createBuffer({
        label: "buffer00582",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00583 = device00.createBuffer({
        label: "buffer00583",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00211 = device00.createBindGroup({
        label: "bind_group00211",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00582,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00583,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00211);
    render_pass_encoder0010.drawIndirect(buffer00496, 0);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0010.drawIndirect(buffer00167, 0);
    render_pass_encoder3021.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00515, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00571, 0);
    const buffer00584 = device00.createBuffer({
        label: "buffer00584",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00585 = device00.createBuffer({
        label: "buffer00585",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00212 = device00.createBindGroup({
        label: "bind_group00212",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00584,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00585,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00212);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndirect(buffer00574, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00565, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00532, 0);
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00464, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00496, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer00167, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00309, "uint16");
    const buffer00586 = device00.createBuffer({
        label: "buffer00586",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00587 = device00.createBuffer({
        label: "buffer00587",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00213 = device00.createBindGroup({
        label: "bind_group00213",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00586,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00587,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00213);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00407, 0);
    render_pass_encoder0040.drawIndirect(buffer00579, 0);
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00369, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00497, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00437, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00588 = device00.createBuffer({
        label: "buffer00588",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00588, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00588, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00262, 0);
    compute_pass_encoder0011.end();
    const buffer00589 = device00.createBuffer({
        label: "buffer00589",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00590 = device00.createBuffer({
        label: "buffer00590",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00214 = device00.createBindGroup({
        label: "bind_group00214",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00589,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00590,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00214);
    render_pass_encoder0010.setIndexBuffer(buffer00505, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00151, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer00587, "uint16");
    const buffer00591 = device00.createBuffer({
        label: "buffer00591",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00592 = device00.createBuffer({
        label: "buffer00592",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00215 = device00.createBindGroup({
        label: "bind_group00215",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00591,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00592,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00215);
    render_pass_encoder3021.end();
    const buffer00593 = device00.createBuffer({
        label: "buffer00593",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00594 = device00.createBuffer({
        label: "buffer00594",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00216 = device00.createBindGroup({
        label: "bind_group00216",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00593,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00594,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00216);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00546, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    render_pass_encoder0041.drawIndirect(buffer00555, 0);
    render_pass_encoder0030.drawIndirect(buffer00482, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00559, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder3021.draw(3);
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00415, 0);
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00501, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00466, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer00125, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00356, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndirect(buffer00149, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.drawIndirect(buffer00230, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0010.setIndexBuffer(buffer00457, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00391, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00507, 0);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    const buffer00595 = device00.createBuffer({
        label: "buffer00595",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00596 = device00.createBuffer({
        label: "buffer00596",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00217 = device00.createBindGroup({
        label: "bind_group00217",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00595,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00596,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00217);
    device50.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer00333, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00596, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00245, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0020.drawIndirect(buffer00256, 0);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00567, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0010.drawIndirect(buffer00120, 0);
    const buffer00597 = device00.createBuffer({
        label: "buffer00597",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00598 = device00.createBuffer({
        label: "buffer00598",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00218 = device00.createBindGroup({
        label: "bind_group00218",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00597,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00598,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00218);
    render_pass_encoder0011.setIndexBuffer(buffer00202, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00528, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00555, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00378, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0030.drawIndirect(buffer00256, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00506, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00538, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00290, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder0020.drawIndirect(buffer00267, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0011.drawIndirect(buffer00250, 0);
    render_pass_encoder0020.drawIndirect(buffer00455, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0030.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00356, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer00351, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00255, 0);
    render_pass_encoder0010.drawIndirect(buffer00176, 0);
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00244, 0);
    device40.queue.submit([command_buffer402, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00599 = device00.createBuffer({
        label: "buffer00599",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00599, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00599, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer00435, 0);
    render_pass_encoder0041.drawIndirect(buffer00495, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00352, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00600 = device00.createBuffer({
        label: "buffer00600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00600, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00600, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0010.popDebugGroup()
    const buffer00601 = device00.createBuffer({
        label: "buffer00601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00602 = device00.createBuffer({
        label: "buffer00602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00219 = device00.createBindGroup({
        label: "bind_group00219",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00602,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00219);
    render_pass_encoder3030.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0010.drawIndirect(buffer00178, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder0030.drawIndirect(buffer00578, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00473, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0041.drawIndexed(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00113, 0);
    const buffer00603 = device00.createBuffer({
        label: "buffer00603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00604 = device00.createBuffer({
        label: "buffer00604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00220 = device00.createBindGroup({
        label: "bind_group00220",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00604,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00220);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.drawIndirect(buffer00399, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00194, 0);
    const buffer00605 = device00.createBuffer({
        label: "buffer00605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00606 = device00.createBuffer({
        label: "buffer00606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00221 = device00.createBindGroup({
        label: "bind_group00221",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00606,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00221);
    render_pass_encoder0020.drawIndirect(buffer00386, 0);
    render_pass_encoder0011.drawIndirect(buffer00504, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00343, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00568, 0);
    render_pass_encoder3001.end();
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([]);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0095, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00420, 0);
    render_pass_encoder0010.drawIndirect(buffer00168, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00516, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00600, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder3021.popDebugGroup();
    const buffer00607 = device00.createBuffer({
        label: "buffer00607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00608 = device00.createBuffer({
        label: "buffer00608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00222 = device00.createBindGroup({
        label: "bind_group00222",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00608,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00222);
    render_pass_encoder0020.drawIndirect(buffer00182, 0);
    const buffer00609 = device00.createBuffer({
        label: "buffer00609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00610 = device00.createBuffer({
        label: "buffer00610",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00223 = device00.createBindGroup({
        label: "bind_group00223",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00610,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00223);
    render_pass_encoder0040.end();
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00611 = device00.createBuffer({
        label: "buffer00611",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00611, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00611, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndirect(buffer00319, 0);
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder3000.end();
    const buffer00612 = device00.createBuffer({
        label: "buffer00612",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00613 = device00.createBuffer({
        label: "buffer00613",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00224 = device00.createBindGroup({
        label: "bind_group00224",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00612,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00613,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00224);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00401, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00292, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00203, "uint16");
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00611, 0);
    render_pass_encoder0041.drawIndirect(buffer00543, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer001, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00614 = device00.createBuffer({
        label: "buffer00614",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00614, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00614, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndirect(buffer309, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndirect(buffer00284, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndirect(buffer00158, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00120, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.drawIndirect(buffer00559, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00529, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00308, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer00255, 0);
    const buffer00615 = device00.createBuffer({
        label: "buffer00615",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00616 = device00.createBuffer({
        label: "buffer00616",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00225 = device00.createBindGroup({
        label: "bind_group00225",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00615,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00616,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00225);
    render_pass_encoder0011.drawIndexedIndirect(buffer00576, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00617 = device00.createBuffer({
        label: "buffer00617",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00617, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00617, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00576, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00456, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00538, 0);
    render_pass_encoder3020.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00618 = device00.createBuffer({
        label: "buffer00618",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00618, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00618, 0);
    render_pass_encoder0041.drawIndirect(buffer00617, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00525, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndirect(buffer00492, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00619 = device00.createBuffer({
        label: "buffer00619",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00619, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00619, 0);
    render_pass_encoder0030.drawIndirect(buffer00169, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00193, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00614, 0);
    render_pass_encoder0020.drawIndirect(buffer00482, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00620 = device00.createBuffer({
        label: "buffer00620",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00620, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00620, 0);
    render_pass_encoder0041.drawIndirect(buffer00575, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder0001.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    const buffer00621 = device00.createBuffer({
        label: "buffer00621",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00622 = device00.createBuffer({
        label: "buffer00622",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00226 = device00.createBindGroup({
        label: "bind_group00226",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00621,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00622,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00226);
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.drawIndirect(buffer00381, 0);
    render_pass_encoder0041.drawIndirect(buffer00482, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00576, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00588, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00389, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00575, 0);
    render_pass_encoder0030.drawIndirect(buffer00270, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    const buffer00623 = device00.createBuffer({
        label: "buffer00623",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00624 = device00.createBuffer({
        label: "buffer00624",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00227 = device00.createBindGroup({
        label: "bind_group00227",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00623,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00624,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00227);
    render_pass_encoder3020.drawIndexedIndirect(buffer304, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    device50.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00430, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00398, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00625 = device00.createBuffer({
        label: "buffer00625",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00625, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00625, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder3001.drawIndirect(buffer308, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00610, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00369, 0);
    render_pass_encoder0020.drawIndirect(buffer00617, 0);
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00535, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00186, 0);
    render_pass_encoder0041.drawIndirect(buffer00495, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00437, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndirect(buffer00279, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00626 = device00.createBuffer({
        label: "buffer00626",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00626, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00626, 0);
    device00.queue.submit([]);
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00265, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00474, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00627 = device00.createBuffer({
        label: "buffer00627",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00627, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00627, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer00389, 0);
    render_pass_encoder0041.drawIndirect(buffer00265, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00398, 0);
    compute_pass_encoder0000.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00628 = device00.createBuffer({
        label: "buffer00628",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00628, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00628, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00387, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00418, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00614, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00577, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00629 = device00.createBuffer({
        label: "buffer00629",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00629, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00629, 0);
    render_pass_encoder0030.drawIndirect(buffer00497, 0);
    render_pass_encoder3031.setIndexBuffer(buffer306, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer00630 = device00.createBuffer({
        label: "buffer00630",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00631 = device00.createBuffer({
        label: "buffer00631",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00228 = device00.createBindGroup({
        label: "bind_group00228",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00630,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00631,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00228);
    render_pass_encoder0040.drawIndirect(buffer00539, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder3021.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder3001.draw(3);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00342, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00425, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3021.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0095, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00507, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer00449, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer00249, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00632 = device00.createBuffer({
        label: "buffer00632",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00632, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00632, 0);
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00214, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00215, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3001.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00257, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer00217, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    render_pass_encoder0010.drawIndirect(buffer00581, 0);
    render_pass_encoder0030.drawIndirect(buffer00218, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00576, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer00482, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00209, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder3030.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00287, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndirect(buffer00313, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer00577, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3015, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00222, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder3010.end();
    const buffer00633 = device00.createBuffer({
        label: "buffer00633",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00634 = device00.createBuffer({
        label: "buffer00634",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00229 = device00.createBindGroup({
        label: "bind_group00229",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00633,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00634,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00229);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder3030.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00583, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00575, 0);
    render_pass_encoder0040.drawIndirect(buffer00124, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0030.drawIndirect(buffer00284, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder3000.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3031.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00438, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00572, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0020.drawIndirect(buffer00334, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00324, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0057, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00629, 0);
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3001.popDebugGroup();
    const buffer00635 = device00.createBuffer({
        label: "buffer00635",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00636 = device00.createBuffer({
        label: "buffer00636",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00230 = device00.createBindGroup({
        label: "bind_group00230",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00635,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00636,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00230);
    render_pass_encoder0040.drawIndirect(buffer00342, 0);
    render_pass_encoder3021.drawIndirect(buffer3010, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00637 = device00.createBuffer({
        label: "buffer00637",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00637, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00637, 0);
    render_pass_encoder0040.drawIndirect(buffer00250, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00638 = device00.createBuffer({
        label: "buffer00638",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00638, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00638, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00555, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3021.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00580, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00193, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00598, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00570, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00459, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00148, "uint16");
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer00140, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder0041.drawIndirect(buffer00229, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00555, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00196, 0);
    const buffer00639 = device00.createBuffer({
        label: "buffer00639",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00640 = device00.createBuffer({
        label: "buffer00640",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00231 = device00.createBindGroup({
        label: "bind_group00231",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00639,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00640,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00231);
    render_pass_encoder0041.drawIndexedIndirect(buffer00505, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3031.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00176, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder3030.end();
    render_pass_encoder0041.drawIndirect(buffer00293, 0);
    render_pass_encoder0040.drawIndirect(buffer00360, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00540, 0);
    render_pass_encoder0010.drawIndirect(buffer00186, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00521, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3013, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0020.drawIndirect(buffer00325, 0);
    render_pass_encoder0020.drawIndirect(buffer00250, 0);
    render_pass_encoder0040.drawIndirect(buffer00377, 0);
    render_pass_encoder0041.drawIndirect(buffer00308, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00641 = device00.createBuffer({
        label: "buffer00641",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00641, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00641, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3015, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00600, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer00293, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndirect(buffer00525, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00590, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00629, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00390, 0);
    render_pass_encoder0011.drawIndirect(buffer00422, 0);
    render_pass_encoder0011.drawIndirect(buffer00544, 0);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3031.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    device00.queue.submit([]);
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00628, 0);
    render_pass_encoder3021.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3014, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3011, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00568, 0);
    render_pass_encoder3021.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer00378, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3021.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer00189, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndirect(buffer00121, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer307, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00283, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00255, 0);
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00642 = device00.createBuffer({
        label: "buffer00642",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00642, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00642, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3031.drawIndirect(buffer300, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00604, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.setIndexBuffer(buffer00165, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00585, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00620, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00308, 0);
    render_pass_encoder0030.drawIndirect(buffer00191, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0011.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00643 = device00.createBuffer({
        label: "buffer00643",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00643, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00643, 0);
    render_pass_encoder0041.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00644 = device00.createBuffer({
        label: "buffer00644",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00644, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00644, 0);
    render_pass_encoder0020.drawIndirect(buffer00282, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00228, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00444, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00377, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00262, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00479, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00360, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00641, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00535, 0);
    render_pass_encoder0010.drawIndirect(buffer00282, 0);
    render_pass_encoder0020.drawIndirect(buffer00561, 0);
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00575, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3021.drawIndirect(buffer307, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00369, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00643, 0);
    const buffer00645 = device00.createBuffer({
        label: "buffer00645",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00646 = device00.createBuffer({
        label: "buffer00646",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00232 = device00.createBindGroup({
        label: "bind_group00232",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00645,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00646,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00232);
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00594, 0);
    render_pass_encoder0041.drawIndirect(buffer00510, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00629, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00265, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00632, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00186, 0);
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00371, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3011, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00438, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00538, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00272, 0);
    render_pass_encoder0011.drawIndirect(buffer00342, 0);
    render_pass_encoder0010.drawIndirect(buffer00272, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00189, 0);
    const buffer00647 = device00.createBuffer({
        label: "buffer00647",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00648 = device00.createBuffer({
        label: "buffer00648",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00233 = device00.createBindGroup({
        label: "bind_group00233",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00647,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00648,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00233);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00372, 0);
    render_pass_encoder0040.drawIndirect(buffer00143, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0040.drawIndirect(buffer00143, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00574, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00540, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00235, 0);
    render_pass_encoder3001.setIndexBuffer(buffer301, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00649 = device00.createBuffer({
        label: "buffer00649",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00649, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00649, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00276, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00650 = device00.createBuffer({
        label: "buffer00650",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00650, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00650, 0);
    render_pass_encoder0041.drawIndirect(buffer00293, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3031.drawIndirect(buffer307, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder3001.draw(3);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder3021.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00283, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00498, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00438, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer305, 0);
    const buffer00651 = device00.createBuffer({
        label: "buffer00651",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00652 = device00.createBuffer({
        label: "buffer00652",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00234 = device00.createBindGroup({
        label: "bind_group00234",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00651,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00652,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00234);
    render_pass_encoder0010.drawIndirect(buffer00262, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00161, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0030.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00482, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer00629, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3021.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer00644, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0011.drawIndirect(buffer0076, 0);
    render_pass_encoder0010.drawIndirect(buffer00593, 0);
    render_pass_encoder0010.drawIndirect(buffer00257, 0);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00159, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00525, 0);
    render_pass_encoder0011.drawIndirect(buffer00159, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00653 = device00.createBuffer({
        label: "buffer00653",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00653, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00653, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00401, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00498, 0);
    const buffer00654 = device00.createBuffer({
        label: "buffer00654",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00655 = device00.createBuffer({
        label: "buffer00655",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00235 = device00.createBindGroup({
        label: "bind_group00235",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00654,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00655,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00235);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00412, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00458, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer00506, "uint16");
    device00.queue.submit([command_buffer000, ]);
    const buffer00656 = device00.createBuffer({
        label: "buffer00656",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00657 = device00.createBuffer({
        label: "buffer00657",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00236 = device00.createBindGroup({
        label: "bind_group00236",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00656,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00657,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00236);
    render_pass_encoder0040.drawIndexedIndirect(buffer00631, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.drawIndirect(buffer305, 0);
    render_pass_encoder0041.drawIndirect(buffer00509, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder3021.drawIndirect(buffer305, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00198, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00185, 0);
    render_pass_encoder0010.popDebugGroup();
    const buffer00658 = device00.createBuffer({
        label: "buffer00658",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00659 = device00.createBuffer({
        label: "buffer00659",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00237 = device00.createBindGroup({
        label: "bind_group00237",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00658,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00659,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00237);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00642, 0);
    render_pass_encoder0041.drawIndirect(buffer00381, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00145, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00226, 0);
    compute_pass_encoder0020.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00491, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3010.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00438, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3021.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder0010.end();
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([]);
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer00371, 0);
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00507, 0);
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00230, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00432, 0);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00660 = device00.createBuffer({
        label: "buffer00660",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00660, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00660, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00516, 0);
    const buffer00661 = device00.createBuffer({
        label: "buffer00661",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00662 = device00.createBuffer({
        label: "buffer00662",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00238 = device00.createBindGroup({
        label: "bind_group00238",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00661,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00662,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00238);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00378, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00663 = device00.createBuffer({
        label: "buffer00663",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00663, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00663, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00207, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndirect(buffer00435, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00626, 0);
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder0011.end();
    device50.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer00189, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00322, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00650, 0);
    render_pass_encoder0011.drawIndirect(buffer00223, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00600, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndirect(buffer00330, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00664 = device00.createBuffer({
        label: "buffer00664",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00664, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00664, 0);
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00217, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder0041.drawIndirect(buffer00158, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder0011.end();
    render_pass_encoder3021.drawIndirect(buffer302, 0);
    render_pass_encoder0020.drawIndirect(buffer00664, 0);
    render_pass_encoder0040.drawIndirect(buffer00482, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00221, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00655, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00569, 0);
    const buffer00665 = device00.createBuffer({
        label: "buffer00665",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00666 = device00.createBuffer({
        label: "buffer00666",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00239 = device00.createBindGroup({
        label: "bind_group00239",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00665,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00666,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00239);
    render_pass_encoder3020.drawIndirect(buffer304, 0);
    render_pass_encoder0011.drawIndirect(buffer00120, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndirect(buffer00528, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00515, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00310, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0020.drawIndirect(buffer00516, 0);
    render_pass_encoder0010.drawIndirect(buffer00252, 0);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00667 = device00.createBuffer({
        label: "buffer00667",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00667, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00667, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.end();
    render_pass_encoder0040.drawIndirect(buffer00439, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder0011.drawIndirect(buffer00614, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer00348, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00401, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00253, 0);
    render_pass_encoder3031.drawIndexed(3);
    const buffer00668 = device00.createBuffer({
        label: "buffer00668",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00669 = device00.createBuffer({
        label: "buffer00669",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00240 = device00.createBindGroup({
        label: "bind_group00240",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00668,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00669,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00240);
    render_pass_encoder0010.drawIndexedIndirect(buffer00262, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer00335, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00650, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00670 = device00.createBuffer({
        label: "buffer00670",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00670, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00670, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00559, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00343, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00330, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00251, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00671 = device00.createBuffer({
        label: "buffer00671",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00671, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00671, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00369, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00513, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00672 = device00.createBuffer({
        label: "buffer00672",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00672, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00672, 0);
    render_pass_encoder3021.drawIndirect(buffer3013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00383, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00614, 0);
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00370, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3001.drawIndirect(buffer308, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00434, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00668, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00255, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer00668, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00628, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00617, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00351, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00602, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00574, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00673 = device00.createBuffer({
        label: "buffer00673",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00673, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00673, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00370, 0);
    render_pass_encoder0011.drawIndirect(buffer00257, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00543, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3021.drawIndirect(buffer303, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndirect(buffer00352, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer00503, 0);
    const buffer00674 = device00.createBuffer({
        label: "buffer00674",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00675 = device00.createBuffer({
        label: "buffer00675",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00241 = device00.createBindGroup({
        label: "bind_group00241",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00674,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00675,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00241);
    render_pass_encoder0011.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0041.drawIndirect(buffer00544, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00401, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0061, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00676 = device00.createBuffer({
        label: "buffer00676",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00676, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00676, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00330, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.drawIndirect(buffer00581, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0040.drawIndirect(buffer00378, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00501, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00230, 0);
    compute_pass_encoder0020.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00677 = device00.createBuffer({
        label: "buffer00677",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00677, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00677, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00305, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer00397, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.end();
    const buffer00678 = device00.createBuffer({
        label: "buffer00678",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00679 = device00.createBuffer({
        label: "buffer00679",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00242 = device00.createBindGroup({
        label: "bind_group00242",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00678,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00679,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00242);
    render_pass_encoder0020.drawIndexedIndirect(buffer00559, 0);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00588, 0);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00417, 0);
    device40.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0041.popDebugGroup();
    const buffer00680 = device00.createBuffer({
        label: "buffer00680",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00681 = device00.createBuffer({
        label: "buffer00681",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00243 = device00.createBindGroup({
        label: "bind_group00243",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00680,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00681,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00243);
    render_pass_encoder0011.drawIndirect(buffer00210, 0);
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder0010.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00672, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00682 = device00.createBuffer({
        label: "buffer00682",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00682, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00682, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00501, 0);
    render_pass_encoder3021.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    device50.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0020.drawIndirect(buffer00370, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0011.drawIndirect(buffer00150, 0);
    render_pass_encoder0041.drawIndirect(buffer00556, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00683 = device00.createBuffer({
        label: "buffer00683",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00683, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00683, 0);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00407, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00189, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00578, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00538, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00567, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.drawIndirect(buffer00671, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00628, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00426, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00569, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00439, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00592, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00459, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00228, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00684 = device00.createBuffer({
        label: "buffer00684",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00684, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00684, 0);
    render_pass_encoder0040.drawIndirect(buffer00371, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00342, 0);
    compute_pass_encoder0001.popDebugGroup()
    device50.queue.submit([]);
    const buffer00685 = device00.createBuffer({
        label: "buffer00685",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00686 = device00.createBuffer({
        label: "buffer00686",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00244 = device00.createBindGroup({
        label: "bind_group00244",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00685,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00686,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00244);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder0030.drawIndirect(buffer00577, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00482, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00660, 0);
    render_pass_encoder0040.drawIndirect(buffer00360, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer00485, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00677, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    const buffer00687 = device00.createBuffer({
        label: "buffer00687",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00688 = device00.createBuffer({
        label: "buffer00688",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00245 = device00.createBindGroup({
        label: "bind_group00245",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00687,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00688,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00245);
    render_pass_encoder0040.drawIndirect(buffer00461, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00483, "uint16");
    render_pass_encoder3000.end();
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer00158, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0040.drawIndirect(buffer00599, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00689 = device00.createBuffer({
        label: "buffer00689",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00689, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00689, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00132, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00690 = device00.createBuffer({
        label: "buffer00690",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00690, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00690, 0);
    compute_pass_encoder0011.end();
    const buffer00691 = device00.createBuffer({
        label: "buffer00691",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00692 = device00.createBuffer({
        label: "buffer00692",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00246 = device00.createBindGroup({
        label: "bind_group00246",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00691,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00692,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00246);
    render_pass_encoder0010.drawIndexedIndirect(buffer00643, 0);
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    const buffer00693 = device00.createBuffer({
        label: "buffer00693",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00694 = device00.createBuffer({
        label: "buffer00694",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00247 = device00.createBindGroup({
        label: "bind_group00247",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00693,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00694,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00247);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00684, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00695 = device00.createBuffer({
        label: "buffer00695",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00695, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00695, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00433, 0);
    render_pass_encoder0011.drawIndirect(buffer00378, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00600, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndirect(buffer00528, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00504, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00696 = device00.createBuffer({
        label: "buffer00696",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00696, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00696, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00398, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00472, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00120, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00236, "uint16");
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00401, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00697 = device00.createBuffer({
        label: "buffer00697",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00697, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00697, 0);
    render_pass_encoder0030.drawIndirect(buffer00330, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00397, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00580, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00345, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00588, 0);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00279, 0);
    render_pass_encoder0030.drawIndirect(buffer00308, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00355, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00210, 0);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0020.drawIndirect(buffer00674, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00425, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0011.drawIndirect(buffer0071, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0020.drawIndirect(buffer00318, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00671, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00234, 0);
    render_pass_encoder3030.end();
    const buffer00698 = device00.createBuffer({
        label: "buffer00698",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00699 = device00.createBuffer({
        label: "buffer00699",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00248 = device00.createBindGroup({
        label: "bind_group00248",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00698,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00699,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00248);
    const buffer00700 = device00.createBuffer({
        label: "buffer00700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00701 = device00.createBuffer({
        label: "buffer00701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00249 = device00.createBindGroup({
        label: "bind_group00249",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00701,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00249);
    render_pass_encoder0020.drawIndirect(buffer00370, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3020.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00461, 0);
    render_pass_encoder3001.drawIndirect(buffer302, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00383, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00702 = device00.createBuffer({
        label: "buffer00702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00702, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00702, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00381, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0011.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00703 = device00.createBuffer({
        label: "buffer00703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00703, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00703, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0011.drawIndirect(buffer00544, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00373, 0);
    render_pass_encoder0041.drawIndirect(buffer00648, 0);
    render_pass_encoder0030.drawIndirect(buffer00525, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00647, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0011.drawIndirect(buffer00210, 0);
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00388, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    const buffer00704 = device00.createBuffer({
        label: "buffer00704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00705 = device00.createBuffer({
        label: "buffer00705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00250 = device00.createBindGroup({
        label: "bind_group00250",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00705,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00250);
    render_pass_encoder0011.drawIndexedIndirect(buffer00635, 0);
    render_pass_encoder0041.drawIndirect(buffer00227, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00525, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3020.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0001.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00538, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00314, 0);
    const buffer00706 = device00.createBuffer({
        label: "buffer00706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00707 = device00.createBuffer({
        label: "buffer00707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00251 = device00.createBindGroup({
        label: "bind_group00251",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00707,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00251);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00632, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3010.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00372, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00644, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0020.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00461, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.setIndexBuffer(buffer00425, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00530, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00557, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00149, 0);
    render_pass_encoder0041.drawIndirect(buffer00504, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00535, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer00193, 0);
    render_pass_encoder0020.drawIndirect(buffer00567, 0);
    render_pass_encoder0040.drawIndirect(buffer00338, 0);
    device30.queue.submit([]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00708 = device00.createBuffer({
        label: "buffer00708",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00708, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00708, 0);
    render_pass_encoder0040.drawIndirect(buffer00182, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00529, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00642, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00308, 0);
    const buffer00709 = device00.createBuffer({
        label: "buffer00709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00710 = device00.createBuffer({
        label: "buffer00710",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00252 = device00.createBindGroup({
        label: "bind_group00252",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00710,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00252);
    render_pass_encoder0010.drawIndexedIndirect(buffer00672, 0);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3031.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00507, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00559, 0);
    render_pass_encoder0041.end();
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00710, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00627, 0);
    render_pass_encoder0040.drawIndirect(buffer00211, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00290, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00360, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0020.drawIndirect(buffer00619, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00669, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00397, 0);
    render_pass_encoder0041.drawIndirect(buffer00267, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00279, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00405, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer00255, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00519, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0041.drawIndirect(buffer00528, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer00264, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndirect(buffer00577, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer00513, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00162, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00494, 0);
    render_pass_encoder0041.drawIndirect(buffer00556, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3014, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00711 = device00.createBuffer({
        label: "buffer00711",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00711, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00711, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3000.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00712 = device00.createBuffer({
        label: "buffer00712",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00712, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00712, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00660, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00611, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00409, 0);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00713 = device00.createBuffer({
        label: "buffer00713",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00713, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00713, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00575, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00504, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00713, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00601, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00625, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00690, 0);
    const buffer00714 = device00.createBuffer({
        label: "buffer00714",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00715 = device00.createBuffer({
        label: "buffer00715",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00253 = device00.createBindGroup({
        label: "bind_group00253",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00714,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00715,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00253);
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder3030.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00716 = device00.createBuffer({
        label: "buffer00716",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00716, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00716, 0);
    compute_pass_encoder0011.end();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder0041.drawIndirect(buffer00226, 0);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder0040.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0041.setIndexBuffer(buffer00502, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0030.end();
    render_pass_encoder3001.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3031.drawIndirect(buffer3015, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00516, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00505, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00371, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00535, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder0041.drawIndirect(buffer00290, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00582, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00601, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00345, 0);
    render_pass_encoder0011.drawIndirect(buffer00208, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00444, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00391, 0);
    const buffer00717 = device00.createBuffer({
        label: "buffer00717",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00718 = device00.createBuffer({
        label: "buffer00718",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00254 = device00.createBindGroup({
        label: "bind_group00254",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00717,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00718,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00254);
    render_pass_encoder0041.drawIndirect(buffer00284, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00156, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00428, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00556, 0);
    render_pass_encoder0040.drawIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndirect(buffer00334, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00482, 0);
    render_pass_encoder0010.drawIndirect(buffer00131, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder0040.end();
    const buffer00719 = device00.createBuffer({
        label: "buffer00719",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00720 = device00.createBuffer({
        label: "buffer00720",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00255 = device00.createBindGroup({
        label: "bind_group00255",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00719,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00720,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00255);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.setIndexBuffer(buffer00435, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00588, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00205, 0);
    render_pass_encoder0020.drawIndirect(buffer00330, 0);
    render_pass_encoder0011.drawIndirect(buffer00554, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00497, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0020.drawIndirect(buffer00555, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00579, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00444, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndirect(buffer00370, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00416, 0);
    device50.queue.submit([]);
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndirect(buffer00182, 0);
    render_pass_encoder0030.drawIndirect(buffer00583, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00632, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00578, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer00398, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00649, 0);
    render_pass_encoder3021.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3010.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer00380, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00339, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00573, 0);
    render_pass_encoder0030.drawIndirect(buffer00683, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer00132, 0);
    render_pass_encoder3010.drawIndexed(3);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00618, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00721 = device00.createBuffer({
        label: "buffer00721",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00721, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00721, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00473, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    render_pass_encoder0041.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00311, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00395, 0);
    render_pass_encoder0040.drawIndirect(buffer00409, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0010.drawIndirect(buffer00181, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00638, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00713, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00566, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00702, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00566, 0);
    render_pass_encoder0020.drawIndirect(buffer00244, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer00498, 0);
    const buffer00722 = device00.createBuffer({
        label: "buffer00722",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00723 = device00.createBuffer({
        label: "buffer00723",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00256 = device00.createBindGroup({
        label: "bind_group00256",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00722,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00723,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00256);
    render_pass_encoder0011.drawIndexedIndirect(buffer00398, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00271, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00724 = device00.createBuffer({
        label: "buffer00724",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00724, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00724, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00356, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00383, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder0001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00525, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00724, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00279, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00643, 0);
    device50.queue.submit([]);
    const buffer00725 = device00.createBuffer({
        label: "buffer00725",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00726 = device00.createBuffer({
        label: "buffer00726",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00257 = device00.createBindGroup({
        label: "bind_group00257",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00725,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00726,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00257);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00529, 0);
    render_pass_encoder0020.drawIndirect(buffer00421, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0063, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00279, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00697, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00121, 0);
    render_pass_encoder3030.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    const buffer00727 = device00.createBuffer({
        label: "buffer00727",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00728 = device00.createBuffer({
        label: "buffer00728",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00258 = device00.createBindGroup({
        label: "bind_group00258",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00727,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00728,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00258);
    render_pass_encoder0041.drawIndirect(buffer00540, 0);
    render_pass_encoder0030.drawIndirect(buffer00313, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00713, 0);
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00708, 0);
    render_pass_encoder3031.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00729 = device00.createBuffer({
        label: "buffer00729",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00729, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00729, 0);
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer00281, 0);
    render_pass_encoder0030.drawIndirect(buffer00576, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00426, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00729, 0);
    render_pass_encoder0011.drawIndirect(buffer00498, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3010.drawIndirect(buffer3013, 0);
    render_pass_encoder3021.end();
    compute_pass_encoder0020.end();
    render_pass_encoder3020.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00721, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0065, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00201, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3021.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00535, 0);
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00299, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3021.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00663, 0);
    render_pass_encoder0040.drawIndirect(buffer00561, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00345, 0);
    const buffer00730 = device00.createBuffer({
        label: "buffer00730",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00731 = device00.createBuffer({
        label: "buffer00731",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00259 = device00.createBindGroup({
        label: "bind_group00259",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00730,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00731,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00259);
    render_pass_encoder0020.drawIndirect(buffer00528, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0062, "uint16");
    const buffer00732 = device00.createBuffer({
        label: "buffer00732",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00733 = device00.createBuffer({
        label: "buffer00733",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00260 = device00.createBindGroup({
        label: "bind_group00260",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00732,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00733,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00260);
    render_pass_encoder0020.drawIndexedIndirect(buffer00510, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00672, 0);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3031.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0020.drawIndirect(buffer00372, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndirect(buffer00193, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00575, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder3000.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00432, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00589, "uint16");
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00734 = device00.createBuffer({
        label: "buffer00734",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00734, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00734, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00711, 0);
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00735 = device00.createBuffer({
        label: "buffer00735",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00735, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00735, 0);
    render_pass_encoder0020.drawIndirect(buffer0078, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00356, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0030.drawIndirect(buffer00515, 0);
    render_pass_encoder0040.drawIndirect(buffer00221, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0011.drawIndirect(buffer00653, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00482, "uint16");
    const buffer00736 = device00.createBuffer({
        label: "buffer00736",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00737 = device00.createBuffer({
        label: "buffer00737",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00261 = device00.createBindGroup({
        label: "bind_group00261",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00736,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00737,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00261);
    const buffer00738 = device00.createBuffer({
        label: "buffer00738",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00739 = device00.createBuffer({
        label: "buffer00739",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00262 = device00.createBindGroup({
        label: "bind_group00262",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00738,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00739,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00262);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00509, 0);
    render_pass_encoder0030.drawIndirect(buffer00673, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00516, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00695, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00568, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00284, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00491, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    const buffer00740 = device00.createBuffer({
        label: "buffer00740",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00741 = device00.createBuffer({
        label: "buffer00741",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00263 = device00.createBindGroup({
        label: "bind_group00263",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00740,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00741,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00263);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00496, "uint16");
    render_pass_encoder3031.end();
    compute_pass_encoder0001.end();
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00532, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00517, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00515, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00734, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00399, 0);
    render_pass_encoder0011.drawIndirect(buffer00359, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00568, 0);
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00646, 0);
    render_pass_encoder0010.drawIndirect(buffer0089, 0);
    render_pass_encoder0010.drawIndirect(buffer00614, 0);
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00742 = device00.createBuffer({
        label: "buffer00742",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00742, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00742, 0);
    render_pass_encoder0041.drawIndirect(buffer00516, 0);
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00638, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00495, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00567, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00468, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00360, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00743 = device00.createBuffer({
        label: "buffer00743",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00743, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00743, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00592, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0020.drawIndirect(buffer00308, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00722, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00696, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00743, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3015, 0);
    const buffer00744 = device00.createBuffer({
        label: "buffer00744",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00745 = device00.createBuffer({
        label: "buffer00745",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00264 = device00.createBindGroup({
        label: "bind_group00264",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00744,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00745,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00264);
    render_pass_encoder0041.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00746 = device00.createBuffer({
        label: "buffer00746",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00746, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00746, 0);
    render_pass_encoder0030.drawIndirect(buffer00158, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00209, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00503, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder0020.drawIndirect(buffer00573, 0);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer00255, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00747 = device00.createBuffer({
        label: "buffer00747",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00747, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00747, 0);
    render_pass_encoder0040.drawIndirect(buffer00417, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00287, 0);
    render_pass_encoder0040.drawIndirect(buffer00649, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00391, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00543, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0030.drawIndirect(buffer00334, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00399, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00106, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0010.drawIndirect(buffer00566, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00285, "uint16");
    render_pass_encoder3001.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00704, 0);
    render_pass_encoder0040.drawIndirect(buffer00747, 0);
    render_pass_encoder0041.drawIndirect(buffer00201, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00357, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00671, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer00143, 0);
    const buffer00748 = device00.createBuffer({
        label: "buffer00748",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00749 = device00.createBuffer({
        label: "buffer00749",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00265 = device00.createBindGroup({
        label: "bind_group00265",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00748,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00749,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00265);
    const buffer00750 = device00.createBuffer({
        label: "buffer00750",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00751 = device00.createBuffer({
        label: "buffer00751",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00266 = device00.createBindGroup({
        label: "bind_group00266",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00750,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00751,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00266);
    render_pass_encoder0011.drawIndexedIndirect(buffer00642, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer00567, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer00422, 0);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00357, 0);
    render_pass_encoder0040.drawIndirect(buffer00398, 0);
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00679, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3015, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00334, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00373, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00606, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00567, 0);
    device50.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer00629, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3021.end();
    render_pass_encoder3010.drawIndexed(3);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00752 = device00.createBuffer({
        label: "buffer00752",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00752, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00752, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00426, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.end();
    render_pass_encoder3010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0020.drawIndirect(buffer00202, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00720, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00682, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00679, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00175, "uint16");
    compute_pass_encoder0011.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00753 = device00.createBuffer({
        label: "buffer00753",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00753, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00753, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00597, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0011.drawIndirect(buffer00372, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder0040.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    const buffer00754 = device00.createBuffer({
        label: "buffer00754",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00755 = device00.createBuffer({
        label: "buffer00755",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00267 = device00.createBindGroup({
        label: "bind_group00267",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00754,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00755,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00267);
    render_pass_encoder0020.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00459, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00396, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00756 = device00.createBuffer({
        label: "buffer00756",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00756, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00756, 0);
    render_pass_encoder0041.drawIndirect(buffer00279, 0);
    render_pass_encoder0010.drawIndirect(buffer00677, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00398, 0);
    render_pass_encoder0040.drawIndirect(buffer00735, 0);
    device40.queue.submit([]);
    const buffer00757 = device00.createBuffer({
        label: "buffer00757",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00758 = device00.createBuffer({
        label: "buffer00758",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00268 = device00.createBindGroup({
        label: "bind_group00268",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00757,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00758,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00268);
    render_pass_encoder0020.drawIndexedIndirect(buffer00756, 0);
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00559, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00367, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00667, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00599, 0);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00233, 0);
    render_pass_encoder0010.drawIndirect(buffer00677, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00759 = device00.createBuffer({
        label: "buffer00759",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00759, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00759, 0);
    const buffer00760 = device00.createBuffer({
        label: "buffer00760",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00761 = device00.createBuffer({
        label: "buffer00761",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00269 = device00.createBindGroup({
        label: "bind_group00269",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00760,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00761,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00269);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer00121, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder0040.drawIndirect(buffer00411, 0);
    render_pass_encoder0011.drawIndirect(buffer00468, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00498, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00649, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00515, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00565, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3012, "uint16");
    const buffer00762 = device00.createBuffer({
        label: "buffer00762",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00763 = device00.createBuffer({
        label: "buffer00763",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00270 = device00.createBindGroup({
        label: "bind_group00270",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00762,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00763,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00270);
    render_pass_encoder0011.drawIndirect(buffer00588, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00639, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00544, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00764 = device00.createBuffer({
        label: "buffer00764",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00764, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00764, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    device10.queue.submit([]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00185, 0);
    compute_pass_encoder3010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer00474, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00497, 0);
    render_pass_encoder0011.drawIndirect(buffer00556, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    render_pass_encoder0010.drawIndirect(buffer00603, 0);
    render_pass_encoder0030.drawIndirect(buffer00167, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00148, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00625, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer00765 = device00.createBuffer({
        label: "buffer00765",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00766 = device00.createBuffer({
        label: "buffer00766",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00271 = device00.createBindGroup({
        label: "bind_group00271",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00765,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00766,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00271);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00620, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00186, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00759, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00759, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00767 = device00.createBuffer({
        label: "buffer00767",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00767, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00767, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00199, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00262, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0040.drawIndirect(buffer00293, 0);
    render_pass_encoder0010.drawIndirect(buffer00373, 0);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0011.drawIndirect(buffer00284, 0);
    render_pass_encoder0041.drawIndirect(buffer00695, 0);
    render_pass_encoder0020.drawIndirect(buffer00735, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00684, 0);
    const buffer00768 = device00.createBuffer({
        label: "buffer00768",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00769 = device00.createBuffer({
        label: "buffer00769",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00272 = device00.createBindGroup({
        label: "bind_group00272",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00768,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00769,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00272);
    render_pass_encoder0041.drawIndirect(buffer00690, 0);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00200, 0);
    render_pass_encoder0030.drawIndirect(buffer00445, 0);
    render_pass_encoder0040.drawIndirect(buffer00266, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00508, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00527, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00756, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00330, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00595, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00466, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00396, 0);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00734, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00714, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00770 = device00.createBuffer({
        label: "buffer00770",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00770, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00770, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3001.endOcclusionQuery()
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00768, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00342, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00158, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder3021.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00282, 0);
    render_pass_encoder0010.drawIndirect(buffer00459, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0040.drawIndirect(buffer00690, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00497, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00300, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00385, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00255, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer00120, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00437, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00492, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00515, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00417, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00738, 0);
    const buffer00771 = device00.createBuffer({
        label: "buffer00771",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00772 = device00.createBuffer({
        label: "buffer00772",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00273 = device00.createBindGroup({
        label: "bind_group00273",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00771,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00772,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00273);
    render_pass_encoder0040.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00487, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00398, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00373, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0010.drawIndirect(buffer00709, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00436, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0010.setIndexBuffer(buffer00447, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00284, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00283, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00647, "uint16");
    const buffer00773 = device00.createBuffer({
        label: "buffer00773",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00774 = device00.createBuffer({
        label: "buffer00774",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00274 = device00.createBindGroup({
        label: "bind_group00274",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00773,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00774,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00274);
    render_pass_encoder3010.end();
    render_pass_encoder0020.drawIndirect(buffer00664, 0);
    render_pass_encoder0020.drawIndirect(buffer00629, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0040.drawIndirect(buffer00334, 0);
    render_pass_encoder3031.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00649, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer00454, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00389, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder3020.drawIndirect(buffer3013, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00759, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0081, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00637, 0);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00638, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00712, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00344, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer00356, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00439, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00664, 0);
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0000.end();
    device00.queue.submit([]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer00720, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00775 = device00.createBuffer({
        label: "buffer00775",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00775, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00775, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer00257, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3021.draw(3);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder3010.draw(3);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer00606, "uint16");
    const buffer00776 = device00.createBuffer({
        label: "buffer00776",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00777 = device00.createBuffer({
        label: "buffer00777",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00275 = device00.createBindGroup({
        label: "bind_group00275",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00776,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00777,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00275);
    render_pass_encoder0030.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0020.drawIndirect(buffer00525, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00149, 0);
    render_pass_encoder0030.drawIndirect(buffer00208, 0);
    device00.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3021.drawIndirect(buffer3015, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00223, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0020.drawIndirect(buffer00734, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer00313, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00566, 0);
    render_pass_encoder0020.drawIndirect(buffer00186, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3012, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device30.queue.submit([]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3021.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer304, "uint16");
    const buffer00778 = device00.createBuffer({
        label: "buffer00778",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00779 = device00.createBuffer({
        label: "buffer00779",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00276 = device00.createBindGroup({
        label: "bind_group00276",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00778,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00779,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00276);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0001.end();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00580, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    const buffer00780 = device00.createBuffer({
        label: "buffer00780",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00781 = device00.createBuffer({
        label: "buffer00781",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00277 = device00.createBindGroup({
        label: "bind_group00277",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00780,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00781,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00277);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer00679, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00782 = device00.createBuffer({
        label: "buffer00782",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00782, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00782, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00714, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder0020.drawIndirect(buffer00251, 0);
    render_pass_encoder0010.drawIndirect(buffer00684, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00617, 0);
    render_pass_encoder0020.drawIndirect(buffer00735, 0);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder3031.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00217, 0);
    const buffer00783 = device00.createBuffer({
        label: "buffer00783",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00784 = device00.createBuffer({
        label: "buffer00784",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00278 = device00.createBindGroup({
        label: "bind_group00278",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00783,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00784,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00278);
    render_pass_encoder0020.drawIndirect(buffer00712, 0);
    render_pass_encoder0040.drawIndirect(buffer00182, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00690, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00348, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0040.drawIndirect(buffer00331, 0);
    const buffer00785 = device00.createBuffer({
        label: "buffer00785",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00786 = device00.createBuffer({
        label: "buffer00786",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00279 = device00.createBindGroup({
        label: "bind_group00279",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00785,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00786,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00279);
    render_pass_encoder0020.setIndexBuffer(buffer00468, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0010.drawIndirect(buffer00600, 0);
    render_pass_encoder0010.drawIndirect(buffer00185, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00440, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00568, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3010, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00581, 0);
    render_pass_encoder3001.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.end();
    render_pass_encoder3001.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    const buffer00787 = device00.createBuffer({
        label: "buffer00787",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00788 = device00.createBuffer({
        label: "buffer00788",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00280 = device00.createBindGroup({
        label: "bind_group00280",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00787,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00788,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00280);
    render_pass_encoder0030.drawIndirect(buffer00314, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    const buffer00789 = device00.createBuffer({
        label: "buffer00789",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00790 = device00.createBuffer({
        label: "buffer00790",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00281 = device00.createBindGroup({
        label: "bind_group00281",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00789,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00790,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00281);
    render_pass_encoder0011.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00671, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00756, 0);
    render_pass_encoder0020.drawIndirect(buffer00360, 0);
    render_pass_encoder0030.drawIndirect(buffer00621, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00510, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00708, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00650, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00444, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0030.drawIndirect(buffer00112, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00682, 0);
    render_pass_encoder0040.drawIndirect(buffer00507, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00752, 0);
    const buffer00791 = device00.createBuffer({
        label: "buffer00791",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00792 = device00.createBuffer({
        label: "buffer00792",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00282 = device00.createBindGroup({
        label: "bind_group00282",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00791,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00792,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00282);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00537, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder3010.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder3030.popDebugGroup();
    const buffer00793 = device00.createBuffer({
        label: "buffer00793",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00794 = device00.createBuffer({
        label: "buffer00794",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00283 = device00.createBindGroup({
        label: "bind_group00283",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00793,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00794,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00283);
    render_pass_encoder0030.drawIndirect(buffer00158, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    const buffer00795 = device00.createBuffer({
        label: "buffer00795",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00796 = device00.createBuffer({
        label: "buffer00796",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00284 = device00.createBindGroup({
        label: "bind_group00284",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00795,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00796,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00284);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3001.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0096, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer00410, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00283, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00797 = device00.createBuffer({
        label: "buffer00797",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00797, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00797, 0);
    const buffer00798 = device00.createBuffer({
        label: "buffer00798",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00799 = device00.createBuffer({
        label: "buffer00799",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00285 = device00.createBindGroup({
        label: "bind_group00285",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00798,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00799,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00285);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00600, 0);
    render_pass_encoder3021.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00800 = device00.createBuffer({
        label: "buffer00800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00800, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00800, 0);
    render_pass_encoder0010.drawIndirect(buffer00614, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00504, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00739, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00117, 0);
    render_pass_encoder0040.drawIndirect(buffer00342, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0010.drawIndirect(buffer0089, 0);
    const buffer00801 = device00.createBuffer({
        label: "buffer00801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00802 = device00.createBuffer({
        label: "buffer00802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00286 = device00.createBindGroup({
        label: "bind_group00286",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00802,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00286);
    render_pass_encoder0011.drawIndirect(buffer00683, 0);
    const buffer00803 = device00.createBuffer({
        label: "buffer00803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00804 = device00.createBuffer({
        label: "buffer00804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00287 = device00.createBindGroup({
        label: "bind_group00287",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00804,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00287);
    render_pass_encoder3001.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00372, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00805 = device00.createBuffer({
        label: "buffer00805",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00805, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00805, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00467, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00464, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3001.end();
    render_pass_encoder0020.drawIndirect(buffer00429, 0);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0041.end();
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00388, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00400, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    device50.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00638, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00806 = device00.createBuffer({
        label: "buffer00806",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00806, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00806, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00782, 0);
    const buffer00807 = device00.createBuffer({
        label: "buffer00807",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00808 = device00.createBuffer({
        label: "buffer00808",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00288 = device00.createBindGroup({
        label: "bind_group00288",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00807,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00808,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00288);
    device10.queue.submit([]);
    render_pass_encoder3021.end();
    render_pass_encoder3030.end();
    device50.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00511, 0);
    render_pass_encoder0041.drawIndirect(buffer00538, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00473, 0);
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    render_pass_encoder0041.drawIndirect(buffer00667, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00809 = device00.createBuffer({
        label: "buffer00809",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00809, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00809, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00400, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00301, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer00613, "uint16");
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    const buffer00810 = device00.createBuffer({
        label: "buffer00810",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00811 = device00.createBuffer({
        label: "buffer00811",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00289 = device00.createBindGroup({
        label: "bind_group00289",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00810,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00811,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00289);
    render_pass_encoder0030.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0010.drawIndirect(buffer00303, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00617, 0);
    render_pass_encoder0011.drawIndirect(buffer00800, 0);
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0030.drawIndirect(buffer00367, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer00265, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00177, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00588, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00256, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00812 = device00.createBuffer({
        label: "buffer00812",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00812, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00812, 0);
    device40.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    const buffer00813 = device00.createBuffer({
        label: "buffer00813",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00814 = device00.createBuffer({
        label: "buffer00814",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00290 = device00.createBindGroup({
        label: "bind_group00290",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00813,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00814,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00290);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3031.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00564, 0);
    render_pass_encoder0030.drawIndirect(buffer00708, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer00600, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0010.drawIndirect(buffer00544, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00780, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00265, 0);
    render_pass_encoder0040.drawIndirect(buffer00425, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00226, 0);
    render_pass_encoder0040.drawIndirect(buffer00740, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder3021.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00262, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndirect(buffer00755, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00260, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00796, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer308, "uint16");
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00639, 0);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0010.drawIndirect(buffer00417, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00721, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3031.drawIndirect(buffer309, 0);
    render_pass_encoder0011.drawIndirect(buffer00157, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00521, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00162, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00800, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00178, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00665, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00629, 0);
    const buffer00815 = device00.createBuffer({
        label: "buffer00815",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00816 = device00.createBuffer({
        label: "buffer00816",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00291 = device00.createBindGroup({
        label: "bind_group00291",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00815,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00816,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00291);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00817 = device00.createBuffer({
        label: "buffer00817",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00817, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00817, 0);
    render_pass_encoder3010.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndirect(buffer00629, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0011.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00818 = device00.createBuffer({
        label: "buffer00818",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00818, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00818, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00348, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00155, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00819 = device00.createBuffer({
        label: "buffer00819",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00819, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00819, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00620, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00746, 0);
    render_pass_encoder0040.drawIndirect(buffer00478, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00630, 0);
    const buffer00820 = device00.createBuffer({
        label: "buffer00820",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00821 = device00.createBuffer({
        label: "buffer00821",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00292 = device00.createBindGroup({
        label: "bind_group00292",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00820,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00821,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00292);
    render_pass_encoder0030.drawIndexedIndirect(buffer00770, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder3020.drawIndirect(buffer3015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00257, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00765, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00677, 0);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00643, 0);
    render_pass_encoder3000.drawIndirect(buffer3015, 0);
    render_pass_encoder0011.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer00623, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00373, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00370, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00673, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00619, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    const buffer00822 = device00.createBuffer({
        label: "buffer00822",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00823 = device00.createBuffer({
        label: "buffer00823",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00293 = device00.createBindGroup({
        label: "bind_group00293",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00822,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00823,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00293);
    render_pass_encoder0041.drawIndirect(buffer00109, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder3021.drawIndirect(buffer307, 0);
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00524, 0);
    render_pass_encoder3031.drawIndirect(buffer3014, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00611, 0);
    device50.queue.submit([]);
    render_pass_encoder3000.end();
    render_pass_encoder0041.drawIndirect(buffer00600, 0);
    render_pass_encoder0020.drawIndirect(buffer00554, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3014, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer00824 = device00.createBuffer({
        label: "buffer00824",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00825 = device00.createBuffer({
        label: "buffer00825",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00294 = device00.createBindGroup({
        label: "bind_group00294",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00824,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00825,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00294);
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    render_pass_encoder3021.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer00516, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0040.drawIndirect(buffer00132, 0);
    device30.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer3014, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00250, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer00177, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00515, 0);
    render_pass_encoder0041.drawIndirect(buffer00809, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder0030.drawIndirect(buffer00208, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0041.drawIndirect(buffer00618, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00416, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0011.drawIndirect(buffer00767, 0);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0030.end();
    const buffer00826 = device00.createBuffer({
        label: "buffer00826",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00827 = device00.createBuffer({
        label: "buffer00827",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00295 = device00.createBindGroup({
        label: "bind_group00295",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00826,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00827,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00295);
    render_pass_encoder0020.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0010.drawIndirect(buffer00389, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00528, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer00642, 0);
    render_pass_encoder0041.drawIndirect(buffer00617, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3031.draw(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00682, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00632, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00642, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer00486, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3031.drawIndirect(buffer308, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00702, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00828 = device00.createBuffer({
        label: "buffer00828",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00828, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00828, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00829 = device00.createBuffer({
        label: "buffer00829",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00829, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00829, 0);
    render_pass_encoder0010.drawIndirect(buffer00516, 0);
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00673, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00786, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3013, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00830 = device00.createBuffer({
        label: "buffer00830",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00830, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00830, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00449, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00671, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00628, 0);
    render_pass_encoder0030.drawIndirect(buffer00643, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00370, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00690, 0);
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    render_pass_encoder0040.drawIndirect(buffer00290, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3031.end();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00809, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00388, 0);
    render_pass_encoder3021.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder0011.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00564, 0);
    render_pass_encoder0040.drawIndirect(buffer00266, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00684, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0098, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00350, 0);
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer00756, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00185, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00337, 0);
    const buffer00831 = device00.createBuffer({
        label: "buffer00831",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00832 = device00.createBuffer({
        label: "buffer00832",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00296 = device00.createBindGroup({
        label: "bind_group00296",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00831,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00832,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00296);
    render_pass_encoder0011.drawIndexedIndirect(buffer00497, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00599, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0041.drawIndirect(buffer00644, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00278, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00189, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder3030.drawIndirect(buffer3015, 0);
    const buffer00833 = device00.createBuffer({
        label: "buffer00833",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00834 = device00.createBuffer({
        label: "buffer00834",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00297 = device00.createBindGroup({
        label: "bind_group00297",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00833,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00834,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00297);
    render_pass_encoder0040.end();
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00775, 0);
    render_pass_encoder0020.drawIndirect(buffer00650, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder0030.drawIndirect(buffer00576, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00495, 0);
    render_pass_encoder0030.drawIndirect(buffer00430, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00690, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00516, 0);
    render_pass_encoder0040.drawIndirect(buffer00149, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3031.drawIndirect(buffer307, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0041.drawIndirect(buffer00466, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00742, 0);
    render_pass_encoder0010.drawIndirect(buffer00749, 0);
    render_pass_encoder0010.drawIndirect(buffer00684, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00638, 0);
    render_pass_encoder0020.drawIndirect(buffer0091, 0);
    render_pass_encoder0041.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00835 = device00.createBuffer({
        label: "buffer00835",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00835, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00835, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0011.drawIndirect(buffer00360, 0);
    const buffer00836 = device00.createBuffer({
        label: "buffer00836",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00837 = device00.createBuffer({
        label: "buffer00837",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00298 = device00.createBindGroup({
        label: "bind_group00298",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00836,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00837,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00298);
    render_pass_encoder0011.drawIndexedIndirect(buffer00660, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00684, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00806, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00397, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndirect(buffer00257, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00820, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00120, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0010.drawIndirect(buffer00672, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00543, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00771, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer00615, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3031.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer00409, 0);
    render_pass_encoder0030.drawIndirect(buffer00648, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer305, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndirect(buffer00673, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0041.drawIndirect(buffer00578, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00658, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00401, 0);
    render_pass_encoder0011.drawIndirect(buffer00671, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer00438, "uint16");
    render_pass_encoder3021.drawIndirect(buffer306, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0048, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00838 = device00.createBuffer({
        label: "buffer00838",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00838, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00838, 0);
    render_pass_encoder0011.drawIndirect(buffer00660, 0);
    const buffer00839 = device00.createBuffer({
        label: "buffer00839",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00840 = device00.createBuffer({
        label: "buffer00840",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00299 = device00.createBindGroup({
        label: "bind_group00299",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00839,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00840,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00299);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00446, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00579, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer00250, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00674, "uint16");
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00627, 0);
    render_pass_encoder3021.drawIndirect(buffer3010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00528, 0);
}