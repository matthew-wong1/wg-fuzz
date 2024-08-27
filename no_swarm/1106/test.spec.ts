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
    const array0 = new Float32Array([0.0, -1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.25, -1.0, 0.5, -0.25, 1.0, 0.25, 1.0, -0.25, 0.5, -1.0, -0.5, 1.0, -0.5, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, -0.75, -0.25, 0.75, 0.0, 1.0, 0.0, -0.75, 0.5, -0.5, 0.5, -0.5, 0.5, -0.25, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, 0.0, 0.25, 0.75, 1.0, 0.75, 0.0, -1.0, 0.0, -0.75, -0.5, -1.0, -0.75, -0.75, -0.75, -0.5, 0.0, -0.25, 0.75, 0.25, -0.25, 0.25, -0.75, -0.75, 0.25, 0.5, -0.25, -1.0, -1.0, -0.75, -1.0, -0.25, 0.25, 0.0, 0.25, 0.5, 1.0, 0.5, 0.75, 0.5, -1.0, 1.0, -0.75, -0.25, -0.25, -1.0, 0.25, -0.25, -1.0, -0.75, 0.25, 0.75, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([0.0, 0.75, 0.5, -1.0, -0.75, 1.0, 0.0, 1.0, -0.25, 0.5, -0.5, -1.0, -0.5, -1.0, 0.5, 0.75, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, 0.25, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, -0.25, -0.25, -0.5, 1.0, -1.0, 0.25, -0.25, 1.0, -0.75, -1.0, -0.25, 0.75, -0.25, -0.25, 1.0, -1.0, -0.5, -1.0, 0.25, -1.0, 0.5, -0.75, -0.75, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, 0.25, 0.75, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, -0.75, -0.25, 0.0, 0.25, -0.5, 0.25, 0.25, 0.5, 0.25, 0.75, 0.0, 0.0, -0.75, -0.5, -0.5, 0.0, 0.25, 0.75, 0.25, 0.5, 0.25, -0.5, 0.25, 0.75, 0.5, -0.25, -1.0, 0.0, 1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    
    const array2 = new Float32Array([0.25, 0.25, -0.5, 0.75, -1.0, 0.0, 0.25, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, 0.5, -1.0, -0.5, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, -0.75, -0.75, 1.0, 0.5, 0.75, 0.25, -0.75, 0.5, -0.75, -0.75, -0.75, 0.25, -0.5, -0.25, -0.25, -0.5, 0.75, -0.5, 0.75, -0.25, 1.0, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.5, 0.75, -1.0, -0.25, -0.25, 1.0, 1.0, -0.5, 0.5, -0.5, 1.0, -1.0, 0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -1.0, 0.25, 0.5, -0.25, 0.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.25, 0.0, -0.5, 0.25, -0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 0.25, -0.75, -0.25, 0.0, 0.5, ]);
    
    
    
    device00.queue.submit([]);
    query000.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder000.clearBuffer(buffer000);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder000.clearBuffer(buffer000);
    device00.pushErrorScope("internal");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.25, 0.5, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, 1.0, 0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.25, 0.75, -0.75, 0.25, -0.5, -0.5, -0.5, 0.25, 1.0, 0.0, -1.0, -0.25, -1.0, 0.25, 0.5, 0.0, -0.25, 0.25, 0.0, -0.5, -0.25, 0.75, -1.0, 0.25, 1.0, -1.0, -0.75, -0.5, 0.75, 0.0, -0.25, -0.5, 0.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, 0.25, -1.0, -0.25, 0.0, 0.0, -0.25, 1.0, 0.75, 0.5, 1.0, 0.5, -0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -0.25, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.25, -1.0, 0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, -0.25, -1.0, -0.25, -0.75, -0.25, 0.0, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder002.clearBuffer(buffer000);
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder000.clearBuffer(buffer000);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: query001
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder0010.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    
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
    buffer001.destroy()
    render_pass_encoder0000.executeBundles([])
    
    
    
    render_pass_encoder0000.executeBundles([])
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    device20.destroy();
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.beginOcclusionQuery(0)
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.beginOcclusionQuery(0)
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const array4 = new Float32Array([-1.0, 0.75, -0.75, 0.75, -0.25, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 0.5, 1.0, 0.5, 1.0, -0.5, -0.75, -1.0, 0.75, 0.5, -1.0, 0.75, 1.0, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 0.5, 1.0, -0.25, 1.0, -1.0, -0.75, -0.5, 0.0, -1.0, 1.0, 0.25, -0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -1.0, -0.25, 0.25, 0.5, 0.0, 0.0, 0.25, 0.0, 0.75, -0.25, 0.5, -0.75, -0.75, 0.5, 1.0, -0.25, 0.25, -0.75, 1.0, 0.75, -0.25, -1.0, -0.25, 0.75, -0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.25, 0.25, 0.0, -0.75, 0.75, -0.75, -1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.75, -0.75, 0.75, 1.0, -0.75, -0.75, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0010.executeBundles([])
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    query002.destroy()
    buffer000.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer003.destroy()
    
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_pass_encoder0010.popDebugGroup();
    const array5 = new Float32Array([0.0, 0.25, -0.75, -1.0, 1.0, -0.5, 0.0, 1.0, -0.25, -0.75, 1.0, 0.75, 0.5, -0.25, -1.0, 1.0, 0.5, -1.0, 0.0, -1.0, 0.5, -1.0, -0.75, 0.5, 1.0, -0.75, -0.25, -1.0, 0.0, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, 1.0, -0.75, -0.5, 0.25, 1.0, -1.0, -1.0, -1.0, -1.0, -0.5, 0.25, 0.0, -0.5, -0.5, 0.25, -1.0, -0.75, -0.25, 0.5, 0.5, 0.0, 0.75, 0.5, 0.75, 1.0, -0.75, -1.0, -1.0, -0.25, -0.75, 0.25, 0.5, -0.75, 1.0, 0.5, -0.75, 0.5, 0.25, 0.25, -0.25, 0.5, -0.75, -0.25, 0.25, -0.75, -1.0, 0.0, -0.25, 0.75, -0.25, 0.5, -0.25, 0.5, 0.25, 0.0, -1.0, 0.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.25, 0.5, 0.75, ]);
    render_pass_encoder0000.executeBundles([])
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture000.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0010.beginOcclusionQuery(0)
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture001.destroy();
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0021.setPipeline(render_pipeline000);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
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
    
    buffer000.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_buffer001 = command_encoder001.finish();
    
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
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0001.pushDebugGroup("group_marker");
    texture002.destroy();
    
    render_pass_encoder0000.executeBundles([])
    query002.destroy()
    render_pass_encoder0020.setStencilReference(1);
    query002.destroy()
    render_pass_encoder0000.endOcclusionQuery()
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.executeBundles([])
    const array6 = new Float32Array([-1.0, -0.25, -0.75, -1.0, 0.5, -0.25, 0.5, -0.25, -0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, -0.75, 0.25, 0.75, 1.0, -0.75, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, 0.75, -1.0, -0.75, 0.0, 0.75, -0.5, 0.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.25, 0.5, -0.25, -1.0, -0.75, 0.25, 1.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 1.0, -0.25, 0.0, 0.75, -0.25, 0.5, -0.5, -0.25, -0.75, -1.0, 0.75, 0.75, -1.0, 0.0, 1.0, -0.25, 1.0, 0.0, 0.75, 0.0, -0.25, 0.25, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -0.5, -0.75, -0.5, 0.5, 1.0, -0.75, -1.0, -0.75, 0.75, 0.0, -0.25, ]);
    render_pass_encoder0010.endOcclusionQuery()
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query002.destroy()
    
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder0000.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query000.destroy()
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline002.getBindGroupLayout(0),
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    buffer005.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0021.insertDebugMarker("marker");
    
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_pass_encoder0020.popDebugGroup();
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    command_encoder002.clearBuffer(buffer0010);
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer006.destroy()
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0000.popDebugGroup();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    {
        await buffer009.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer009.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer009.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0010.popDebugGroup();
    
    
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.pushErrorScope("validation");
    device30.destroy();
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    render_pass_encoder0010.setVertexBuffer(0, buffer001);
    
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
    render_pass_encoder0010.setStencilReference(1);
    buffer004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    texture200.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
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
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.endOcclusionQuery()
    buffer008.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer009.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    render_bundle_encoder000.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    query002.destroy()
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.setIndexBuffer(buffer006, "uint16");
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder000.insertDebugMarker("mymarker");
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.drawIndexed(3);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
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
    render_bundle_encoder001.setPipeline(render_pipeline004);
    device00.queue.submit([command_buffer001, ]);
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    
    buffer0011.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    
    query400.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    compute_pass_encoder0020.popDebugGroup()
    texture400.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    
    buffer0012.destroy()
    const array7 = new Float32Array([-0.25, -0.5, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, -0.5, 0.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.75, 0.75, 0.25, 0.75, 0.25, 0.5, -0.25, -0.5, 1.0, 0.0, 0.75, -0.25, -0.75, 1.0, 0.25, 0.0, 0.25, 0.75, -0.75, -0.25, 1.0, -0.75, 0.25, 0.5, 0.0, -0.75, 0.5, 0.75, 1.0, -1.0, -1.0, -0.5, 0.75, -0.75, -0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 0.75, 0.5, -1.0, -0.25, -0.25, -0.25, 0.25, 0.25, 0.25, -0.5, 1.0, 0.0, -0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 0.0, 0.5, 0.0, -0.75, 1.0, 0.5, -0.25, 0.25, -0.5, -1.0, 0.0, -0.25, -0.5, -0.25, -1.0, 0.25, 0.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.75, 0.75, 0.25, -0.5, 0.5, ]);
    
    
    render_bundle_encoder000.drawIndexed(3);
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    query400.destroy()
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer007.destroy()
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    query300.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0000.setVertexBuffer(0, buffer009);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    render_bundle_encoder000.finish();
    buffer0014.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    
    buffer400.destroy()
    query002.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0021.setBindGroup(0, bind_group005);
    const array8 = new Float32Array([0.5, 0.0, 0.5, 0.0, -0.75, 0.0, 0.25, -0.25, -0.75, -0.25, -0.75, 1.0, 0.25, 0.25, 0.25, 0.0, 0.25, 0.0, -0.25, -0.75, -1.0, 0.0, 0.25, 0.25, 0.0, 0.75, -0.25, 0.25, -0.5, -0.75, -1.0, 0.25, -0.25, -0.75, 0.5, 0.75, 0.25, -1.0, 0.0, -0.5, 0.0, 0.75, -0.25, -0.5, 0.75, 0.75, -0.5, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, 0.75, 0.0, -0.25, -1.0, 0.25, -0.75, -1.0, 0.0, 0.25, -0.5, 0.5, 1.0, 0.75, -0.25, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, 0.0, 0.5, -0.25, -0.25, -1.0, 0.5, -0.25, 1.0, 0.25, -0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -0.25, -0.5, 0.0, 0.0, -1.0, -0.75, -0.25, 0.25, 1.0, -1.0, 0.0, -0.5, ]);
    texture004.destroy();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    render_pass_encoder0021.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    query000.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer0019, 0, array3, 0, array3.length);
    
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer0010, 0, array8, 0, array8.length);
    
    device00.queue.submit([]);
    query000.destroy()
    buffer401.destroy()
    device00.queue.writeBuffer(buffer0017, 0, array4, 0, array4.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    texture000.destroy();
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder4000.setPipeline(render_pipeline400);
    render_pass_encoder0021.setVertexBuffer(0, buffer0012);
    render_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder0021.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
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
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.draw(3);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0024, 0);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
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

    render_pass_encoder0001.setBindGroup(0, bind_group008);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    compute_pass_encoder0020.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer0016);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0029, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0010.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4000.setVertexBuffer(0, buffer402);
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    render_pass_encoder0010.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([]);
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
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.end();
    device40.queue.submit([command_buffer400, ]);
}