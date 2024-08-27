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
    const array0 = new Float32Array([-0.75, -1.0, -0.25, 0.0, 0.25, -0.25, 0.5, 0.0, -0.75, -0.5, -0.25, 0.25, -0.25, -0.25, -0.75, 0.0, 0.5, -0.5, 0.0, -0.5, -0.25, -1.0, -0.25, -0.75, 0.0, 0.5, 0.75, -1.0, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, 1.0, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.75, 0.75, -1.0, -0.25, 0.5, -1.0, 0.0, -1.0, 0.25, -0.25, 0.75, 1.0, 0.25, -0.25, 0.25, 0.75, -1.0, -0.75, -0.75, 0.0, 0.0, 0.5, 0.0, 0.5, 0.5, 0.25, -0.75, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, -0.25, -0.5, 0.0, 0.25, -0.25, 0.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.25, 0.25, -0.5, -0.5, -0.5, 0.0, -0.5, 0.5, 0.5, ]);
    const array1 = new Float32Array([-0.5, -0.5, 0.5, 0.0, 0.75, -0.75, -1.0, 1.0, 0.5, -1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 1.0, 0.75, 0.25, -0.5, 1.0, 0.5, 0.0, -0.25, -0.75, -0.75, -0.25, -0.5, -1.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.25, -0.5, -1.0, -1.0, -1.0, -0.25, -0.5, 1.0, 1.0, 0.0, -0.5, -0.25, 0.5, 0.75, 0.5, 0.0, 0.75, -0.25, -1.0, -0.25, 0.0, -0.5, -0.25, -0.25, 0.0, -0.75, -0.75, -0.75, 1.0, -0.75, -1.0, 1.0, -0.25, 1.0, 0.25, -0.75, 0.25, 1.0, 0.25, -0.25, 1.0, -0.25, -0.25, -1.0, -0.5, -0.75, 0.0, 0.25, 0.0, 0.5, -0.75, -1.0, 0.0, 0.75, 0.75, -0.5, 0.75, -1.0, 0.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.pushErrorScope("internal");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    buffer000.destroy()
    const array2 = new Float32Array([-0.5, -0.5, -0.5, 0.5, 0.75, -1.0, 0.5, -0.25, 1.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.5, 0.5, -0.25, -0.25, 1.0, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 0.25, 0.25, -1.0, 1.0, 0.5, -0.5, 0.25, 0.75, 1.0, -1.0, -0.75, -0.25, -0.25, 0.25, 0.5, -0.75, 1.0, 0.5, 0.5, -0.5, -0.25, -0.5, -0.75, -0.5, 1.0, -1.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.75, 0.5, -0.75, 0.25, -0.25, -0.25, -0.25, 0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -0.75, 0.0, -0.5, -0.75, 0.5, 1.0, 0.0, -1.0, 0.0, 0.75, 0.0, 0.75, 0.0, -1.0, 1.0, -1.0, 1.0, -0.5, 0.0, 0.25, 1.0, -0.25, 0.25, 0.0, -0.5, -0.25, ]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture000.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query000.destroy()
    buffer001.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
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
        occlusionQuerySet: query000
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: query002
    });
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder0000.executeBundles([])
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.executeBundles([])
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0011.pushDebugGroup("group_marker");
    query002.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    query000.destroy()
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query003.destroy()
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array3 = new Float32Array([0.75, 0.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.25, -0.75, -0.5, -1.0, -1.0, 0.75, -1.0, -1.0, -0.5, -1.0, 0.5, 0.0, 0.75, -1.0, 0.75, -1.0, 1.0, 0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 0.5, 0.0, -1.0, -1.0, -1.0, 0.75, -0.75, 1.0, 0.75, 0.0, -0.5, 0.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.25, 1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 1.0, 0.75, -1.0, -0.5, -0.5, 1.0, -0.5, -0.75, 1.0, 0.75, -1.0, 0.25, 0.75, 0.5, 1.0, -0.25, -1.0, 0.25, 1.0, -0.75, 0.25, 0.5, 0.5, 1.0, 0.25, 0.75, 0.5, 0.75, 0.25, 0.75, 1.0, 0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 1.0, -0.5, 0.0, 0.0, -0.25, -0.5, 0.5, -0.5, 0.0, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("validation");
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder0010.popDebugGroup()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0011.popDebugGroup();
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
    
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    query004.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer003.destroy()
    query001.destroy()
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0011.setStencilReference(1);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array4 = new Float32Array([0.5, 0.75, 0.25, -0.5, 1.0, -0.5, 0.75, -0.5, 0.0, -0.75, 1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.75, 0.0, -1.0, -0.5, -1.0, -0.5, -0.75, -0.25, 1.0, 0.25, 0.0, 1.0, -1.0, -0.75, -1.0, 0.5, 0.25, 1.0, 0.25, -0.5, 0.5, -1.0, -0.25, -0.5, -0.75, 0.5, 1.0, -0.25, 1.0, 0.25, -0.5, 1.0, 0.5, 0.75, 0.5, 0.5, 0.5, 0.25, 1.0, 0.75, 0.75, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.75, -0.25, -0.25, -0.5, 0.25, 1.0, 0.75, -0.5, 0.0, 0.75, 0.5, -0.75, 0.75, -0.5, -0.5, 0.75, -1.0, -0.75, -0.75, -0.25, -0.25, -0.5, 0.75, -0.5, -0.75, -0.5, 0.5, 0.25, ]);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    texture000.destroy();
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture001.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0011.executeBundles([])
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
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
        occlusionQuerySet: query002
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    compute_pass_encoder0000.popDebugGroup()
    
    
    command_encoder000.clearBuffer(buffer004);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.insertDebugMarker("marker");
    buffer100.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer004.destroy()
    query001.destroy()
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array5 = new Float32Array([0.0, 0.75, 0.25, -0.25, 0.75, 0.5, -0.75, 0.25, -0.25, 0.25, 0.25, 0.5, 0.5, 0.0, -0.75, 0.0, -0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.5, 1.0, 0.75, -1.0, 0.5, -0.5, 0.0, -0.75, 0.75, 0.75, -1.0, -0.75, -0.5, -0.25, 1.0, -0.75, 0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 1.0, 1.0, -0.75, -0.25, 0.25, -0.5, 0.75, -0.5, -0.25, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, 1.0, 0.5, -0.5, 0.0, -0.75, -0.75, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, -0.5, -0.25, 0.75, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -0.5, 1.0, 0.5, 0.0, -0.25, 0.25, -0.5, -0.75, 0.25, ]);
    buffer005.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    buffer002.destroy()
    render_pass_encoder0010.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query001.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    query006.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    render_pass_encoder0011.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder0011.setPipeline(render_pipeline000);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query003.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
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

    render_pass_encoder0011.setBindGroup(0, bind_group004);
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.setVertexBuffer(0, buffer003);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query005.destroy()
    
    
    query006.destroy()
    buffer0012.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder101.popDebugGroup();
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query006
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query004.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    texture002.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.popDebugGroup()
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
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
    
    render_pass_encoder0011.setStencilReference(1);
    
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    query002.destroy()
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer0013,
        0
    )
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    query006.destroy()
    render_pass_encoder0011.draw(3);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0010.insertDebugMarker("marker");
    buffer000.destroy()
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_buffer100 = command_encoder100.finish();
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

    render_bundle_encoder000.setBindGroup(0, bind_group006);
    buffer0014.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0020.setPipeline(render_pipeline000);
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    query004.destroy()
    render_pass_encoder0020.setStencilReference(1);
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
    
    
    
    
    
    render_pass_encoder0010.popDebugGroup();
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    buffer0019.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0018.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.resolveQuerySet(
        query006,
        0,
        32,
        buffer002,
        0
    )
    
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query006.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    buffer0016.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.draw(3);
    command_encoder000.copyBufferToBuffer(
        buffer0015,
        0,
        buffer006,
        0,
        400
    );
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    
    buffer003.destroy()
    device10.pushErrorScope("validation");
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
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
        occlusionQuerySet: query001
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture100.destroy();
    device00.pushErrorScope("validation");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder102.insertDebugMarker("mymarker");
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
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder000.setVertexBuffer(0, buffer006);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0021.popDebugGroup();
    
    command_encoder002.copyBufferToBuffer(
        buffer0019,
        0,
        buffer006,
        0,
        400
    );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query006
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    buffer009.destroy()
    render_pass_encoder0001.setVertexBuffer(0, buffer000);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer0017.destroy()
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const array6 = new Float32Array([0.0, 0.5, -1.0, 0.25, -1.0, 1.0, -0.75, -0.75, -0.25, 0.25, 0.25, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, -0.5, -1.0, 1.0, 0.25, 0.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.5, -0.75, -0.25, 0.25, 1.0, -0.75, 0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 0.0, -0.75, -0.5, -0.75, 1.0, 0.25, 0.75, 1.0, 0.0, -1.0, 0.75, 0.25, 1.0, 0.5, 1.0, -1.0, -0.5, -1.0, -0.5, -0.75, 0.25, 1.0, -0.75, -1.0, -0.25, 0.0, 0.25, -1.0, -0.25, 1.0, -0.5, -1.0, 0.0, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -1.0, -0.5, 0.5, 0.5, -0.75, 0.5, -0.25, -0.75, 0.25, -0.75, -0.75, -0.25, 0.5, 0.75, -0.5, 1.0, ]);
    query001.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer0013.destroy()
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.setPipeline(render_pipeline103);
    render_pass_encoder0012.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.setPipeline(render_pipeline104);
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    buffer0010.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    device20.queue.submit([]);
    texture100.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setPipeline(render_pipeline104);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array7 = new Float32Array([-1.0, -0.75, 0.25, 0.5, 0.25, 0.0, -0.5, -1.0, -0.75, -0.25, 1.0, 1.0, -0.5, 0.75, 0.5, 1.0, 0.0, 0.75, -0.5, -0.25, 1.0, 0.25, 0.5, -1.0, -1.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.75, -0.75, 0.5, 1.0, -1.0, -0.75, 0.75, -0.25, 0.25, 0.5, 0.25, 0.25, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, 0.25, -0.5, 1.0, -0.25, 0.75, 0.75, 0.5, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, 0.5, -0.75, -1.0, -0.75, 0.25, -1.0, -0.25, 0.25, 1.0, 0.5, -0.75, -0.5, -1.0, 0.25, 1.0, -0.25, -0.5, -0.5, 0.25, -0.5, -1.0, 0.5, 0.75, -0.75, -1.0, -0.75, -0.75, -0.75, -1.0, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, -0.5, 0.0, -0.5, 0.5, ]);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    texture003.destroy();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group100);
    render_bundle_encoder102.popDebugGroup();
    
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    compute_pass_encoder1030.popDebugGroup()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder0001.insertDebugMarker("marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0012.setPipeline(render_pipeline001);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout004]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.popDebugGroup();
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline103);
    
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder0021.setPipeline(render_pipeline000);
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    buffer101.destroy()
    const array8 = new Float32Array([-1.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.5, -0.25, 0.25, -1.0, -0.25, -0.5, 1.0, 0.5, 1.0, -0.75, -0.25, -0.25, -1.0, -0.5, -0.25, -0.75, 0.0, 0.5, 0.5, 0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 0.75, 0.0, 0.75, -0.5, -0.5, 1.0, 0.75, 0.5, 0.25, 0.5, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.25, 1.0, 0.5, -1.0, 0.0, 0.25, 0.0, -0.75, -0.5, 0.75, -1.0, 0.0, 0.0, -0.5, -0.75, 0.0, -0.25, -0.25, 0.75, 0.5, 1.0, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 1.0, 0.5, -0.25, -0.25, -0.5, 0.0, -0.5, -1.0, -0.75, -0.25, -0.25, 0.25, 0.0, -0.25, -0.25, 0.0, -0.5, 1.0, 0.5, 1.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder1020.setPipeline(render_pipeline101);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder001.copyBufferToBuffer(
        buffer006,
        0,
        buffer0015,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0011.end();
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

    render_pass_encoder0010.setBindGroup(0, bind_group007);
    command_encoder103.popDebugGroup()
    render_pass_encoder0010.setVertexBuffer(0, buffer000);
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0001.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group008);
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0001.popDebugGroup();
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

    render_pass_encoder0020.setBindGroup(0, bind_group009);
    render_pass_encoder1020.setVertexBuffer(0, buffer105);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0020.setVertexBuffer(0, buffer0025);
    compute_pass_encoder0000.end();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    device00.queue.submit([]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder1020.end();
    const command_buffer000 = command_encoder000.finish();
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder0012.setVertexBuffer(0, buffer005);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0012.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1030.end();
    command_encoder002.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer102, ]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0012.end();
    command_encoder101.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0012.drawIndirect(buffer0019, 0);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1012, 0);
    render_pass_encoder0001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer001, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    render_pass_encoder0012.drawIndirect(buffer0019, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer008, 0);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group104);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0012.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder0012.end();
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.end();
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0012.setIndexBuffer(buffer005, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    device00.queue.submit([command_buffer000, ]);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group107);
    render_pass_encoder0012.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([]);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder0012.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0021.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0032, 0);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0012.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0033, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    render_pass_encoder1020.end();
    render_pass_encoder0012.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
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
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0012.end();
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1030.end();
    render_pass_encoder0001.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0012.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder0010.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0000.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0040, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0012.end();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    render_pass_encoder0001.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0001.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0038, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0011.end();
    render_pass_encoder0012.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder0012.popDebugGroup();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder0001.drawIndexed(3);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1011);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    device00.queue.submit([]);
    render_pass_encoder1030.end();
    device30.queue.submit([]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    compute_pass_encoder0010.popDebugGroup()
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1012);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder0012.drawIndirect(buffer0033, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0029, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0012.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1027, 0);
    device30.queue.submit([]);
    render_pass_encoder0012.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0024, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.end();
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder0020.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1030.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1030.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder0012.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0012.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
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
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0012.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0012.end();
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0001.end();
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0010.popDebugGroup();
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0042, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0020, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([]);
    render_pass_encoder0012.end();
    device20.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.end();
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1016);
    render_pass_encoder0020.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0045, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0001.end();
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0058, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0033, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0012.popDebugGroup();
    device30.queue.submit([]);
}